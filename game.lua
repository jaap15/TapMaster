-----------------------------------------------------------------------------------------
--
-- game.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-----------------------------------------------------------------------------------------

local composer = require("composer")
local scene = composer.newScene()
local widget = require("widget")

-- Local variable used to start the countdown timer, its set to countdowntimerValue + 1
-- so that the countdown timer is between 3 < x < 3.99 instead of 2 < x < 2.99
local secondsLeft = 4

-- Global Variables
delayTime = 0
correctTaps = 0
incorrectTaps = 0
reactionTimes = {}
avgReactionTime = 0;

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- ----------------------------------------------------------------------------------

-- exitToMenu()
--      input: none
--      output: none
--
--      This function just switches us back to the menu scene
function exitToMenu(event)
    composer.gotoScene("menu")
end

-- checkRoundsComplete()
--      input: nameOfScene
--      output: none
--
--      ...
function checkRoundsComplete(nameOfScene)
    if(correctTaps + incorrectTaps == 10) then
        native.showAlert("Congratulations!", string.format("CorrectTaps %01d \n IncorrectTaps %01d \n AvgResponseTime: %01d", correctTaps, incorrectTaps, avgReactionTime), {"Exit to Menu"}, exitToMenu)
        correctTaps = 0
        incorrectTaps = 0
        scoreText.text = " "
    else
        composer.gotoScene(nameOfScene)
    end
end

-- updateScoreBoard()
--      input: none
--      output: none
--
--      ...
function updateScoreBoard()
    scoreText.text = string.format("CorrectTaps: %01d  IncorrectTaps: %01d\nAvgCorrectTapResponse: %01d Ms", correctTaps, incorrectTaps, avgReactionTime)
end

-- readyButtonEvent()
--      input: none
--      output: none
--
--      This function destroys the "I'm Ready" button and begins the countdown timer
--      which lauches us into the game
local function readyButtonEvent(event)
    if ("ended" == event.phase) then
        sceneGroup:remove( readyButton )
        timer.performWithDelay( 1000, updateTime, 5 )
    end
end

-- startGame()
--      input: none
--      output: none
--
--      ...
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

-- returnButtonEvent()
--      input: none
--      output: none
--
--      This function just switches from the menu scene to the game scene
local function returnButtonEvent(event)
    if ("ended" == event.phase) then
        composer.gotoScene("game")
    end
end


-- updateTime()
--      input: none
--      output: none
--
--      ...
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

-- generateDelay()
--      input: none
--      output: none
--
--      ...
function generateDelay()
    delayTime = math.random( minValue, maxValue)
    print("The delay generated: " .. delayTime)
end

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
--      input: none
--      output: none
--
--      This function creates all the objects that will be used in the scene and adds
--      them to the scene group.
function scene:create( event )

    sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    -- This is the countdown timer text seen after pressing the ready button at the beginning
    timerText = display.newText(" ", 0, 0, native.systemFont)
    timerText:setTextColor(235, 235, 235)

    -- This is the text that represents the score to the player
    scoreText = display.newText(" ", 0, 0, native.systemFont)
    scoreText:setTextColor(235, 235, 235)

    -- Creating a button widget, this begins the countdown timer that launches the user
    -- into the game
    readyButton = widget.newButton({    
            id = "readyButton",
            label = "I'm Ready",    
            width = 200,
            height = 40,
            fontSize = 20,
            defaultFile = "images/button.png",
            onEvent = readyButtonEvent 
        } )   

    -- Positioning all objects on the scene
    timerText.x = display.contentCenterX     
    timerText.y = display.contentCenterY
    scoreText.x = display.contentCenterX   
    scoreText.y = display.contentCenterY-(display.contentCenterY*1.10)
    readyButton.x = display.contentCenterX
    readyButton.y = display.contentCenterY

    -- Adding all objects to the scene group
    sceneGroup:insert( timerText )
    sceneGroup:insert( readyButton )
end

-- show()
--      input: none
--      output: none
--
--      This function does nothing for us, but is still part of Corona SDK scene creation requirements
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
--      input: none
--      output: none
--
--      This function does nothing for us, but is still part of Corona SDK scene creation requirements
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