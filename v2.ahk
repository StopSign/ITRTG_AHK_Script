
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

MCS(x, y, t) {
	if(GetKeyState("end"))
	return
	MouseMove, %x%, %y%, 0
	Click
	Sleep, %t%
}

MCST(x, y, t) {
	if(GetKeyState("end"))
	return
	MouseMove, %x%, %y%, 0
	Click
	count = 1
	loop, %t%
	{
		if(GetKeyState("end"))
		return
		if(GetKeyState("Home")) {
			Tooltip, continuing...
			sleep, 1000
			Tooltip, 
			return
		}
		Tooltip, %count% out of %t%
		sleep, 1000
		count++
	}
	Tooltip,
}


!2::
While(!GetKeyState("end")) {
Click
sleep, 500
}
return

!3::
CoordMode, mouse, screen
CoordMode, pixel, screen
down4()
return


waitMultipleForColorNotVisibleQuick(x, y, color) {
	while(!GetKeyState("end")) {
		colorIsVisibleQuick(x, y, color)
		waitForColorNotVisibleQuick(x, y, color)

	}
}


waitForColorVisibleQuick(x, y, color) {
	x2 := x+15
	y2 := y+15
	waitForColorVisible(x, y, x2, y2, color)
}

waitForColorVisible(x, y, x2, y2, theColor) {
	safeSpot()
	z := 0
	while (!GetKeyState("End")) {
		PixelSearch, Px, Py, %x%, %y%, %x2%, %y2%, %theColor%, 3, Fast
		if ErrorLevel {
			sleep, 10
			z++
			;Tooltip, %z%
			;if (z > 400) 
			; startOver()
		}
		else {
			return
		}
	}
}

waitForColorNotVisibleQuick(x, y, color) {
	x2 := x+15
	y2 := y+15
	waitForColorNotVisible(x, y, x2, y2, color)
}

waitForColorNotVisible(x, y, x2, y2, color) {
	safeSpot()
	z := 0
	while(!GetKeyState("End")) {
		PixelSearch, Px, Py, %x%, %y%, %x2%, %y2%, %color%, 3, Fast
		if ErrorLevel {
			return 1
		}
		else {
		sleep, 10
		z++
		;Tooltip, %z%
		;if (z > 400) 
		;	startOver()
		}
	}
}

colorIsVisibleQuick(x, y, color) {
	x2 := x+15
	y2 := y+15 
	return colorIsVisible(x, y, x2, y2, color)
}

; isColorVisible
colorIsVisible(x, y, x2, y2, color) {
	PixelSearch, Px, Py, %x%, %y%, %x2%, %y2%, %color%, 8, Fast
	if ErrorLevel {
		return 0
	}
	else {
		return 1
	}
}

colorIsNotVisibleQuick(x, y, color) {
	x2 := x+15
	y2 := y+15 
	return colorIsNotVisible(x, y, x2, y2, color)
}

colorIsNotVisible(x, y, x2, y2, color) {
	PixelSearch, Px, Py, %x%, %y%, %x2%, %y2%, %color%, 3, Fast
	if ErrorLevel {
		return 1
	}
	else {
		return 0
	}
}

safeSpot() {
	MouseMove, 69, 864, 0
	sleep, 10
}

clickScrollBar(x, y) {
	if(GetKeyState("end"))
	return
	MouseMove, %x%, %y%, 0
	loop, 4 {
		Click
		sleep, 50
	}
}

down4() {
if(GetKeyState("end"))
return
sleep, 150
loop, 4 {
Send {WheelDown}
sleep, 50
}
sleep, 150
}

down3() {
if(GetKeyState("end"))
return
sleep, 150
loop, 3 {
Send {WheelDown}
sleep, 50
}
sleep, 150
}
















;_________________GO BACK




















startOver() {
;todo
}



!4::
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
blue := 0x67422A
import()
While(!GetKeyState("End")) {
rebirth()
;buyMainBuilding()
buyDesignHall()
clickStaff()
clickHireWorker()
clickHireSalesman()
clickFirstCarWorker(1)
clickFirstCarSalesman(1)
buyAds(0, 2)
if(GetKeyState("end"))
	return
sleep, 2000
autoPrice(0)
getMaxLoan()
;buyProductionHall()
clickBuildings()
if(GetKeyState("end"))
	return
sleep, 1000
Tooltip, waiting for design hall
waitForColorNotVisibleQuick(593, 510, blue) ;design hall
Tooltip
buyDesignHall()
clickHireDesigner()
designTheCarPart1()
;clickBuildings()
;waitForColorNotVisibleQuick(593, 440, blue) ;main office
save()
}
return

designTheCarPart1() {
if(GetKeyState("end"))
	return
clickDesign()
clickMax()
makeFirstEngine()
MCS(1043, 589, 2000)
checkButtonOn()
Tooltip, waiting for engine
waitForColorNotVisibleQuick(593, 581, 0x67422A)
Tooltip
makeChassis()
MCS(1043, 589, 2000)
Tooltip, waiting for chassis
waitForColorNotVisibleQuick(593, 581, 0x67422A)
Tooltip
makeBody()
MCS(1043, 589, 2000)
Tooltip, waiting for body
waitForColorNotVisibleQuick(593, 581, 0x67422A)
Tooltip
MCS(1213, 478, 200)
firstBluePrintSpot()
MCS(747, 562, 200) ;chassis
MCS(1099, 574, 200)
MCS(752, 595, 200) ;tires
MCS(1095, 540, 200)
MCS(744, 629, 200) ;brakes
MCS(1095, 540, 200)
MCS(749, 664, 200) ;engine
MCS(1094, 576, 200)
MCS(1080, 559, 200) ;electronics
MCS(1090, 540, 200)
MCS(1084, 593, 200) ;cooler
MCS(1090, 540, 200)
MCS(1087, 633, 200) ;tank
MCS(1090, 540, 200)
MCS(1076, 666, 200) ;body
MCS(1095, 575, 200)
MCS(1204, 777, 200) ;create
MCS(1018, 587, 1000) ;add
clickBuildings()
sleep, 1000
Tooltip, waiting for design hall
waitForColorNotVisibleQuick(593, 510, 0x67422A) ;design hall
Tooltip
clickHireDesigner()
clickDesign()
MCS(1018, 587, 1000) ;add
waitForColorVisibleQuick(899, 582, 0xDEDEDB)
}

checkButtonOn() {
if(colorIsNotVisibleQuick(1124, 438, 0x3F9547)) {
MCS(1129, 445, 200)
}
}

makeBody() {
if(GetKeyState("end"))
	return
	MCS(1141, 478, 200)
	firstBluePrintSpot()
	clearAll()
	loop, 8
	MCS(929, 703, 100)
	loop, 9
	MCS(929, 522, 100)
	bluePrintCreate()
}

makeChassis() {
if(GetKeyState("end"))
	return
	MCS(628, 479, 200) ;chassis
	firstBluePrintSpot()
	clearAll()
	loop, 11 {
		MCS(933, 733, 100)
	}
	loop, 8 {
		MCS(928, 524, 100)
	}
	bluePrintCreate()
}

bluePrintCreate() {
MCS(1214, 801, 200)
}

firstBluePrintSpot() {
	MCS(1112, 601, 200) ;blueprint
}

makeFirstEngine() {
if(GetKeyState("end"))
	return
	MCS(852, 478, 200) ;engine
	firstBluePrintSpot()
	clearAll()
	MCS(931, 794, 200) ;cylinder
	loop, 9 {
		MCS(932, 765, 200) ;power
	}
	loop, 9 {
		MCS(930, 705, 200) ;efficiency
	}
	bluePrintCreate()
}

clearAll() {
	loop, 3 {
		if(GetKeyState("end"))
			return
		MCS(880, 524, 100)
		MCS(880, 553, 100)
		MCS(880, 584, 100)
		MCS(880, 614, 100)
		MCS(880, 644, 100)
		MCS(880, 674, 100)
		MCS(880, 704, 100)
		MCS(880, 734, 100)
		MCS(880, 764, 100)
	}
}

clickHireWorker() {
clickMax()
MCS(1187, 569, 200)
clickHireYes()
}
clickHireSalesman() {
click10()
MCS(1185, 675, 200)
clickHireYes()
}
clickHireDesigner() {
clickStaff()
clickMax()
MCS(1192, 637, 200)
clickHireYes()
}
clickHireYes() {
MCS(845, 631, 200)
}

click10() {
MCS(1031, 413, 200)
}

rebirth() {
	clickInfo()
	MCS(706, 597, 200) ;time machine
	MCS(836, 645, 200) ;yes
}

import() {
	clickInfo()
	MCS(1004, 463, 200) ;import
	MCS(844, 592, 200) ;yes and it spits you at market
}

save() {
	if(GetKeyState("end"))
		return
	clickInfo()
	MCS(704, 460, 200) ;export
	MCS(326, 1061, 500) ;notepad
	Send {Ctrl down}
	sleep, 50
	Send {v down}
	sleep, 50
	Send {v up}
	sleep, 50
	Send {Ctrl up}
	sleep, 50
	if(GetKeyState("end"))
	 return
	Send {Enter}
	sleep, 50
	Send {Enter}
	sleep, 50
	MCS(201, 1061, 50) ;firefox
}


;---------------------------------------------
;/////////////////////////////////////////////
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;---------------------------------------------
clickInfo() {
MCS(500, 838, 200)
}
clickMax() {
MCS(1228, 412, 200)
}
clickStaff() {
MCS(500, 700, 200)
}
clickMarket() {
MCS(390, 701, 200) 
}
clickBuildings() {
MCS(390, 771, 200)
}
clickProduction() {
MCS(494, 770, 200) 
}
clickDesign() {
MCS(388, 805, 200)
}
clickBalance() {
MCS(391, 842, 200)
}
clickGetLoan() {
clickBalance()
MCS(1029, 417, 200)
}
clickFirstCarWorker(isAdd) {
clickMax()
clickProduction()
if(isAdd)
MCS(1022, 516, 200)
else
MCS(1064, 511, 200)
}
clickFirstCarSalesman(isAdd) {
clickMax()
clickMarket()
if(isAdd)
MCS(909, 515, 200)
else
MCS(955, 517, 200)
}
buyAds(carRow, adRow) {
;TODO make this real
MCS(1135, 513, 200)
MCS(929, 561, 200)
}
autoPrice(num) {
clickMarket()
MCS(1043, 516, 200)
MCS(1053, 558, 200)
MCS(968, 695, 200)
}
buildingButton(y) {
clickBuildings()
MCS(1200, y, 200)
clickBuildingYes()
}

buyMainBuilding() {
buildingButton(445)
}
buyProductionHall() {
buildingButton(484)
}
buyDesignHall() {
buildingButton(520)
}
buyResearchCenter() {
buildingButton(553)
}
buyWarehouse() {
buildingButton(588)
}
buyCarStorage() {
buildingButton(625)
}
buyCarShowcase() {
buildingButton(659)
}


clickBuildingYes() {
MCS(844, 614, 200) 
}

getMaxLoan() {
clickGetLoan()
MCS(625, 655, 200)
Send 9999999999
MCS(888, 711, 200)
}
