-----------------------------------------------------------------------------------------
--
-- help.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-----------------------------------------------------------------------------------------

local composer = require("composer")
local scene = composer.newScene()
local widget = require("widget")

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

-- returnButtonEvent()
--      input: none
--      output: none
--      
--      This function just switches from the help scene to the menu scene
local function returnButtonEvent(event)
    if ("ended" == event.phase) then
        composer.gotoScene("menu")
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

    -- Displaying game instructions
    local instructionText1 = display.newText("Hello! The rules of the game are simple!", display.contentCenterX, display.contentCenterY-150)
    local instructionText2 = display.newText("The object  is to take as many pictures ", display.contentCenterX, display.contentCenterY-135)
    local instructionText3 = display.newText("of pokemon as possible, except electrode!", display.contentCenterX, display.contentCenterY-120)
    local instructionText4 = display.newText("he is very susceptible to flash      ", display.contentCenterX, display.contentCenterY-105)
    local instructionText5 = display.newText("photography! ", display.contentCenterX, display.contentCenterY-90)
    
    -- Displaying voltorb image
    local voltorb = display.newImage("images/electrode2.png")
    voltorb.width = 150
    voltorb.height = 150

    -- Display X image over the voltorb
    local xImage = display.newImage("images/x.png")
    xImage.width = 150
    xImage.height = 150

    -- Creating a button widget, this button returns us to the menu
    local returnButton = widget.newButton({    
        id = "returnButton",
        label = "Return",    
        width = 100,
        height = 20,
        fontSize = 10,
        defaultFile = "images/button.png",
        onEvent = returnButtonEvent 
    } )

    -- Positioning all objects on the scene
    returnButton.x = display.contentCenterX
    returnButton.y = display.contentCenterY+(display.contentCenterY/1.5)
    voltorb.x = display.contentCenterX
    voltorb.y = display.contentCenterY+(display.contentCenterY/5.0)
    xImage.x = display.contentCenterX
    xImage.y = display.contentCenterY+(display.contentCenterY/5.0)

    -- Adding all objects to the scene group
    sceneGroup:insert(instructionText1)
    sceneGroup:insert(instructionText2)
    sceneGroup:insert(instructionText3)
    sceneGroup:insert(instructionText4)
    sceneGroup:insert(instructionText5)    
    sceneGroup:insert(voltorb)
    sceneGroup:insert(xImage)
    sceneGroup:insert(returnButton)
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