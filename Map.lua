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

flag = "Map"

local function gotoSceneTitlePage()

  composer.gotoScene("TitlePage", {time=800, effect="slideRight"})

end

local function gotoSceneGameOne()

   composer.gotoScene("GameOne", {time=800, effect="zoomOutIn"})
 
end

local function gotoSceneGameTwo()

   composer.gotoScene("GameTwo", {time=800, effect="zoomOutIn"})
 
end

local function gotoSceneSettings()

   composer.gotoScene("Settings")
   flag = "Map"
 
end

-- "scene:create()"
function scene:create( event )

   local sceneGroup = self.view

   background = display.newImage("background/campaignBackground2.png", display.contentCenterX, display.contentCenterY)
   sceneGroup:insert(background)

   title = display.newText("Map", display.contentCenterX, display.contentCenterY, "SFAutomaton", 40)
   title:setFillColor(0,1,0)
   sceneGroup:insert(title)

   buttonTitle = display.newRoundedRect( display.contentCenterX, display.contentHeight*.8, display.contentHeight*.2, display.contentCenterY*.5, 20)
   buttonTitle:setFillColor(1,0,0)
   sceneGroup:insert(buttonTitle)

   buttonGameOne = display.newRoundedRect(display.contentCenterX - 200, display.contentHeight*.2, display.contentHeight*.2, display.contentCenterY*.5, 20)
   buttonGameOne:setFillColor(0,1,0)
   sceneGroup:insert(buttonGameOne)

   buttonGameTwo = display.newRoundedRect(display.contentCenterX + 200, display.contentHeight*.2, display.contentHeight*.2, display.contentCenterY*.5, 20)
   buttonGameTwo:setFillColor(0,1,0)
   sceneGroup:insert(buttonGameTwo)

   buttonSettings = display.newImage("buttons/circle.png", display.contentWidth*.925, display.contentHeight*.1)
   buttonSettings.xScale, buttonSettings.yScale = 7, 7
   sceneGroup:insert(buttonSettings)

   buttonTitle:addEventListener("tap", gotoSceneTitlePage)
   buttonGameOne:addEventListener("tap", gotoSceneGameOne)
   buttonGameTwo:addEventListener("tap", gotoSceneGameTwo)
   buttonSettings:addEventListener("tap", gotoSceneSettings)

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
