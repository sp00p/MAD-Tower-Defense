local composer = require( "composer" )
local physics = require("physics")
local scene = composer.newScene()

---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer:removeScene()" is called.
---------------------------------------------------------------------------------

-- local forward references should go here

---------------------------------------------------------------------------------
display.setStatusBar(display.HiddenStatusBar)

local bg
local title
local button

local function gotoScene1()

  composer.gotoScene("scene1", {time=800, effect="slideLeft"})

end

-- Active towers table for removal later --
local activeTowers = {}

-- "scene:create()"
function scene:create( event )

   local sceneGroup = self.view


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
      --[[
      bg = display.newRect(display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight)
      bg:setFillColor(0,0,1)
      sceneGroup:insert(bg)

      title = display.newText("Game", display.contentCenterX, display.contentCenterY, "SFAutomaton", 40)
      title:setFillColor(0,1,0)
      sceneGroup:insert(title)
      --]]
      local cX, cY = display.contentCenterX, display.contentCenterY



      -- Initialize Rows (Dislay Opjects) --
      row1DO = display.newRect(cX*1.1, cY*.4, cX*2, 10)
      row2DO = display.newRect(cX*1.1, cY*.7, cX*2, 10)
      row3DO = display.newRect(cX*1.1, cY, cX*2, 10)
      row4DO = display.newRect(cX*1.1, cY*1.3, cX*2, 10)
      row5DO = display.newRect(cX*1.1, cY*1.6, cX*2, 10)

      sceneGroup:insert(row1DO)
      sceneGroup:insert(row2DO)
      sceneGroup:insert(row3DO)
      sceneGroup:insert(row4DO)
      sceneGroup:insert(row5DO)

      -- Row Tables --
      local row1 = {}
      local row2 = {}
      local row3 = {}
      local row4 = {}
      local row5 = {}

      local roundNumber = 0

      -- Initialize Tower Positions --
      local positions = {}
        positions[1] = display.newRect(cX*.5, cY*.4, 10, 10)
        positions[2] = display.newRect(cX*.8, cY*.4, 10, 10)
        positions[3] = display.newRect(cX*1.1, cY*.4, 10, 10)
        positions[4] = display.newRect(cX*1.4, cY*.4, 10, 10)
        positions[5] = display.newRect(cX*1.7, cY*.4, 10, 10)
        positions[6] = display.newRect(cX*.5, cY*.7, 10, 10)
        positions[7] = display.newRect(cX*.8, cY*.7, 10, 10)
        positions[8] = display.newRect(cX*1.1, cY*.7, 10, 10)
        positions[9] = display.newRect(cX*1.4, cY*.7, 10, 10)
        positions[10] = display.newRect(cX*1.7, cY*.7, 10, 10)
        positions[11] = display.newRect(cX*.5, cY, 10, 10)
        positions[12] = display.newRect(cX*.8, cY, 10, 10)
        positions[13] = display.newRect(cX*1.1, cY, 10, 10)
        positions[14] = display.newRect(cX*1.4, cY, 10, 10)
        positions[15] = display.newRect(cX*1.7, cY, 10, 10)
        positions[16] = display.newRect(cX*.5, cY*1.3, 10, 10)
        positions[17] = display.newRect(cX*.8, cY*1.3, 10, 10)
        positions[18] = display.newRect(cX*1.1, cY*1.3, 10, 10)
        positions[19] = display.newRect(cX*1.4, cY*1.3, 10, 10)
        positions[20] = display.newRect(cX*1.7, cY*1.3, 10, 10)
        positions[21] = display.newRect(cX*.5, cY*1.6, 10, 10)
        positions[22] = display.newRect(cX*.8, cY*1.6, 10, 10)
        positions[23] = display.newRect(cX*1.1, cY*1.6, 10, 10)
        positions[24] = display.newRect(cX*1.4, cY*1.6, 10, 10)
        positions[25] = display.newRect(cX*1.7, cY*1.6, 10, 10)



      -- Tower Menu --
      local tmBox = display.newRect(display.contentCenterX/8, display.contentCenterY, 70, display.contentCenterY*2)
      local tower1 = display.newRect(display.contentCenterX/8, display.contentCenterX*.3, 30, 30)
      tower1.towerNumber = 1
      tower1:setFillColor(1,0,0)

      sceneGroup:insert(tmBox)
      sceneGroup:insert(tower1)

      local function showPositions()

        for k,v in pairs(positions) do
          v:setFillColor(1,0,0)
        end

      end

      tower1:addEventListener("tap", showPositions)

      local function moveTower(pos)

        local newPosNum = tonumber(pos)

        for k,v in pairs(positions) do
          v:setFillColor(1,1,1)
        end

        if positions[newPosNum].isOccupied == false or positions[newPosNum].isOccupied == nil then
          positions[newPosNum].isOccupied = true

          table.insert(activeTowers, display.newRect(positions[tonumber(pos)].x, positions[tonumber(pos)].y, 30, 30))

          for i = 1, #activeTowers do
            activeTowers[i].id = "Tower"..i
            activeTowers[i].health = 100
            activeTowers[i]:setFillColor(1,0,0)

          end

        end

      end

      local function spawnEnemies()

        local rowNum = math.random(1, 5)

        if rowNum == 1 then
          table.insert(row1, display.newCircle(row1DO.contentWidth + (row1DO.contentWidth * 0.5), row1DO.y, 50))

          for i = 1, #row1 do
            row1[i].id = "row1("..i..")"
            row1[i].damageMult = 50
            row1[i]:setFillColor(0,0,1)
          end

          print("1")

        elseif rowNum == 2 then
          table.insert(row2, display.newCircle(row2DO.contentWidth + (row2DO.contentWidth * 0.5), row2DO.y, 50))

          for i = 1, #row2 do
            row2[i].id = "row2("..i..")"
            row2[i].damageMult = 50
            row2[i]:setFillColor(0,0,1)
          end

          print("2")

        elseif rowNum == 3 then
          table.insert(row3, display.newCircle(row3DO.contentWidth + (row3DO.contentWidth * 0.5), row3DO.y, 50))
          for i = 1, #row3 do
            row3[i].id = "row3("..i..")"
            row3[i].damageMult = 50
            row3[i]:setFillColor(0,0,1)
          end

          print("3")

        elseif rowNum == 4 then
          table.insert(row4, display.newCircle(row4DO.contentWidth + (row4DO.contentWidth * 0.5), row4DO.y, 50))
          for i = 1, #row4 do
            row4[i].id = "row4("..i..")"
            row4[i].damageMult = 50
            row4[i]:setFillColor(0,0,1)
          end

          print("4")

        elseif rowNum ==  5 then
          table.insert(row5, display.newCircle(row5DO.contentWidth + (row5DO.contentWidth * 0.5), row5DO.y, 50))
          for i = 1, #row5 do
            row5[i].id = "row5("..i..")"
            row5[i].damageMult = 50
            row5[i]:setFillColor(0,0,1)
          end

          print("5")

        end

      end

      local function getPosTap(event)

        local pos = event.target.posNum

        if positions[tonumber(pos)].isOccupied == false or positions[tonumber(pos)].isOccupied == nil then
          moveTower(pos)
        else
          return
        end

      end

      for i = 1, #positions do
        positions[i]:addEventListener("tap", getPosTap)
        positions[i].posNum = i
        sceneGroup:insert(positions[i])
      end



      backButton = display.newRoundedRect( display.contentCenterX*1.8, display.contentHeight*0.1, 50, 50, 20)
      backButton:setFillColor(1,0,0)
      sceneGroup:insert(backButton)

      backButton:addEventListener("tap", gotoScene1)


      local waveStartButton = display.newRect(display.contentCenterX, display.contentCenterY*1.8, 50, 20)
      waveStartButton:setFillColor(1,0,0)
      sceneGroup:insert(waveStartButton)
      waveStartButton:addEventListener("tap", spawnEnemies)

    end

end




-- "scene:hide()"
function scene:hide( event )

   local sceneGroup = self.view
   local phase = event.phase

   if ( phase == "will" ) then
      -- Called when the scene is on screen (but is about to go off screen).
      -- Insert code here to "pause" the scene.
      -- Example: stop timers, stop animation, stop audio, etc
      for i = 1, table.maxn(activeTowers) do
        if i == nil then
          return
        else
          activeTowers[i]:removeSelf()
          activeTowers[i] = nil
        end
      end

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
