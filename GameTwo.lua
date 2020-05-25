local composer = require( "composer" )
local scene = composer.newScene()
local score = require( "score" )

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

flag = "GameTwo"

local function gotoSceneMap()

  composer.gotoScene("Map", {time=800, effect="fromBottom"})

end

local function gotoSceneSettings()

   composer.gotoScene("Settings")
   flag = "GameTwo"
 
 end

-- "scene:create
function scene:create( event )
   

   local sceneGroup = self.view

   background = display.newImage("background/hospital.png", display.contentCenterX, display.contentCenterY)
   sceneGroup:insert(background)

   title = display.newText("Gameplay 2", display.contentCenterX, display.contentCenterY - 300, "SFAutomaton", 40)
   title:setFillColor(1,0,0)
   sceneGroup:insert(title)

   buttonMap = display.newRoundedRect( display.contentCenterX, display.contentHeight*.8, display.contentHeight*.2, display.contentCenterY*.5, 20)
   buttonMap:setFillColor(1,0,0)
   sceneGroup:insert(buttonMap)

   buttonSettings = display.newImage("buttons/circle.png", display.contentWidth*.925, display.contentHeight*.1)
   buttonSettings.xScale, buttonSettings.yScale = 7, 7
   sceneGroup:insert(buttonSettings)

   --buttonTest = display.newRect(display.contentCenterX, display.contentCenterY, 100, 100)

   buttonMap:addEventListener("tap", gotoSceneMap)
   buttonSettings:addEventListener("tap", gotoSceneSettings)

   ----- Sprite Towers ------

   local objectSheet = require("explosionSprite")
   local explosionSheet = graphics.newImageSheet("towers/explosion.png", objectSheet:getSheet())
   explosion1 = display.newSprite(explosionSheet, objectSheet:getSequences())
   explosion1.x, explosion1.y = display.contentCenterX - 500, display.contentCenterY
   explosion1.xScale, explosion1.yScale = 1.25, 1.25
   sceneGroup:insert(explosion1)

   local objectSheet = require("susanSprite")
   local susanSheet = graphics.newImageSheet("towers/susan.png", objectSheet:getSheet())
   susan = display.newSprite(susanSheet, objectSheet:getSequences())
   susan.x, susan.y = display.contentCenterX - 250, display.contentCenterY
   susan.xScale, susan.yScale = 1.75, 1.75
   sceneGroup:insert(susan)

   local objectSheet = require("junkieSprite")
   local junkieSheet = graphics.newImageSheet("towers/junkie.png", objectSheet:getSheet())
   junkie = display.newSprite(junkieSheet, objectSheet:getSequences())
   junkie.x, junkie.y = display.contentCenterX, display.contentCenterY
   --junkie.xScale, junkie.yScale = 1, 1.50
   sceneGroup:insert(junkie)

   local objectSheet = require("pharmabobSprite")
   local pharmabobSheet = graphics.newImageSheet("towers/pharmabob.png", objectSheet:getSheet())
   pharmabob = display.newSprite(pharmabobSheet, objectSheet:getSequences())
   pharmabob.x, pharmabob.y = display.contentCenterX + 250, display.contentCenterY
   pharmabob.xScale, pharmabob.yScale = 1.50, 1.50
   sceneGroup:insert(pharmabob)

   ----- scoring -----

   local scoreText = score.init(
   {
      fontSize = 20,
      font = "CoolCustomFont.ttf",
      x = display.contentCenterX,
      y = 30,
      maxDigits = 7,
      leadingZeros = true
   })

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

      local function explode1(event)
         explosion1:setSequence("explode")
         explosion1:play()
      end

      susanStatus = 0
      junkieStatus = 0
      pharmabobStatus = 0

      local function susanActions(event)
         if susanStatus == 0 then
            susan:setSequence("idle")
            susan:play()
            susanStatus = 1
         elseif susanStatus == 1 then
            susan:setSequence("moneymaking")
            susan:play()
            susanStatus = 0
         end
      end

      local function junkieActions(event)
         if junkieStatus == 0 then
            junkie:setSequence("arrival")
            junkie:play()
            junkieStatus = 1
         elseif junkieStatus == 1 then
            junkie:setSequence("damaged")
            junkie:play()
            junkieStatus = 2
         elseif junkieStatus == 2 then
            junkie:setSequence("final")
            junkie:play()
            junkieStatus = 0
         end
      end

      local function pharmabobActions(event)
         if pharmabobStatus == 0 then
            pharmabob:setSequence("idle")
            pharmabob:play()
            pharmabobStatus = 1
         elseif pharmabobStatus == 1 then
            pharmabob:setSequence("shooting")
            pharmabob:play()
            pharmabobStatus = 0
         end
      end

      -- local function walkingMonster4(event)
      --    monster4:setSequence("walking")
      --    monster4:play()
      -- end

      -- local function walkingMonster5(event)
      --    monster5:setSequence("walking")
      --    monster5:play()
      -- end

      explosion1:addEventListener("tap", explode1)
      susan:addEventListener("tap", susanActions)
      junkie:addEventListener("tap", junkieActions)
      pharmabob:addEventListener("tap", pharmabobActions)

      -- monster3:addEventListener("tap", walkingMonster3)
      -- monster4:addEventListener("tap", walkingMonster4)
      -- monster5:addEventListener("tap", walkingMonster5)

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
      explosion1:pause()
      junkie:pause()
      susan:pause()
      pharmabob:pause()
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
