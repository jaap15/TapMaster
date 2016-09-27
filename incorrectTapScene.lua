-----------------------------------------------------------------------------------------
--
-- incorrectTapScene.lua
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

-- This is our timer variable
local Timer2Seconds

-- Displaying camera overlay
local cameraOverlay = display.newImage("images/camera.png")

-- tapped()
--      input: none
--      output: none
--
--      This function is associated with the event listener "tap". If the tapImage 
--      object is tapped (this is the red box scene), the incorrectTaps is incremented,
--      we update the scoreboard, and push into the next scene. It also produces the 
--      camera snap sound.
local function tapped()
    audio.play(cameraSound, {loops = 0})
    audio.play(explode, {loops = 0})
    if(is2SecondsUp == false) then
        isTappedBefore = true;
        incorrectTaps = incorrectTaps + 1
        updateScoreBoard()
        checkRoundsComplete("correctTapScene")
    end
end

-- timedOut()
--      input: none
--      output: none
--
--      This function is called two seconds after the box is generated. If the box has
--      not been tapped (this is the red box scene), the correctTaps is incremented,
--      we update the scoreboard, and push into the next scene.
local function timedOut( )
    is2SecondsUp = true;
    if(not isTappedBefore) then
        correctTaps = correctTaps + 1
        updateScoreBoard()
        checkRoundsComplete("correctTapScene")
    end
end

-- generateIncorrectTap()
--      input: none
--      output: none
--
--      This function generates the red box and applies a "tap" event listener to it.
--      It also calls the timedOut() function in 2 seconds. The tapped() and timedOut()
--      events add all functionality to the boxes.      
function generateIncorrectTap()
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
--      This function creates the tapImage and colors it red and adds it to the sceneGroup.
--      This box is not destroyed, rather it is hidden during scene swapping and has its
--      event listener removed when it is hidden.
function scene:create( event )

    sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    -- Changing our camera overlay
    cameraOverlay.width = 300
    cameraOverlay.height = 300

    -- Generating our voltorb image
    tapImage = display.newImage("images/voltorb.png")

    -- Positioning all objects on the scene
    cameraOverlay.x = display.contentCenterX
    cameraOverlay.y = display.contentCenterY
    tapImage.x = display.contentCenterX
    tapImage.y = display.contentCenterY

    -- Adding all objects to the scene group
    sceneGroup:insert( tapImage)
    sceneGroup:insert(cameraOverlay)
end

-- show()
--      input: none
--      output: none
--
--      This function is called when we swap to this scene. At this point the tapImage has been
--      created and added to the sceneGroup. Everytime we swap to this scene after creation, we
--      generate our Delay, make sure our tapImage is hidden, and all local variables are reset.
--      After delayTime seconds, we generate our red box. Don't need a reactionTimer here, since
--      the player isn't supposed to click anyway.
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
        generateDelay()

        -- Resetting local variables
        tapImage.isVisible = false;
        isTappedBefore = false;
        is2SecondsUp = false;
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        timer.performWithDelay( delayTime, generateIncorrectTap, 1)

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

        -- When we leave the scene, we no longer need an event listener for the tapImage,
        -- we also don't want the timer to timeOut if the scene is left prior to 2 seconds.
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