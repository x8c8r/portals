require 'move'

function love.conf(s)
	s.screenWidth = 800
	s.screenHeight = 600
	
	s.window.title = "love-portals. Always here to LÖVE you!"

	s.version = "1.0"

end

function love.load()
-- Meta vars
	screenWidth = 800
	screenHeight = 600
	winX = screenWidth/2
	winY = screenHeight/2
-- Movement vars
	maxSpeed = 10
	startSpeed = 1
	x = screenWidth/2
	y = screenHeight/2
	speed = startSpeed
	accelAmount = 0.1
-- Configuration vars
	-- debug = true
	enablePortals = true
	enableVert = true
	enableAccel = true
	enableWindowMove = false
	colorScheme = 1 -- Colorscheme: 1 for classic(inoportals)

	-- Colorschemes:
	inoportals = {54/255, 175/255, 255/255}
end

function love.update(dt)
	if colorScheme == 1 then
		love.graphics.setColor(inoportals)
	end 

	doMove()

	if speed > maxSpeed then
		speed = maxSpeed
	end

	if love.keyboard.isDown('left') ~= true and love.keyboard.isDown('right') ~= true and love.keyboard.isDown('up') ~= true and love.keyboard.isDown('down') ~= true then
		speed = startSpeed
	end

	if love.keyboard.isDown('escape') then
		love.event.quit()
	end

	-- portals lmao
	if enablePortals == true then
		if x > screenWidth then
			x = 0
		end
		if x < 0 then
			x = screenWidth
		end
		if y < 0 then
			y = screenHeight
		end
		if y > screenHeight then
			y = 0
		end
	end

	-- walls lmao
	if enablePortals == false then
		if x > screenWidth then
			x = screenWidth
		end
		if x < 0 then
			x = 0
		end
		if y < 0 then
			y = 0
		end
		if y > screenHeight then
			y = screenHeight
		end
	end
	if enableWindowMove == true then
		love.window.setPosition(winX, winY, 1)
	end

	love.timer.sleep(0.01)
end

function love.draw()

	player = love.graphics.circle("line", x, y, 5)

	love.graphics.line(0, 0, screenWidth, 0)

	love.graphics.line(0, 0, 0, screenHeight)

	love.graphics.line(screenWidth, 0, screenWidth, screenHeight)

	love.graphics.line(0, screenHeight, screenWidth, screenHeight)
end