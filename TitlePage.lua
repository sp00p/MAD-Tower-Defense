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

flag = "sceneTitle"

local function gotoSceneMap()

  composer.gotoScene("Map", {time=800, effect="slideLeft"})

end

local function gotoSceneSettings()

   composer.gotoScene("Settings")
   flag = "sceneTitle"

 end

 local function gotoSceneTest()

   composer.gotoScene("sceneTest", {time=800, effect="slideRight"})
 
 end

-- "scene:create
function scene:create( event )

   local sceneGroup = self.view

   background = display.newImage("background/campaignBackground2.png", display.contentCenterX, display.contentCenterY)
   sceneGroup:insert(background)

   title = display.newText("Title Screen", display.contentCenterX, display.contentCenterY, "SFAutomaton", 40)
   title:setFillColor(0,0,1)
   sceneGroup:insert(title)

   -- buttonMap = display.newRoundedRect(display.contentCenterX, display.contentHeight*.8, display.contentHeight*.2, display.contentCenterY*.5, 20)
   -- buttonMap:setFillColor(1,0,0)
   -- sceneGroup:insert(buttonMap)

   buttonMap = display.newImage("buttons/campaign.png")
   buttonMap.x, buttonMap.y = display.contentCenterX, display.contentCenterY + 175
   buttonMap.xScale, buttonMap.yScale = 0.35, 0.35
   sceneGroup:insert(buttonMap)

   -- buttonSettings = display.newRoundedRect(display.contentWidth*.925, display.contentHeight*.1, display.contentHeight*.1, display.contentHeight*.1, 20)
   -- buttonSettings:setFillColor(1,0,0)
   -- sceneGroup:insert(buttonSettings)

   buttonSettings = display.newImage("buttons/settings.png")
   buttonSettings.x, buttonSettings.y = display.contentCenterX, display.contentCenterY + 300
   buttonSettings.xScale, buttonSettings.yScale = 0.35, 0.35
   sceneGroup:insert(buttonSettings)

   buttonTest = display.newRoundedRect( display.contentCenterX - 500, display.contentHeight*.8, display.contentHeight*.2, display.contentCenterY*.5, 20)
	buttonTest:setFillColor(0,0,1)
	sceneGroup:insert(buttonTest)

   buttonMap:addEventListener("tap", gotoSceneMap)
   buttonSettings:addEventListener("tap", gotoSceneSettings)
   buttonTest:addEventListener("tap", gotoSceneTest)

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
