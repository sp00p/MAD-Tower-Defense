local composer = require( "composer" )
local scene = composer.newScene()

---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------

-- local forward references should go here

---------------------------------------------------------------------------------
display.setStatusBar(display.HiddenStatusBar)

local bg
local title
local button

local function gotoScene()
   if flag == "sceneTitle" then
      composer.gotoScene("TitlePage")
   elseif flag == "Map" then
      composer.gotoScene("Map")
   elseif flag == "level1" then
      composer.gotoScene("level1")
   elseif flag == "level2" then
      composer.gotoScene("level2")
   elseif flag == "level3" then
      composer.gotoScene("level3")
   end
end

local function gotoSceneTitle()
   composer.gotoScene("TitlePage")
end

-- "scene:create
function scene:create( event )

   local sceneGroup = self.view

   bg = display.newRect(display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight)
   bg:setFillColor(1,0,0)
   sceneGroup:insert(bg)

   title = display.newText("Settings", display.contentCenterX, display.contentCenterY, "SFAutomaton", 40)
   title:setFillColor(0,1,0)
   sceneGroup:insert(title)

   button = display.newRoundedRect( display.contentCenterX, display.contentHeight*.8, display.contentHeight*.2, display.contentCenterY*.5, 20)
   button:setFillColor(0,1,0)
   sceneGroup:insert(button)

   buttonTitle = display.newRoundedRect( display.contentCenterX - 250, display.contentHeight*.8, display.contentHeight*.2, display.contentCenterY*.5, 20)
   button:setFillColor(0,1,0)
   sceneGroup:insert(buttonTitle)

   button:addEventListener("tap", gotoScene)
   buttonTitle:addEventListener("tap", gotoSceneTitle)

   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.
end

-- "scene:show()"
function scene:show( event )

   local sceneGroup = self.view
   local phase = event.phase

   if ( phase == "will" ) then
      -- Called when the scene is still off screen (but is about to come on screen).
   elseif ( phase == "did" ) then
      -- Called when the scene is now on screen.
      -- Insert code here to make the scene come alive.
      -- Example: start timers, begin animation, play audio, etc.
   end
end

-- "scene:hide()"
function scene:hide( event )

   local sceneGroup = self.view
   local phase = event.phase

   if ( phase == "will" ) then
      -- Called when the scene is on screen (but is about to go off screen).
      -- Insert code here to "pause" the scene.
      -- Example: stop timers, stop animation, stop audio, etc.
   elseif ( phase == "did" ) then
      -- Called immediately after scene goes off screen.
   end
end

-- "scene:destroy()"
function scene:destroy( event )

   local sceneGroup = self.view

   -- Called prior to the removal of scene's view ("sceneGroup").
   -- Insert code here to clean up the scene.
   -- Example: remove display objects, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

---------------------------------------------------------------------------------

return scene
