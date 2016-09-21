-----------------------------------------------------------------------------------------
--
-- settings.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local composer = require( "composer" )

local scene = composer.newScene()

local widget = require("widget")

local secondsLeft = 4
delayTime = 0
correctTaps = 0
incorrectTaps = 0


-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- ----------------------------------------------------------------------------------
function updateScoreBoard()
    scoreText.text = string.format("CorrectTaps: %01d  IncorrectTaps: %01d", correctTaps, incorrectTaps)
end

local function readyButtonEvent(event)
    if ("ended" == event.phase) then
        sceneGroup:remove( readyButton )
        timer.performWithDelay( 1000, updateTime, 5 )
    end
end

function startGame()
    sceneToGo = math.random( 1, 2)
    updateScoreBoard()
    print("Scene to go to is : " .. sceneToGo)

    if(sceneToGo == 1) then
        composer.gotoScene("correctTapScene")
    else
        composer.gotoScene("incorrectTapScene")
    end

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
        timerText.text = timeDisplay
    else
        sceneGroup:remove(timerText)
        startGame()
    end
end

function generateDelay()
    delayTime = math.random( minValue, maxValue)
    print("The delay generated: " .. delayTime)
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

    scoreText = display.newText(" ", 0, 0, native.systemFont)
    scoreText:setTextColor(235, 235, 235)

    -- Positioning the timer object
    scoreText.x = display.contentCenterX   
    scoreText.y = display.contentCenterY-(display.contentCenterY*1.10)

end

-- show()
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
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
        composer.removeScene("game")
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