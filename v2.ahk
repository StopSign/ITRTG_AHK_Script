
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;This script is made for Idle Car Manager, created by Ryu82
;and found for free on kongregate
;Made by Phurple, find me in chat or itrtg chat
;
;This script runs on AutoHotkey (AHK), a free, low-size download
;for keyboard I/O
;If you want help setting up, ask




;The game actually starts at !4   (use ctrl-f)
;AHK has a great manual, right click the green H
;and press "help" to figure out what something does
;between that and ctrl-f, you can read everything to figure
;out what changes you want to make.









;this needed to be here a long time ago
;Used by pressing alt ` it writes in notepadd++
;the function to click at that spot
!`::
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
CoordMode, Tooltip, Screen
MouseGetPos, xpos, ypos
WinGetTitle, Title, A
StringGetPos, pos, Title, Notepad++
if(pos < 0)
	MCS(268, 1065, 100) ;notepad++ icon
Send {Enter}MCS(%xpos%, %ypos%, 50){Space}{;}
MouseMove, xpos, ypos, 0
return

!q::
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
CoordMode, Tooltip, Screen
MouseGetPos, xpos, ypos
WinGetTitle, Title, A
StringGetPos, pos, Title, Notepad++
if(pos < 0)
	MCS(268, 1065, 100) ;notepad++ icon
Send %xpos%, %ypos%
MouseMove, xpos, ypos, 0
return




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
			stableTooltip("continuing...", 0)
			sleep, 1000
			Tooltip
			return
		}
		stableTooltip("%count% out of %t%", 0)
		sleep, 1000
		count++
	}
	Tooltip,
}

stableTooltip(theString, isSafeAfter) {
	global tooltipX
	global tooltipY
	Tooltip, %theString%, %tooltipX%, %tooltipY%
	if(isSafeAfter)
		MCS(348, 478, 50)
}

!2:: ;autoclicker
While(!GetKeyState("end")) {
Click
sleep, 10
}
return

!3:: ;scrolls down 4, used when on the laptop and i don't have a mouse to scroll with
CoordMode, mouse, screen
CoordMode, pixel, screen
CoordMode, Tooltip, Screen
down4()
return

XButton1::
makePressed1()
return

makePressed1() {
global 
pressed := 1
}

XButton2::
	makePressed0()
	While(!pressed) {
		if(GetKeyState("end"))
		return
		click
		sleep, 15
	}
return

makePressed0() {
	global 
	pressed := 0
}


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
















;_________________GO BACK DOWN




















startOver() {
;todo
}

getDefaults() {
global
blue := 0x67422A
constantBuildingCheck := 1 ;0 if you want to chat while building
carFinishedWhite := 0xFCFCFB
tooltipX := 786
tooltipY := 332
fastClickSpeed := 50
shouldBuildMain := 1
shouldBuildResearch := 1
shouldBuildDesign := 1
designHallDone := 0
researchDone := 0
}

;fds to search
!4::
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
CoordMode, Tooltip, Screen
SetFormat, float, 0.2
import()
go := 0
While(!GetKeyState("End")) {
	getDefaults()
	if(go) {
	}
	rebirth()
	buyMainBuilding()
	buyDesignHall()
	buyResearchCenter()
	;clickHireWorker()
	;clickHireSalesman()
	;clickFirstCarWorker(1)
	;clickFirstCarSalesman(1)
	;buyAds(1, 2)
	if(GetKeyState("end"))
		return
	;autoPrice(1)
	;buyProductionHall()
	clickCarSouls()
	if(GetKeyState("end"))
		return
	waitForBuildingToFinishRebuildAndHandleStaff(4, 1) ;research center
	waitForBuildingToFinishRebuildAndHandleStaff(3, 1) ;design hall
	designTheCarPart1()
	waitForCarToFinish(1)
	getMaxLoan()
	shouldBuildMain := 0
	designTheCarPart2()
	shouldBuildResearch := 0
	waitForCarToFinish(2)
	designTheCarPart3()
	shouldBuildDesign := 0
	waitForCarToFinish(3)


	save()
}
Tooltip
return

waitForCarToFinish(row) {
	global carFinishedWhite
	y := 545 + row * 35
	stableTooltip("waiting for the car design to finish", 0)
	clickDesign()
	MCS(1030, y, 200) ;designers on +
	while(!GetKeyState("end") && colorIsNotVisibleQuick(899, y, carFinishedWhite)) { ;wait for the white of "finished" to be seen
		checkForBuildingReplace(row)
		sleep, 100
		clickDesign()
		sleep, 200
	}
	Tooltip
}

checkForBuildingReplace(buildRow) {
global shouldBuildMain
global shouldBuildResearch
global shouldBuildDesign
global designHallDone
global researchDone
if(GetKeyState("end") || (designHallDone && researchDone))
	return
global blue
clickBuildings()
sleep, 200
if(shouldBuildMain && colorIsNotVisibleQuick(593, 441, blue)) { ;main office
	buildingButton(441)
} 
if(!designHallDone && colorIsNotVisibleQuick(593, 511, blue)) { ;design hall
	if(shouldBuildDesign)
		buildingButton(511)
	else
		designHallDone := 1
	handleAfterBuild(3, buildRow)
} 
if(!researchDone && colorIsNotVisibleQuick(593, 546, blue)) { ;research center
	if(shouldBuildResearch)
		buildingButton(546)
	else
		researchDone := 1
	handleAfterBuild(4, buildRow)
}
}

handleAfterBuild(row, buildRow) {
	global blue
	if(GetKeyState("end"))
		return
	if(row == 1) {
	} else if(row == 2) {
	} else if(row == 3) { ;design hall
		clickHireDesigner()
		if(buildRow >= 1) {
			clickDesign()
			y := 545 + buildRow * 35
			if(colorIsVisibleQuick(593, y, blue))
				MCS(1030, y, 50) ;add
		}
		clickBuildings()
	} else if(row == 4) { ;research center
		clickHireResearcher()
		chooseResearchBodyLooks()
		clickBuildings()
	}
}

waitForBuildingToFinishRebuildAndHandleStaff(row, willRebuild) {
	waitForBuilding(row, willRebuild)
	handleAfterBuild(row, -1)
}


waitForBuilding(row, willRebuild) {
	if(GetKeyState("end"))
		return
	global blue
	y := row * 35 + 405
	if(row == 1) {
		name = Main Office
	} else if(row == 2) {
		name = Production Hall
	} else if(row == 3) {
		name = Design Hall
	} else if(row == 4) {
		clickCarSouls()
		count := 0
		loop, 16 {
			if(GetKeyState("end"))
				return
			count++
			theMath := (count / 2)
			theString = Viewing car souls for %theMath% seconds `nOut of 8
			stableTooltip(theString, 0)
			sleep, 500
		}
		name = Research Center
	}
	clickBuildings()
	stringToSend = waiting for %name%
	stableTooltip(stringToSend, 1)
	waitForColorVisibleQuick(593, y, blue) ;progress bar color
	waitForColorNotVisibleQuick(593, y, blue)
	Tooltip
	if(willRebuild)
		buildingButton(y)
}

chooseResearchBodyLooks() {
	MCS(498, 737, 50) ;research
	MCS(1213, 477, 50) ;body
	clickMax()
	MCS(1120, 555, 50) ;looks
}

designTheCarPart1() { ;max speed/HP
	if(GetKeyState("end"))
		return
	clickDesign()
	clickMax()
	checkButtonOn()
	sleep, 100
	makeBrakes(1)
	makeTires(1)
	makeTank(1)
	makeEngine(1)
	makeCooler(1)
	makeElectronics(1)
	makeChassis(1)
	makeBody(1)
	MCS(1213, 478, 50) ;car
	bluePrintSpot(1)
	chooseLatestPartsWhileCreatingCar()
	MCS(1204, 777, 50) ;car create
	MCS(1018, 587, 1000) ;designers on +
}

designTheCarPart2() { ;fuel/mpg
	if(GetKeyState("end"))
		return
	clickDesign()
	clickMax()
	checkButtonOn()
	makeEngine(2)
	MCS(1213, 478, 50) ;car
	bluePrintSpot(2)
	chooseLatestPartsWhileCreatingCar()
	MCS(1204, 777, 50) ;car create
	MCS(1018, 587, 1000) ;designers on +
}

designTheCarPart3() { ;visual
	if(GetKeyState("end"))
		return
	clickDesign()
	clickMax()
	checkButtonOn()
	makeBrakes(2)
	makeTires(2)
	makeTank(2)
	makeEngine(3)
	makeCooler(2)
	makeElectronics(2)
	makeChassis(2)
	makeBody(2)
	MCS(1213, 478, 50) ;car
	bluePrintSpot(3)
	chooseLatestPartsWhileCreatingCar()
	MCS(1204, 777, 50) ;car create
	MCS(1018, 587, 1000) ;designers on +
}

checkButtonOn() {
	getOffButtonColor()
	global colorOfOffButton
	if(colorIsVisible(1115, 439, 1120, 442, colorOfOffButton)) {
		MCS(1129, 445, 50)
	}
}
checkAutoButtonOn() {
	getOffButtonColor()
	global colorOfOffButton
	if(colorIsVisible(1135, 555, 1154, 564, colorOfOffButton)) {
		MCS(1146, 560, 50)
	}
}

getOffButtonColor() {
global colorOfOffButton
colorOfOffButton := 0x373902
}

makeStart(tabX, row, name) {
if(GetKeyState("end"))
	return
	stringToSend = waiting for %name%
	stableTooltip(stringToSend, 1)
	sleep, 100
	MCS(tabX, 478, 50)
	bluePrintSpot(row)
	clearAll()
}

makeWrapUp(row) {
	global blue
	global constantBuildingCheck
	bluePrintCreate()
	if(GetKeyState("end"))
		return
	checkButtonOn()
	y := 545 + row * 35
	MCS(1043, y, 50) ;add
	waitForColorVisibleQuick(593, y, blue)
	checkForBuildingReplace(row)
	sleep, 100
	clickDesign()
	sleep, 200
	if(constantBuildingCheck) {
		while(colorIsVisibleQuick(593, y, blue)) {
			checkForBuildingReplace(row)
			sleep, 100
			clickDesign()
			sleep, 200
		}
	} else {
		waitForColorNotVisibleQuick(593, y, blue)
	}
	Tooltip
}

!5:: ;global testing
getDefaults()
check()
MsgBox, %blue%
return

check() {
global blue
MsgBox, %blue%
}


!6::
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
CoordMode, Tooltip, Screen
chooseLatestPartsWhileCreatingCar()

return

chooseLatestPartsWhileCreatingCar() {
	MCS(745, 558, 50) ;Chassis
	findLowestColor(1089, 521, 1089, 750, 0x202101) ;button color
	MCS(745, 594, 50) ;Tires
	findLowestColor(1089, 521, 1089, 750, 0x202101) ;button color
	MCS(746, 630, 50) ;Brakes
	findLowestColor(1089, 521, 1089, 750, 0x202101) ;button color
	MCS(746, 665, 50) ;Engine
	findLowestColor(1089, 521, 1089, 750, 0x202101) ;button color
	MCS(1082, 559, 50) ;Electronics
	findLowestColor(1089, 521, 1089, 750, 0x202101) ;button color
	MCS(1082, 596, 50) ;Cooler
	findLowestColor(1089, 521, 1089, 750, 0x202101) ;button color
	MCS(1083, 630, 50) ;Tanks
	findLowestColor(1089, 521, 1089, 750, 0x202101) ;button color
	MCS(1081, 664, 50) ;Body
	findLowestColor(1089, 521, 1089, 750, 0x202101) ;button color
}

findLowestColor(x, y, x2, y2, color) {
	if(GetKeyState("End"))
		return
	MouseMove, 888, 585, 1
	loopY := y2
	while(loopY > y1) {
		PixelSearch, Px, Py, %x%, %loopY%, %x2%, %loopY%, %color%, 3, Fast
		if (ErrorLevel) {
		
		} else {
			MCS(Px, Py, 50)
			return
		}
		loopY := loopY - 12
	}
}

makeTires(row) {
	global fastClickSpeed
	if(GetKeyState("End"))
		return
	makeStart(702, row, "tires")
	if(row == 1) {
		loop, 3
			MCS(928, 734, fastClickSpeed) ;HeatProduction
		loop, 17
			MCS(929, 705, fastClickSpeed) ;Grip
	} else {
		loop, 20
			MCS(921, 522, fastClickSpeed) ;Visual
	}
	makeWrapUp(row)
}
makeTank(row) {
	global fastClickSpeed
	if(GetKeyState("End"))
		return
	makeStart(1072, row, "tank")
	if(row == 1) {
		loop, 20
			MCS(918, 704, fastClickSpeed) ;Capacity
	} else {
		loop, 20
			MCS(929, 524, fastClickSpeed) ;Visual
	}
	makeWrapUp(row)
}
makeBrakes(row) {
	global fastClickSpeed
	if(GetKeyState("End"))
		return
	makeStart(776, row, "brakes")
	if(row == 1) {
		loop, 8
			MCS(930, 733, fastClickSpeed) ;heatProduction
		loop, 18
			MCS(932, 763, fastClickSpeed) ;Power
	} else {
		loop, 25
			MCS(929, 524, fastClickSpeed) ;Visual
	}
	makeWrapUp(row)
}
makeCooler(row) {
	global fastClickSpeed
	if(GetKeyState("End"))
		return
	makeStart(996, row, "cooler")
	if(row == 1) {
		loop, 25
			MCS(931, 704, fastClickSpeed) ;efficiency
	} else {
		loop, 20
			MCS(929, 524, fastClickSpeed) ;Visual
	}
	makeWrapUp(row)
}
makeBody(row) {
	global fastClickSpeed
	if(GetKeyState("End"))
		return
	makeStart(1141, row, "body")
	if(row == 1) {
		loop, 9
			MCS(924, 710, fastClickSpeed) ;capacity
		loop, 11
			MCS(927, 646, fastClickSpeed) ;weight
	} else {
		loop, 20
			MCS(929, 524, fastClickSpeed) ;Visual
	}
	makeWrapUp(row)
}

makeChassis(row) {
	global fastClickSpeed
	if(GetKeyState("End"))
		return
	makeStart(630, row, "chassis")
	if(row == 1) {
		loop, 3
			MCS(930, 734, fastClickSpeed) ;max weight
		loop, 17
			MCS(928, 675, fastClickSpeed) ;weight
	} else {
		loop, 20
			MCS(929, 524, fastClickSpeed) ;Visual
	}
	makeWrapUp(row)
}

makeEngine(row) {
	global fastClickSpeed
	if(GetKeyState("End"))
		return
	makeStart(847, row, "engine")
	if(row == 1) {
		MCS(918, 795, fastClickSpeed) ;cylinder
		loop, 7
			MCS(929, 762, fastClickSpeed) ;power
		loop, 16
			MCS(926, 704, fastClickSpeed) ;efficiency
	} else if(row == 3) {
		loop, 25
			MCS(929, 524, fastClickSpeed) ;Visual
	} else {
		loop, 25
			MCS(917, 701, fastClickSpeed) ;Efficiency
	}
	makeWrapUp(row)
}
makeElectronics(row) {
	global fastClickSpeed
	if(GetKeyState("End"))
		return
	makeStart(926, row, "electronics")
	if(row == 1) {
		loop, 20
			MCS(927, 705, fastClickSpeed) ;efficiency
	} else {
		loop, 20
			MCS(929, 524, fastClickSpeed) ;Visual
	}
	makeWrapUp(row)
}

bluePrintCreate() {
	MCS(1214, 801, 50)
}

bluePrintSpot(row) {
	if(row == 1)
		MCS(1112, 601, 150) ;blueprint
	if(row == 2)
		MCS(1119, 636, 150) ;blueprint row 2
	if(row == 3)
		MCS(1117, 670, 150) ;blueprint row 3
}


clearAll() {
	global fastClickSpeed
	sleep, 200
	loop, 2 {
		if(GetKeyState("end"))
			return
		MCS(880, 524, fastClickSpeed)
		MCS(880, 553, fastClickSpeed)
		MCS(880, 584, fastClickSpeed)
		MCS(880, 614, fastClickSpeed)
		MCS(880, 644, fastClickSpeed)
		MCS(880, 674, fastClickSpeed)
		MCS(880, 704, fastClickSpeed)
		MCS(880, 734, fastClickSpeed)
		MCS(880, 764, fastClickSpeed)
	}
	sleep, 50
}

clickHireWorker() {
clickStaff()
click10()
MCS(1187, 569, 50)
clickHireYes()
}
clickHireSalesman() {
clickStaff()
click10()
MCS(1185, 675, 50)
clickHireYes()
}
clickHireDesigner() {
clickStaff()
clickMax()
MCS(1192, 637, 50)
clickHireYes()
}
clickHireResearcher() {
clickStaff()
clickMax()
MCS(1187, 604, 50)
clickHireYes()
}
clickHireYes() {
MCS(845, 631, 50)
}

click10() {
MCS(1031, 413, 50)
}

rebirth() {
	clickInfo()
	MCS(706, 597, 250) ;time machine
	MCS(836, 645, 350) ;yes
}

import() {
	clickInfo()
	MCS(1004, 463, 250) ;import
	MCS(844, 592, 550) ;yes and it spits you at market
}

save() {
	if(GetKeyState("end"))
		return
	clickInfo()
	MCS(704, 460, 150) ;export
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
	MCS(201, 1061, 250) ;firefox
}


;---------------------------------------------
;/////////////////////////////////////////////
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;---------------------------------------------
clickInfo() {
MCS(500, 838, 50)
}
clickMax() {
MCS(1228, 412, 50)
}
clickStaff() {
MCS(500, 700, 50)
}
clickMarket() {
MCS(390, 701, 50) 
}
clickBuildings() {
MCS(390, 771, 50)
}
clickStatistics() {
MCS(497, 804, 50)
}
clickCarSouls() {
MCS(641, 352, 50)
}
clickProduction() {
MCS(494, 770, 50) 
}
clickDesign() {
MCS(388, 805, 50)
}
clickBalance() {
MCS(391, 842, 50)
}
clickGetLoan() {
clickBalance()
MCS(1029, 417, 50)
}
clickFirstCarWorker(isAdd) {
clickMax()
clickProduction()
if(isAdd)
MCS(1022, 516, 50)
else
MCS(1064, 511, 50)
}
clickFirstCarSalesman(isAdd) {
clickMax()
clickMarket()
if(isAdd)
MCS(909, 515, 50)
else
MCS(955, 517, 50)
}
buyAds(carRow, adRow) {
;TODO make this real
MCS(1135, 513, 50)
MCS(929, 561, 50)
}
autoPrice(num) {
clickMarket()
MCS(1043, 516, 50) ;sales price
MCS(1053, 558, 50) ;auto
checkAutoButtonOn()
MCS(968, 695, 50) ;OK
}
buildingButton(y) {
clickBuildings()
MCS(1200, y, 100)
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
MCS(844, 614, 50) 
}

getMaxLoan() {
clickGetLoan()
MCS(625, 655, 50)
Send 9999999999
MCS(888, 711, 50)
}
