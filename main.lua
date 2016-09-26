-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Authors: Daniel Burris and Jairo Arreola
-- The project is created using scene switching with the composer object. The composer
-- object allows for the creation and switching between of scenes. Each part of the 
-- project is created using a scene (Main Menu, Game View, Settings View). Each scene is 
-- defined with 4 functions: create(), show(), hide(), destory(). When these functions are 
-- called is defined in each scene. The create function is used to draw the interface in
-- most scenes. The show scene is used when we need code that will loop while the scene is 
-- open. The hide and destroy functions are mostly unused. The game is built around scene
-- swapping. Based on a random generator, boxes associated with each scene will be
-- presented to the user and based on his actions the scenes will be swapped. 
-----------------------------------------------------------------------------------------

-- Composer object is used for the creation and manipulation of scenes
local composer = require("composer")

-- Global Variables, used in all scenes. Interval of box spawns.
minValue = 500
maxValue = 5000

-- Default code, hiding the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Only thing main.lua does is push us into the menu scene, all other functions are 
-- carried out in their respective scenes
composer.gotoScene("menu")