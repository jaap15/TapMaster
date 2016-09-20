-----------------------------------------------------------------------------------------
--
-- settings.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local composer = require( "composer" )

local scene = composer.newScene()

local widget = require("widget")

local secondsLeft = 0
local delayTime

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- ----------------------------------------------------------------------------------
local function readyButtonEvent(event)
    if ("ended" == event.phase) then
        secondsLeft = 4   
        sceneGroup:remove( readyButton )
    end
end

function startGame()
    print("TEST!")
end

local function returnButtonEvent(event)
    if ("ended" == event.phase) then
        composer.gotoScene("game")
    end
end

function updateTime()
    if (secondsLeft > 0) then
        secondsLeft = secondsLeft - 1
        timeDisplay = string.format("%01d", secondsLeft)
    else
        secondsLeft = 0
        --sceneGroup:remove(timerText)
    end
    timerText.text = timeDisplay
end

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    timerText = display.newText(" ", 0, 0, native.systemFont)
    timerText:setTextColor(235, 235, 235)

    -- Positioning the timer object
    timerText.x = display.contentCenterX     
    timerText.y = display.contentCenterY
    sceneGroup:insert( timerText )


    readyButton = widget.newButton({    
            id = "readyButton",
            label = "I'm Ready",    
            width = 200,
            height = 40,
            fontSize = 20,
            defaultFile = "images/button.png",
            onEvent = readyButtonEvent 
        } )   


    readyButton.x = display.contentCenterX
    readyButton.y = display.contentCenterY

    sceneGroup:insert( readyButton )
end

-- show()
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        countDownTimer = timer.performWithDelay( 1000, updateTime, secondsLeft )
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