#include "options.lua"

slomo = 0.0
PlayMusic("music/background.ogg")

local health = GetPlayerHealth()


function tick()

	if InputDown('r') then
		SetPlayerGroundVelocity(Vec(2,0,0))
	end

	if slwowmo == true then
		if InputDown('t') then
			slomo = math.min(slomo + 0.03, 1)
		else
			slomo = math.max(slomo - 0.03, 0)
		end
	
		if slomo > 0 then
			SetTimeScale(1.0 - slomo*1)
		end
	end
	
end

function draw()
	print("draw called")
	UiFont("Poppins-Light.ttf", 50)
	UiTranslate(UiWidth()-30, 30)
	UiScale(1)
	UiColor(1, 1, 1)
	UiAlign("top right")
	UiText("almost anything you see is not offical")


end

