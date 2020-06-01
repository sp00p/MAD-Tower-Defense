local composer = require( "composer" )
local scene = composer.newScene()
local json = require('json')

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

local completedMaps = {1}

local path = system.pathForFile("completedMaps.json", system.DocumentsDirectory)

local file, errorString = io.open(path, "r")

if not file then
	print("File error: "..errorString)
else
	local contents = file:read("*a")
	table.insert(completedMaps, contents)
	io.close(file)
end

flag = "sceneMap"

local function gotoSceneTitlePage()

  composer.gotoScene("TitlePage", {time=800, effect="slideRight"})

end

local function gotoLevel1()

	composer.gotoScene("level1", {time=800, effect="zoomInOut"})

end

local function gotoLevel2()

	composer.gotoScene("level2", {time=800, effect="zoomInOut"})

end

local function gotoLevel3()

	composer.gotoScene("level3", {time=800, effect="zoomInOut"})

end

local function gotoSceneSettings()

   composer.gotoScene("Settings")
   flag = "sceneMap"

end

-- "scene:create()"
function scene:create( event )

   local sceneGroup = self.view

   local bg = display.newImage("/background/campaignBackground.png")
	bg.x, bg.y = display.contentCenterX, display.contentCenterY
   sceneGroup:insert(bg)
   
   local level1Select = display.newCircle(display.contentCenterX*.5, display.contentCenterY*1.35, 20)
	local level2Select = display.newCircle(display.contentCenterX*.75, display.contentCenterY*1.34, 20)
	local level3Select = display.newCircle(display.contentCenterX*0.915, display.contentCenterY*.7, 20)

   title = display.newText("Map", display.contentCenterX, display.contentCenterY, "SFAutomaton", 40)
   title:setFillColor(0,1,0)
   sceneGroup:insert(title)

   buttonTitle = display.newRoundedRect( display.contentCenterX, display.contentHeight*.8, display.contentHeight*.2, display.contentCenterY*.5, 20)
   buttonTitle:setFillColor(1,0,0)
   sceneGroup:insert(buttonTitle)

   buttonSettings = display.newRoundedRect(display.contentWidth*.925, display.contentHeight*.1, display.contentHeight*.1, display.contentHeight*.1, 20)
   buttonSettings:setFillColor(1,0,0)
   sceneGroup:insert(buttonSettings)

   if #completedMaps == 1  then
		level1Select:setFillColor(1,0,0)
		level1Select:addEventListener("tap", gotoLevel1)
	else
		if #completedMaps == 2 then
			level1Select:setFillColor(1,0,0)
			level2Select:setFillColor(1,0,0)

			level1Select:addEventListener("tap", gotoLevel1)
			level2Select:addEventListener("tap", gotoLevel2)
		elseif #completedMaps == 3 then
			level1Select:setFillColor(1,0,0)
			level2Select:setFillColor(1,0,0)
			level3Select:setFillColor(1,0,0)

			level1Select:addEventListener("tap", gotoLevel1)
			level2Select:addEventListener("tap", gotoLevel2)
			level3Select:addEventListener("tap", gotoLevel3)
		end
	end

	sceneGroup:insert(level1Select)
	sceneGroup:insert(level2Select)
	sceneGroup:insert(level3Select)

   buttonTitle:addEventListener("tap", gotoSceneTitlePage)
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
