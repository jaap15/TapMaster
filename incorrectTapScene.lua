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
local tapImage;
local isTappedBefore = false;
local is2SecondsUp = false;

-- tapped()
--      input: none
--      output: none
--
--      ...
local function tapped()
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
--      ...
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
--      ...
function generateIncorrectTap()
    tapImage:addEventListener( "tap", tapped)
    tapImage.isVisible = true;
    timer.performWithDelay( 2000, timedOut, 1)
end

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
--      input: none
--      output: none
--
--      ...
function scene:create( event )

    sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    tapImage = display.newRect( display.contentCenterX, display.contentCenterY, 200, 200)
    tapImage:setFillColor( 1, 0, 0 )
    sceneGroup:insert( tapImage)
end

-- show()
--      input: none
--      output: none
--
--      ...
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
        generateDelay()
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
--      ...
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)

    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
        -- composer.removeScene("incorrectTapScene")
        tapImage:removeEventListener( "tap", tapped)
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