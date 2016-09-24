-----------------------------------------------------------------------------------------
--
-- settings.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local composer = require( "composer" )

local scene = composer.newScene()

local widget = require("widget")

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- ----------------------------------------------------------------------------------
local tapImage;
local isTappedBefore = false;
local is2SecondsUp = false;
local reactionTimer;
local Time = 0;

local function calcReactionTime()
    avgReactionTime = 0;
    for key,times in pairs(reactionTimes) do
        avgReactionTime = avgReactionTime + times;
    end
    avgReactionTime = avgReactionTime/correctTaps;
end

local function tickInMs()
    Time = Time + 1;
end

local function tapped()
    if(is2SecondsUp == false) then
        timer.pause( reactionTimer )
        isTappedBefore = true;
        correctTaps = correctTaps + 1
        reactionTimes[correctTaps] = Time
        updateScoreBoard()
        calcReactionTime()
        checkRoundsComplete("incorrectTapScene")
    end
end

local function timedOut( )
    is2SecondsUp = true;
    if(isTappedBefore == false) then
        incorrectTaps = incorrectTaps + 1
        updateScoreBoard()
        checkRoundsComplete("incorrectTapScene")
    end
end

local function generateCorrectTap()
    Time = 0;
    timer.resume( reactionTimer )
    tapImage:addEventListener( "tap", tapped)
    tapImage.isVisible = true;
    timer.performWithDelay( 2000, timedOut, 1)
end

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    tapImage = display.newRect( display.contentCenterX, display.contentCenterY, 200, 200)
    tapImage:setFillColor( 0, 0, 1 )
    sceneGroup:insert( tapImage)
    reactionTimer = timer.performWithDelay( 1, tickInMs, -1)

end

-- show()
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
        generateDelay()
        tapImage.isVisible = false;
        isTappedBefore = false;
        is2SecondsUp = false;
        timer.pause( reactionTimer );
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        timer.performWithDelay( delayTime, generateCorrectTap, 1)

    end
end


-- hide()
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)

    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
        -- composer.removeScene("correctTapScene")
        tapImage:removeEventListener( "tap", tapped)
    end
end


-- destroy()
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