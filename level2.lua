local composer = require("composer")
local physics = require("physics")
local json = require("json")
local scene = composer.newScene()

physics.start()

--physics.setDrawMode("hybrid")

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

waveNumber = 1

-- Active towers table for removal later --
local activeTowers = {}

-- "scene:create()"
function scene:create(event)
    local sceneGroup = self.view

    -- Initialize the scene here.
    -- Example: add display objects to "sceneGroup", add touch listeners, etc.
end

-- "scene:show()"
function scene:show(event)
    local sceneGroup = self.view
    local phase = event.phase

    local bg = display.newImage("./background/outside.png")
    bg.x, bg.y = display.contentCenterX, display.contentCenterY
    sceneGroup:insert(bg)

    if (phase == "will") then
        -- Called when the scene is still off screen (but is about to come on screen).
    elseif (phase == "did") then
        -- Called when the scene is now on screen.
        -- Insert code here to make the scene come alive.
        -- Example: start timers, begin animation, play audio, etc.
        --[[
      bg = display.newRect(display.contentCenterX, cY, display.contentWidth, display.contentHeight)
      bg:setFillColor(0,0,1)
      sceneGroup:insert(bg)

      title = display.newText("Game", display.contentCenterX, cY, "SFAutomaton", 40)
      title:setFillColor(0,1,0)
      sceneGroup:insert(title)
      --]]
        local cX, cY = display.contentCenterX, display.contentCenterY

        -- Initialize Rows (Display Opjects) --
        row1DO = display.newRect(cX * 1.1, cY * .4, cX * 2, 10)
        row2DO = display.newRect(cX * 1.1, cY * .7, cX * 2, 10)
        row3DO = display.newRect(cX * 1.1, cY, cX * 2, 10)
        row4DO = display.newRect(cX * 1.1, cY * 1.3, cX * 2, 10)
        row5DO = display.newRect(cX * 1.1, cY * 1.6, cX * 2, 10)

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

        local row1Towers = {}
        local row2Towers = {}
        local row3Towers = {}
        local row4Towers = {}
        local row5Towers = {}

        local projectiles = {}

        local enemies = {}

        local x = 0

        -- Initialize Tower Positions --
        local positions = {}
        positions[1] = display.newRect(cX * .5, cY * .4, 10, 10)
        positions[2] = display.newRect(cX * .8, cY * .4, 10, 10)
        positions[3] = display.newRect(cX * 1.1, cY * .4, 10, 10)
        positions[4] = display.newRect(cX * 1.4, cY * .4, 10, 10)
        positions[5] = display.newRect(cX * 1.7, cY * .4, 10, 10)
        positions[6] = display.newRect(cX * .5, cY * .7, 10, 10)
        positions[7] = display.newRect(cX * .8, cY * .7, 10, 10)
        positions[8] = display.newRect(cX * 1.1, cY * .7, 10, 10)
        positions[9] = display.newRect(cX * 1.4, cY * .7, 10, 10)
        positions[10] = display.newRect(cX * 1.7, cY * .7, 10, 10)
        positions[11] = display.newRect(cX * .5, cY, 10, 10)
        positions[12] = display.newRect(cX * .8, cY, 10, 10)
        positions[13] = display.newRect(cX * 1.1, cY, 10, 10)
        positions[14] = display.newRect(cX * 1.4, cY, 10, 10)
        positions[15] = display.newRect(cX * 1.7, cY, 10, 10)
        positions[16] = display.newRect(cX * .5, cY * 1.3, 10, 10)
        positions[17] = display.newRect(cX * .8, cY * 1.3, 10, 10)
        positions[18] = display.newRect(cX * 1.1, cY * 1.3, 10, 10)
        positions[19] = display.newRect(cX * 1.4, cY * 1.3, 10, 10)
        positions[20] = display.newRect(cX * 1.7, cY * 1.3, 10, 10)
        positions[21] = display.newRect(cX * .5, cY * 1.6, 10, 10)
        positions[22] = display.newRect(cX * .8, cY * 1.6, 10, 10)
        positions[23] = display.newRect(cX * 1.1, cY * 1.6, 10, 10)
        positions[24] = display.newRect(cX * 1.4, cY * 1.6, 10, 10)
        positions[25] = display.newRect(cX * 1.7, cY * 1.6, 10, 10)

        -- Tower Menu --
        local tmBox = display.newRect(display.contentCenterX / 8, cY, 70, cY * 2)
        local tower1 = display.newRect(display.contentCenterX / 8, display.contentCenterX * .3, 30, 30)
        tower1.towerNumber = 1
        tower1:setFillColor(1, 0, 0)

        sceneGroup:insert(tmBox)
        sceneGroup:insert(tower1)

        local function showPositions()
            for k, v in pairs(positions) do
                v:setFillColor(1, 0, 0)
            end
        end

        tower1:addEventListener("tap", showPositions)

        local function moveTower(pos)
            local newPosNum = tonumber(pos)

            for k, v in pairs(positions) do
                v:setFillColor(1, 1, 1)
            end

            if positions[newPosNum].isOccupied == false or positions[newPosNum].isOccupied == nil then
                positions[newPosNum].isOccupied = true

                local newTower = display.newRect(positions[tonumber(pos)].x, positions[tonumber(pos)].y, 30, 30)
                table.insert(activeTowers, newTower)

                if (positions[newPosNum].y == cY * .4) then
                    table.insert(row1Towers, newTower)
                elseif (positions[newPosNum].y == cY * .7) then
                    table.insert(row2Towers, newTower)
                elseif (positions[newPosNum].y == cY) then
                    table.insert(row3Towers, newTower)
                elseif (positions[newPosNum].y == cY * 1.3) then
                    table.insert(row4Towers, newTower)
                elseif (positions[newPosNum].y == cY * 1.6) then
                    table.insert(row5Towers, newTower)
                end

                for i = 1, #activeTowers do
                    activeTowers[i].id = "Tower" .. i
                    activeTowers[i].health = 100
                    activeTowers[i]:setFillColor(1, 0, 0)
                end
            end
        end

        local pointsText = display.newText("Points: " .. x, display.contentCenterX, cY * 0.3, 200, 100)
        sceneGroup:insert(pointsText)

        local function addPoints(numberOfPoints)
            local currentPoints = x + numberOfPoints
            pointsText.text = "Points: " .. currentPoints
            x = currentPoints

            if currentPoints == 40 then
              local saveData = "3"

              local path = system.pathForFile("completedMaps.json", system.DocumentsDirectory)

              local file, errorString = io.open(path, "w")

              if not file then
              	print("File error: ".. errorString)
              else
              	file:write(saveData)
              	io.close(file)
              end

              file = nil
						else
							local saveData = currentPoints

							local path = system.pathForFile("level2highscore.json", system.DocumentsDirectory)

							local file, errorString = io.open(path, "w")

							if not file then
								print("File error: ".. errorString)
							else
								file:write(saveData)
								io.close(file)
							end

							file = nil
						end
        end


        local function spawnEnemies(event)
                local rowNum = math.random(1, 5)

                if rowNum == 1 then
                    local newEnemy = display.newCircle(row1DO.x + (row1DO.x / 1.5), row1DO.y, 50)
                    physics.addBody(newEnemy, "dynamic", {radius = 50})
                    newEnemy.gravityScale = 0
                    newEnemy.isSensor = true
                    sceneGroup:insert(newEnemy)
                    newEnemy:setLinearVelocity(-100, 0)
                    newEnemy:addEventListener("collision", newEnemy)
                    table.insert(row1, newEnemy)
                    table.insert(enemies, newEnemy)

                    for i = 1, #row1 do
                        row1[i].id = "row1(" .. i .. ")"
                        row1[i].damageMult = 50
                        --row1[i]:setFillColor(0,0,1)
                        --print(row1[i].id)
                    end

                    function newEnemy:collision(event)
                        print("hit")

                        if event.phase == "began" then
                            self:removeEventListener("collision", self)
                            self:removeSelf()
                            self = nil
                            addPoints(1)
                        end
                    end

                    print("1")
                elseif rowNum == 2 then
                    local newEnemy = display.newCircle(row2DO.x + (row2DO.x / 1.5), row2DO.y, 50)
                    physics.addBody(newEnemy, "dynamic", {radius = 50})
                    newEnemy.gravityScale = 0
                    newEnemy.isSensor = true
                    sceneGroup:insert(newEnemy)
                    newEnemy:setLinearVelocity(-100, 0)
                    newEnemy:addEventListener("collision", newEnemy)
                    table.insert(row2, newEnemy)
                    table.insert(enemies, newEnemy)

                    for i = 1, #row2 do
                        row2[i].id = "row2(" .. i .. ")"
                        row2[i].damageMult = 50
                        --row2[i]:setFillColor(0,0,1)
                    end

                    function newEnemy:collision(event)
                        print("hit")

                        if event.phase == "began" then
                            self:removeEventListener("collision", self)
                            self:removeSelf()
                            self = nil
                            addPoints(1)
                        end
                    end

                    print("2")
                elseif rowNum == 3 then
                    local newEnemy = display.newCircle(row3DO.x + (row3DO.x / 1.5), row3DO.y, 50)
                    physics.addBody(newEnemy, "dynamic", {radius = 50})
                    newEnemy.gravityScale = 0
                    newEnemy.isSensor = true
                    sceneGroup:insert(newEnemy)
                    newEnemy:setLinearVelocity(-100, 0)
                    newEnemy:addEventListener("collision", newEnemy)
                    table.insert(row3, newEnemy)
                    table.insert(enemies, newEnemy)

                    for i = 1, #row3 do
                        row3[i].id = "row3(" .. i .. ")"
                        row3[i].damageMult = 50
                        --row3[i]:setFillColor(0,0,1)
                        --print(row3[i].id)
                    end

                    function newEnemy:collision(event)
                        print("hit")

                        if event.phase == "began" then
                            self:removeEventListener("collision", self)
                            self:removeSelf()
                            self = nil
                            addPoints(1)
                        end
                    end

                    print("3")
                elseif rowNum == 4 then
                    local newEnemy = display.newCircle(row4DO.x + (row4DO.x / 1.5), row4DO.y, 50)
                    physics.addBody(newEnemy, "dynamic", {radius = 50})
                    newEnemy.gravityScale = 0
                    newEnemy.isSensor = true
                    sceneGroup:insert(newEnemy)
                    newEnemy:setLinearVelocity(-100, 0)
                    newEnemy:addEventListener("collision", newEnemy)
                    table.insert(row4, newEnemy)
                    table.insert(enemies, newEnemy)

                    for i = 1, #row4 do
                        row4[i].id = "row4(" .. i .. ")"
                        row4[i].damageMult = 50
                        --row4[i]:setFillColor(0,0,1)
                        --print(row4[i].id)
                    end

                    function newEnemy:collision(event)
                        print("hit")

                        if event.phase == "began" then
                            self:removeEventListener("collision", self)
                            self:removeSelf()
                            self = nil
                            addPoints(1)
                        end
                    end

                    print("4")
                elseif rowNum == 5 then
                    local newEnemy = display.newCircle(row5DO.x + (row5DO.x / 1.5), row5DO.y, 50)
                    physics.addBody(newEnemy, "dynamic", {radius = 50})
                    newEnemy.gravityScale = 0
                    newEnemy.isSensor = true
                    sceneGroup:insert(newEnemy)
                    newEnemy:setLinearVelocity(-100, 0)
                    newEnemy:addEventListener("collision", newEnemy)
                    table.insert(row5, newEnemy)
                    table.insert(enemies, newEnemy)

                    for i = 1, #row5 do
                        row5[i].id = "row5(" .. i .. ")"
                        row5[i].damageMult = 50
                        --row5[i]:setFillColor(0,0,1)
                        --print(row5[i].id)
                    end

                    function newEnemy:collision(event)
                        print("hit")

                        if event.phase == "began" then
                            self:removeEventListener("collision", self)
                            self:removeSelf()
                            self = nil
                            addPoints(1)
                        end

                        print("5")
                    end
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

        local function row1Shoot()
          for i = 1, #row1Towers do
            if #row1 > 0 then
              local newProjectile = display.newRect(row1Towers[i].x, row1Towers[i].y, 10, 10)
              newProjectile:setFillColor(0,1,0)
              physics.addBody(newProjectile, "dynamic")
              newProjectile.gravityScale = 0
              newProjectile.isSensor = true
              sceneGroup:insert(newProjectile)
              newProjectile:addEventListener("collision", newProjectile)
              table.insert(projectiles, newProjectile)
              newProjectile:setLinearVelocity(100, 0)

              function newProjectile:collision(event)
                if event.phase == "began" then
                    self:removeEventListener("collision")
                    self:removeSelf()
                    self = nil
                end
              end
            end
          end
        end

        local function row2Shoot()
          for i = 1, #row2Towers do
            if #row2 > 0 then
              local newProjectile = display.newRect(row2Towers[i].x, row2Towers[i].y, 10, 10)
              newProjectile:setFillColor(0,1,0)
              physics.addBody(newProjectile, "dynamic")
              newProjectile.gravityScale = 0
              newProjectile.isSensor = true
              sceneGroup:insert(newProjectile)
              newProjectile:addEventListener("collision", newProjectile)
              table.insert(projectiles, newProjectile)
              newProjectile:setLinearVelocity(100, 0)

              function newProjectile:collision(event)
                if event.phase == "began" then
                    self:removeEventListener("collision")
                    self:removeSelf()
                    self = nil
                end
              end
            end
          end
        end

        local function row3Shoot()
          for i = 1, #row3Towers do
            if #row3 > 0 then
              local newProjectile = display.newRect(row3Towers[i].x, row3Towers[i].y, 10, 10)
              newProjectile:setFillColor(0,1,0)
              physics.addBody(newProjectile, "dynamic")
              newProjectile.gravityScale = 0
              newProjectile.isSensor = true
              sceneGroup:insert(newProjectile)
              newProjectile:addEventListener("collision", newProjectile)
              table.insert(projectiles, newProjectile)
              newProjectile:setLinearVelocity(100, 0)

              function newProjectile:collision(event)
                if event.phase == "began" then
                    self:removeEventListener("collision")
                    self:removeSelf()
                    self = nil
                end
              end
            end
          end
        end

        local function row4Shoot()
          for i = 1, #row4Towers do
            if #row4 > 0 then
              local newProjectile = display.newRect(row4Towers[i].x, row4Towers[i].y, 10, 10)
              newProjectile:setFillColor(0,1,0)
              physics.addBody(newProjectile, "dynamic")
              newProjectile.gravityScale = 0
              newProjectile.isSensor = true
              sceneGroup:insert(newProjectile)
              newProjectile:addEventListener("collision", newProjectile)
              table.insert(projectiles, newProjectile)
              newProjectile:setLinearVelocity(100, 0)

              function newProjectile:collision(event)
                if event.phase == "began" then
                    self:removeEventListener("collision")
                    self:removeSelf()
                    self = nil
                end
              end
            end
          end
        end

        local function row5Shoot()
          for i = 1, #row5Towers do
            if #row5 > 0 then
              local newProjectile = display.newRect(row5Towers[i].x, row5Towers[i].y, 10, 10)
              newProjectile:setFillColor(0,1,0)
              physics.addBody(newProjectile, "dynamic")
              newProjectile.gravityScale = 0
              newProjectile.isSensor = true
              sceneGroup:insert(newProjectile)
              newProjectile:addEventListener("collision", newProjectile)
              table.insert(projectiles, newProjectile)
              newProjectile:setLinearVelocity(100, 0)

              function newProjectile:collision(event)
                  if event.phase == "began" then
                    self:removeEventListener("collision")
                    self:removeSelf()
                    self = nil
                end
              end
            end
          end
        end

        -- local function startShootingTimer() -- to prevent duplication of timer i made a function
        --
        --   local shootTimer = timer.performWithDelay(5000, startShooting, -1)
        --   timer.pause(shootTimer)
        --
        --   if #row1 > 0 or #row2 > 0 or #row3 > 0 or #row4 > 0 or #row5 > 0 then
        --     timer.resume(shootTimer)
        --   else
        --     timer.pause(shootTimer)
        --   end
        --
        -- end
        local startButton = display.newRect(display.contentCenterX, cY * 1.8, 100, 100)
        startButton:setFillColor(1, 0, 0)
        sceneGroup:insert(startButton)


        local function startWave()
          local shootTimer = timer.performWithDelay( 5000, startShooting, -1)
            if #activeTowers == 0 then
              print('place a tower first lol')
            else
              local enemiesToSpawn = waveNumber
              timer.performWithDelay(2000, spawnEnemies, -1)
              local row1Timer = timer.performWithDelay(5000, row1Shoot, -1)
              local row2Timer = timer.performWithDelay(5000, row2Shoot, -1)
              local row3Timer = timer.performWithDelay(5000, row3Shoot, -1)
              local row4Timer = timer.performWithDelay(5000, row4Shoot, -1)
              local row5Timer = timer.performWithDelay(5000, row5Shoot, -1)
              startButton.alpha = 0
              startButton:removeEventListener("tap", startWave)
            end
        end

        startButton:addEventListener("tap", startWave)

    end
end

-- "scene:hide()"
function scene:hide(event)
    local sceneGroup = self.view
    local phase = event.phase

    if (phase == "will") then
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
    elseif (phase == "did") then
    -- Called immediately after scene goes off screen.
    end
end

-- "scene:destroy()"
function scene:destroy(event)
    local sceneGroup = self.view

    -- Called prior to the removal of scene's view ("sceneGroup").
    -- Insert code here to clean up the scene.
    -- Example: remove display objects, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)

---------------------------------------------------------------------------------

return scene
