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
-- delayTime will be used as a random integer between minValue and maxValue
delayTime = 0

-- Tracks number of rounds, displayed on top of scene
rounds = 1;

-- Tracks number of correct taps, displayed on top of scene
correctTaps = 0

-- Tracks number of incorrect taps, displayed on top of scene
incorrectTaps = 0

-- Tracks reaction time when we're in the "blue" box scene
reactionTimes = {}

-- Tallies all reactionTimes together and averages them, displayed on top of scene
avgReactionTime = 0;

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- ----------------------------------------------------------------------------------

-- exitToMenu()
--      input: none
--      output: none
--
--      This function just switches us back to the menu scene, associated with native.alert
function exitToMenu(event)
    composer.gotoScene("menu")
end

-- checkRoundsComplete()
--      input: nameOfScene
--      output: none
--
--      This global function checks to see how many rounds have been completed. If we have completed
--      10 rounds, we show the player his results and reset the global variables. If not, we move
--      onto the next scene (nameOfScene).
function checkRoundsComplete(nameOfScene)
    if(rounds == 11) then
        native.showAlert("Congratulations!", string.format("CorrectTaps %01d \n IncorrectTaps %01d \n AvgResponseTime: %01d Ms", correctTaps, incorrectTaps, avgReactionTime), {"Exit to Menu"}, exitToMenu)
        correctTaps = 0
        incorrectTaps = 0
        rounds = 0
        scoreText.text = " "
    else
        composer.gotoScene(nameOfScene)
    end
end

-- updateScoreBoard()
--      input: none
--      output: none
--
--      This global function updats the score board shown at the top of the game scene. It is 
--      updated with simple string.format functionality.
function updateScoreBoard()
    scoreText.text = string.format("CorrectTaps: %01d  IncorrectTaps: %01d\nAvgCorrectTapResponse: %01d Ms\nRound %01d", correctTaps, incorrectTaps, avgReactionTime, rounds)
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
--      This function displays the score board, randomly picks the first scene we go to and
--      pushes us to the first scene. 
function startGame()
    sceneToGo = math.random( 1, 2)
    updateScoreBoard()

    if(sceneToGo == 1) then
        composer.gotoScene("correctTapScene")
    else
        composer.gotoScene("incorrectTapScene")
    end

end

-- updateTime()
--      input: none
--      output: none
--
--      This function is our 3 second countdown timer. It is called every second and updates
--      the text in the middle of the scene when secondsLeft is above 0. When there is no time left
--      we start the game by calling startGame().
function updateTime()

    -- If countdown timer is still running decrement countdown timer and display it
    -- else remove the timer and startGame()
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
--      This global function generates a random delay between global variables minValue and maxValue
--      It is called everytime we begin generating the next box.
function generateDelay()
    delayTime = math.random( minValue, maxValue)
end

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
--      input: none
--      output: none
--
--      This function creates all the objects that will be used in the scene and adds
--      them to the scene group. It also loads all the sound files that we will be using.
function scene:create( event )

    sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    -- This is the countdown timer text seen after pressing the ready button at the beginning
    timerText = display.newText(" ", 0, 0, native.systemFont)
    timerText:setTextColor(235, 235, 235)

    -- Loading Camera sound audio
    cameraSound = audio.loadStream( "sounds/camera.mp3" )

    -- Loading explode sound audio
    explode = audio.loadStream( "sounds/explode.mp3")

    -- This is the text that represents the score to the player
    scoreText = display.newText(" ", 0, 0, native.systemFont)
    scoreText:setTextColor(235, 235, 235)

    -- Game Background
    local menuBG = display.newImage("images/menuBG.jpg")
    menuBG.width = display.contentWidth
    menuBG.height = display.pixelWidth    
    menuBG:setFillColor(1,1,1,0.5) -- adding transparency

    -- Positioning menuBG object on the screen
    menuBG.x = display.contentCenterX
    menuBG.y = display.contentCenterY 

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
    scoreText.y = display.contentCenterY-(display.contentCenterY*0.99)
    readyButton.x = display.contentCenterX
    readyButton.y = display.contentCenterY

    -- Adding all objects to the scene group
    sceneGroup:insert( menuBG )
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