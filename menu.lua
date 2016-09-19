-----------------------------------------------------------------------------------------
--
-- menu.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local composer = require( "composer" )

local scene = composer.newScene()

local widget = require("widget")

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
local function startButtonEvent(event)
	if ("ended" == event.phase) then
		composer.gotoScene("game")
	end
end

local function settingsButtonEvent(event)
	if ("ended" == event.phase) then
		composer.gotoScene("settings")
	end
end

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    menutext = display.newText("Main Menu", display.contentCenterX, display.contentCenterY-(display.contentCenterY*0.75))
    authors = display.newText("by Daniel Burris and Jairo Arreola", display.contentCenterX, display.contentCenterY+(display.contentCenterY/1.2))
    startButton = widget.newButton({    
            id = "startButton",
            label = "Start",    
            width = 100,
            height = 20,
            fontSize = 10,
            defaultFile = "images/button.png",
            onEvent = startButtonEvent 
        } )   

    settingsButton = widget.newButton({    
            id = "settingsButton",
            label = "Settings",    
            width = 100,
            height = 20,
            fontSize = 10,
            defaultFile = "images/button.png",
            onEvent = settingsButtonEvent 
        } )   

    print(minValue)
    print(maxValue)

    authors.x = display.contentCenterX
    authors.y = display.contentCenterY+(display.contentCenterY/1.2)
    startButton.x = display.contentCenterX-70.0
    startButton.y = display.contentCenterY+(display.contentCenterY/1.5)
    settingsButton.x = display.contentCenterX+70.0
    settingsButton.y = display.contentCenterY+(display.contentCenterY/1.5)

    sceneGroup:insert( menutext)
    sceneGroup:insert( authors )
    sceneGroup:insert( startButton )
    sceneGroup:insert( settingsButton )
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