local composer = require( "composer" )
local scene = composer.newScene()
local json = require('json')

--physics.setDrawMode("hybrid")

---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer:removeScene()" is called.
---------------------------------------------------------------------------------

-- local forward references should go here

---------------------------------------------------------------------------------
display.setStatusBar(display.HiddenStatusBar)

local bg

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


local function gotoLevel1()

	composer.gotoScene("level1", {time=800, effect="zoomInOut"})

end

local function gotoLevel2()

	composer.gotoScene("level2", {time=800, effect="zoomInOut"})

end

local function gotoLevel3()

	composer.gotoScene("level3", {time=800, effect="zoomInOut"})

end

-- "scene:create()"
function scene:create( event )

	local sceneGroup = self.view

	local bg = display.newImage("./background/campaignBackground.png")
	bg.x, bg.y = display.contentCenterX, display.contentCenterY
	sceneGroup:insert(bg)

	local level1Select = display.newCircle(display.contentCenterX*.5, display.contentCenterY*1.35, 20)
	local level2Select = display.newCircle(display.contentCenterX*.75, display.contentCenterY*1.34, 20)
	local level3Select = display.newCircle(display.contentCenterX*0.915, display.contentCenterY*.7, 20)

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
