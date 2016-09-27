-----------------------------------------------------------------------------------------
--
-- correctTapScene.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-----------------------------------------------------------------------------------------

local composer = require("composer")
local scene = composer.newScene()
local widget = require("widget")

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- ----------------------------------------------------------------------------------

-- This is the box generated
local tapImage

-- This variable is used to let timeOut() function know if the image has been tapped
local isTappedBefore = false

-- This variable is used to let tapped() function know if the image has timed out
local is2SecondsUp = false

-- This is used to determine the reactionTime
local reactionTimer

-- This variable is incremented every millisecond
local Time = 0

-- This is our timer variable
local Timer2Seconds

-- This is used to determine if we're using a "blue" box or "red" box for the next scene
local nextScene

-- Displaying camera overlay
local cameraOverlay = display.newImage("images/camera.png")

-- calcReactionTime()
--      input: none
--      output: none
--
--      This function calculates the players reaction time. Every blue box scene,
--      the reactionTime is recorded and passed into reactionTimes. Now we take those 
--      reaction times and find the average to be displayed. 
local function calcReactionTime()
    avgReactionTime = 0;
    for key,times in pairs(reactionTimes) do
        avgReactionTime = avgReactionTime + times;
    end
    avgReactionTime = avgReactionTime/correctTaps;
end

-- tickInMs()
--      input: none
--      output: none
--
--      This function is called every millisecond and updates our time variable by
--      1 millisecond.
local function tickInMs()
    Time = Time + 1;
end

-- tapped()
--      input: none
--      output: none
--
--      This function is associated with the event listener "tap". If the tapImage 
--      object is tapped (this is the blue box scene), the correctTaps is incremented,
--      we update the scoreboard, and push into the next scene. We also calculate the
--      reactionTimer from the player. It also produces the camera snap sound.
local function tapped()
    audio.play(cameraSound, {loops = 0})
    if(is2SecondsUp == false) then
        timer.pause( reactionTimer )
        isTappedBefore = true;
        correctTaps = correctTaps + 1
        reactionTimes[correctTaps] = Time
        updateScoreBoard()
        calcReactionTime()
        checkRoundsComplete(nextScene)
    end
end

-- timedOut()
--      input: none
--      output: none
--
--      This function is called two seconds after the box is generated. If the box has
--      not been tapped (this is the blue box scene), the incorrectTaps is incremented,
--      we update the scoreboard, and push into the next scene.
local function timedOut( )
    is2SecondsUp = true;
    if(isTappedBefore == false) then
        incorrectTaps = incorrectTaps + 1
        updateScoreBoard()
        checkRoundsComplete(nextScene)
    end
end

-- generateCorrectTap()
--      input: none
--      output: none
--
--      This function generates the blue box and applies a "tap" event listener to it.
--      It also calls the timedOut() function in 2 seconds. The tapped() and timedOut()
--      events add all functionality to the boxes. It also resumes the reactionTimer 
--      because the blue box is now "tap"-able     
local function generateCorrectTap()
    Time = 0;
    timer.resume( reactionTimer )
    tapImage:addEventListener( "tap", tapped)
    tapImage.isVisible = true;
    cameraOverlay:toFront()
    Timer2Seconds = timer.performWithDelay( 2000, timedOut, 1)
end

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
--      input: none
--      output: none
--
--      This function creates the tapImage and colors it blue and adds it to the sceneGroup.
--      This box is not destroyed, rather it is hidden during scene swapping and has its
--      event listener removed when it is hidden. Reaction timer is also defined here.
function scene:create( event )

    sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    -- Changing our camera overlay
    cameraOverlay.width = 300
    cameraOverlay.height = 300

    -- Creating a table of pokemon for display
    allPokemon = {}
    for i = 1, 12 do -- Only had time to implement (download) 12 250x250 pokemon images
        allPokemon[i] = i
    end

    -- Displaying inital pokemon to be captured, he isn't actually visible, its just a placeholder
    tapImage = display.newImage("images/pokemon/1.png")

    -- Positioning all objects on the scene
    cameraOverlay.x = display.contentCenterX
    cameraOverlay.y = display.contentCenterY
    tapImage.x = display.contentCenterX
    tapImage.y = display.contentCenterY

    -- Adding all objects to the scene group
    sceneGroup:insert( tapImage )
    sceneGroup:insert(cameraOverlay)

    -- reactionTimer is defined, every millisecond it calls tickinMs(). The -1 parameter 
    -- makes it loop forever. 
    reactionTimer = timer.performWithDelay( 1, tickInMs, -1)

end

-- show()
--      input: none
--      output: none
--
--      This function is called when we swap to this scene. We have to recreate the tapImage because
--      we have to display a new random pokemon. Everytime we swap to this scene after creation, we
--      generate our Delay, make sure our tapImage is hidden, and all local variables are reset.
--      After delayTime seconds, we generate our "blue" box. We also pause our reactionTimer because
--      the blue box is not visible yet. This also calculates what the next scene will be.
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
        generateDelay()

        -- Getting rid of the last tapImage
        tapImage.isVisible = false;

        -- Randomly selecting the next pokemon we'll find; could be the same one, could be any other
        selectedPokemon = math.random(1, #allPokemon)

        -- Displaying the new pokemon image and positioning it
        tapImage = display.newImage("images/pokemon/" .. selectedPokemon .. ".png")
        tapImage.x = display.contentCenterX
        tapImage.y = display.contentCenterY

        -- Re-inserting it into the scene group since we declared it as newImage
        sceneGroup:insert( tapImage )

        -- There is a 20% change to see a voltorb (red box) scene, this code is here because having
        -- a not click box every other turn is boring.
        nextRound = math.random(1,5)
        if (nextRound == 3) then
            nextScene = "incorrectTapScene"
        else
            nextScene = "correctTapScene"
        end

        -- Resetting local variables
        tapImage.isVisible = false;
        isTappedBefore = false;
        is2SecondsUp = false;

        -- Pausing timer since we haven't shown the box yet
        timer.pause( reactionTimer );
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        timer.performWithDelay( delayTime, generateCorrectTap, 1)

    end
end


-- hide()
--      input: none
--      output: none
--
--      This function removes all active event listeners and timers to ensure that none of 
--      these events trigger if the scene is left before they can trigger.
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)

    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
        -- composer.removeScene("correctTapScene")
        tapImage:removeEventListener( "tap", tapped)
        timer.cancel( Timer2Seconds )
    end
end


-- destroy()
--      input: none
--      output: none
--
--      This function does nothing for us, but is still part of Corona SDK scene creation requirements
function scene:destroy( event )

    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene