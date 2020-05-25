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

flag = "GameOne"

local function gotoSceneMap()

  composer.gotoScene("Map", {time=800, effect="fromBottom"})

end

local function gotoSceneSettings()

   composer.gotoScene("Settings")
   flag = "GameOne"
 
 end

-- "scene:create
function scene:create( event )

   local sceneGroup = self.view

   background = display.newImage("background/middleAges.png", display.contentCenterX, display.contentCenterY)
   sceneGroup:insert(background)

   title = display.newText("Gameplay 1", display.contentCenterX, display.contentCenterY - 300, "SFAutomaton", 40)
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

   ----- Tables for Tracking -----

   playerStats = {
      money = 0,
      towers = 0
   }

   towerOneStats = {
      health = 100,
      damage = 10,
      speed = 10
   }

   towerTwoStats = {
      health = 100,
      damage = 10,
      speed = 10
   }

   towerThreeStats = {
      health = 100,
      damage = 10,
      speed = 10
   }

   monsterOneStats = {
      health = 100,
      damage = 10,
      speed = 10
   }
   
   monsterTwoStats = {
      health = 100,
      damage = 10,
      speed = 10
   }

   monsterThreeStats = {
      health = 100,
      damage = 10,
      speed = 10
   }
   
   ----- Sprite Monsters -----

   local objectSheet = require("monster1Sprite")
   local monster1Sheet = graphics.newImageSheet("virus/monster1.png", objectSheet:getSheet())
   monster1 = display.newSprite(monster1Sheet, objectSheet:getSequences())
   monster1.x, monster1.y = display.contentCenterX - 500, display.contentCenterY
   monster1.xScale, monster1.yScale = 0.90, 0.90
   sceneGroup:insert(monster1)

   local objectSheet = require("monster2Sprite")
   local monster2Sheet = graphics.newImageSheet("virus/monster2.png", objectSheet:getSheet())
   monster2 = display.newSprite(monster2Sheet, objectSheet:getSequences())
   monster2.x, monster2.y = display.contentCenterX - 250, display.contentCenterY
   -- monster2.xScale, monster2.yScale = 0.25, 0.25
   sceneGroup:insert(monster2)

   local objectSheet = require("monster3Sprite")
   local monster3Sheet = graphics.newImageSheet("virus/monster3.png", objectSheet:getSheet())
   monster3 = display.newSprite(monster3Sheet, objectSheet:getSequences())
   monster3.x, monster3.y = display.contentCenterX, display.contentCenterY
   -- monster3.xScale, monster3.yScale = 0.25, 0.25
   sceneGroup:insert(monster3)

   local objectSheet = require("monster4Sprite")
   local monster4Sheet = graphics.newImageSheet("virus/monster4.png", objectSheet:getSheet())
   monster4 = display.newSprite(monster4Sheet, objectSheet:getSequences())
   monster4.x, monster4.y = display.contentCenterX + 250, display.contentCenterY
   -- monster4.xScale, monster4.yScale = 0.25, 0.25
   sceneGroup:insert(monster4)

   local objectSheet = require("monster5Sprite")
   local monster5Sheet = graphics.newImageSheet("virus/monster5.png", objectSheet:getSheet())
   monster5 = display.newSprite(monster5Sheet, objectSheet:getSequences())
   monster5.x, monster5.y = display.contentCenterX + 500, display.contentCenterY
   monster5.xScale, monster5.yScale = 0.90, 0.90
   sceneGroup:insert(monster5)

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

      local function walkingMonster1(event)
            monster1:setSequence("walking")
            monster1:play()
      end

      local function walkingMonster2(event)
         monster2:setSequence("walking")
         monster2:play()
      end

      local function walkingMonster3(event)
         monster3:setSequence("walking")
         monster3:play()
      end

      local function walkingMonster4(event)
         monster4:setSequence("walking")
         monster4:play()
      end

      local function walkingMonster5(event)
         monster5:setSequence("walking")
         monster5:play()
      end

      monster1:addEventListener("tap", walkingMonster1)
      monster2:addEventListener("tap", walkingMonster2)
      monster3:addEventListener("tap", walkingMonster3)
      monster4:addEventListener("tap", walkingMonster4)
      monster5:addEventListener("tap", walkingMonster5)

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
      monster1:pause()
      monster2:pause()
      monster3:pause()
      monster4:pause()
      monster5:pause()
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
