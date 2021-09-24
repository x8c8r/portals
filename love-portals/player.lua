function doMove()	
    -- Left movement
	if love.keyboard.isDown('left') then
		x = x - speed

		if enableWindowMove == true then
			winX = winX - speed
		end

		if enableAccel == true then
			speed = speed + accelAmount
		end
	end
	-- Right movement
	if love.keyboard.isDown('right') then
		x = x + speed

		if enableWindowMove == true then
			winX = winX + speed
		end

		if enableAccel == true then
			speed = speed + accelAmount
		end
	end
	if enableVert == true then
		-- Up movement
		if love.keyboard.isDown('up') then
			y = y - speed

			if enableWindowMove == true then
				winY = winY - speed
			end

			if enableAccel == true then
				speed = speed + accelAmount
			end
	    end
		-- Down movement
		if love.keyboard.isDown('down') then
			y = y + speed

			if enableWindowMove == true then 
				winY = winY + speed
			end
			
			if enableAccel == true then
				speed = speed + accelAmount
			end
		end	
    end
end