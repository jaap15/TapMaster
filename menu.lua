-----------------------------------------------------------------------------------------
--
-- menu.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-----------------------------------------------------------------------------------------

local composer = require("composer")

-- Scene Creation / Manipulation
local scene = composer.newScene()

-- Widget Creation / Manipulation
-- Used for buttons, sliders, radio buttons
local widget = require("widget")

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

-- startButtonEvent()
--      input: none
--      output: none
--      
--      This function just switches from the menu scene to the game scene
local function startButtonEvent(event)
	if ("ended" == event.phase) then
		composer.gotoScene("game")
	end
end

-- settingsButtonEvent()
--      input: none
--      output: none
--      
--      This function just switches from the menu scene to the settings scene
local function settingsButtonEvent(event)
	if ("ended" == event.phase) then
		composer.gotoScene("settings")
	end
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

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    -- Game Title / Image
    local menuImage = display.newImage("images/menu.jpg")
    menuImage.width = 200
    menuImage.height = 50

    -- Text to display developers of the game
    authors = display.newText("by Daniel Burris and Jairo Arreola", display.contentCenterX, display.contentCenterY+(display.contentCenterY/1.2))

    -- Creating the start button, sends us from the menu scene to the game scene
    local startButton = widget.newButton({    
            id = "startButton",
            label = "Start",    
            width = 100,
            height = 20,
            fontSize = 10,
            defaultFile = "images/button.png",
            onEvent = startButtonEvent 
        } )   

    -- Creating the settings button, sends us from the menu scene to the settings scene
    local settingsButton = widget.newButton({    
            id = "settingsButton",
            label = "Settings",    
            width = 100,
            height = 20,
            fontSize = 10,
            defaultFile = "images/button.png",
            onEvent = settingsButtonEvent 
        } )   

    -- Positioning all objects on the scene
    menuImage.x = display.contentCenterX
    menuImage.y = display.contentCenterY-(display.contentCenterY*0.75)
    authors.x = display.contentCenterX
    authors.y = display.contentCenterY+(display.contentCenterY/1.2)
    startButton.x = display.contentCenterX-70.0
    startButton.y = display.contentCenterY+(display.contentCenterY/1.5)
    settingsButton.x = display.contentCenterX+70.0
    settingsButton.y = display.contentCenterY+(display.contentCenterY/1.5)

    -- Adding all objects to the scene group, this will bind these object to the scene
    -- and they will be removed / replaced when switching to and from scenes
    sceneGroup:insert( menuImage )
    sceneGroup:insert( authors )
    sceneGroup:insert( startButton )
    sceneGroup:insert( settingsButton )
end


-- show()
--      input: none
--      output: none
--
--      This function destroys the game scenes when its swapped to
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
        composer.removeScene("game")
        composer.removeScene("correctTapScene")
        composer.removeScene("incorrectTapScene")

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