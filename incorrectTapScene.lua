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
local function exitToMenu(event)
    composer.gotoScene("menu")
end

local function tapped()
    incorrectTaps = incorrectTaps + 1
    updateScoreBoard()
    if(correctTaps + incorrectTaps == 10) then
        correctTaps = 0
        incorrectTaps = 0
        scoreText.text = " "
        native.showAlert("Alert!", "Congratulations", {"Exit to Menu"}, exitToMenu)
    else
        composer.gotoScene("correctTapScene")
    end
end

function generateIncorrectTap()
    local tapImage = display.newRect( display.contentCenterX, display.contentCenterY, 200, 200)
    tapImage:setFillColor( 1, 0, 0 )
    tapImage:addEventListener( "tap", tapped)
    sceneGroup:insert( tapImage)

end

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    generateDelay()
end

-- show()
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        timer.performWithDelay( delayTime, generateIncorrectTap, 1)

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
        composer.removeScene("incorrectTapScene")
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