slwowmo = true
beta = true



function draw()
    
    UiFont("Poppins-Light.ttf", 50)
    UiScale(1)
    UiColor(1, 1, 1)
    UiTranslate(UiCenter(), 250)
	UiAlign("center middle")
    UiText("dodgeFALL by Askodia")
    

    UiFont("regular.ttf", 50)
    if slwowmo == true then
        UiColor(0, 1, 0)
    else
        UiColor(1, 0, 0)
    end
    UiTranslate(300, 200)
    if UiTextButton('Slow-Mo',20,30) then
        if slwowmo == false then
            slwowmo = true
        else
            slwowmo = false
        end
    end

    UiPush()
        UiColor(1, 0, 0.6)
        UiTranslate(-300, 100)
	    UiAlign("center middle")
        UiText("beta version | do not re-distribute | issue bug reports at github.com/askodia-nt/dodgeFALL")
    UiPop()
    
end
