

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

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



!5::
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
x := 0
sleep, 300
MouseGetPos, Px, Py
While(!GetKeyState("end")) {
MCS(Px, Py, 50)
MCS(401, 714, 50)
Tooltip, %x%
x++
}
return

!2::
While(!GetKeyState("end")) {
Click
sleep, 15
}
return

!3::
CoordMode, mouse, screen
CoordMode, pixel, screen
down4()
return


!4::
	CoordMode, mouse, screen
	CoordMode, pixel, screen
	sleep, 100
	startOver()
	Tooltip,
return

startOver() {
	import()
	killGods2()
	start()
}



start() {
	go := 0
	while(!GetKeyState("end")) {
		if (go) {
		}
		rebirth()
		trainTabAndMonsterStart()
		Create1()
		Monuments1()
		clickStats()
		DivinityGen1()
		go := 1
		if(GetKeyState("end"))
			return
		Monuments2()
		; save()
		; return
		Monuments3()
		Create2()
		shiftToCreating()
		save()
		killGods2()
	}
	ToolTip,
}

clickStats() {
	MCS(380, 482, 50)
}

save() {
	Tooltip, 
	if(GetKeyState("end"))
		return
	MCS(544, 488, 50) ;info
	MCS(399, 599, 50) ;export
	MCS(385, 488, 50) ;stats
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

rebirth() {
	MCS(466, 484, 250) ;rebirth tab
	MCS(463, 846, 250) ;rebirth button
	MCS(401, 710, 50) ;yes
	x := 0
	loop, 8 {
		x++
		if(x >= 2 && x < 4) {
			Tooltip, Ready...
		} else if(x >= 2 && x < 6) {
			Tooltip, ..Set..
		} else if(x >= 2) {
			Tooltip, ...Go!
		}
		sleep, 250
		if(GetKeyState("end")) 
			return
	}
	Tooltip,
}

trainTabAndMonsterStart()() {
	MCS(709, 352, 50) ;Train tab
	MCS(810, 399, 50) ;physical
	MCS(1011, 450, 50) ;100
	clickScrollBar(1241, 562)
	MCS(1070, 575, 50) ;+

	MCS(914, 396, 50) ;skills tab
	clickScrollBar(1241, 574)
	MCS(1070, 575, 50) ;+

	MCS(644, 393, 50) ;Fight tab
	MCS(832, 395, 50) ;monster tab
	clickScrollBar(1242, 561)
	MCS(1068, 577, 50) ;+

	MCS(385, 480, 50) ;stats
}

Create1() {
	if(GetKeyState("end"))
		return
	creatinggreen := 0x3C8D00
	putClonesOnFightBeforeBuy()
	prepareCreate()
	buyDivinity()
	removeClonesFromFight()
	killGods()
	prepareCreate()
	closeBuyIfOpen()
	checkAutoBuyCreateOn()
	MCS(888, 740, 50) ;to scroll
	down3()
	checkCreateClonesOff()
	MCS(1101, 668, 50) ;Tree
	waitForColorVisibleQuick(940, 661, creatinggreen)
	; MCS(1103, 669, 250) ;Animal
	minCreate()
	MCS(1106, 760, 400) ;Human
	; waitForColorVisibleQuick(943, 755, creatinggreen)
	MCS(1100, 820, 200) ;mountain
	; waitForColorVisibleQuick(943, 815, creatinggreen)
	checkCreateClonesOn()
	maxCreate()
}

Monuments1() {
	if(GetKeyState("end"))
		return
	MCS(646, 353, 50) ;build
	MCS(916, 395, 50) ;monuments
	MCS(826, 481, 50) ;stop at finish on
	MCS(1222, 448, 50) ;max
	clickScrollBar(1241, 563) ;scroll up
	MCS(1119, 574, 250) ;mighty statue
	MCS(1120, 654, 250) ;mystic garden
	MCS(1118, 740, 250) ;tomb of gods
	MCS(1120, 819, 250) ;everlasting lighthouse
	waitForColorNotVisibleQuick(655, 808, 0x623C24)
	clickScrollBar(1241, 888)
	MCS(1121, 672, 50) ;godly statue
	waitForColorVisibleQuick(655, 666, 0x623C24)
	waitForColorNotVisibleQuick(655, 666, 0x623C24)
	MCS(1118, 758, 50) ;Pyramids of power
	waitForColorVisibleQuick(655, 746, 0x623C24)
	waitForColorNotVisibleQuick(655, 746, 0x623C24)
	MCS(1119, 836, 50) ;temple of god
	waitForColorVisibleQuick(655, 826, 0x623C24)
	waitForColorNotVisibleQuick(655, 826, 0x623C24)

	MCS(826, 481, 50) ;stop at finish off
}

divinityGen1() {
	if(GetKeyState("end"))
		return
	MCS(1017, 396, 50) ;divinity tab
	MCS(1224, 451, 50) ;MAX
	MCS(1087, 578, 50) ;divinity gen +
	buyStone(-1)
	MCS(646, 353, 50) ;build
	MCS(1017, 396, 50) ;divinity tab
	; waitForColorVisibleQuick(668, 568, 0x623C24)
	waitForColorNotVisibleQuick(668, 568, 0x623C24)
	MCS(1090, 826, 50) ;Divinity gain +
	MCS(1064, 446, 50) ;1k
	loop, 14
		MCS(1090, 699, 100) ;worker +
	MCS(1222, 448, 50) ;max
	MCS(1090, 826, 50) ;Divinity gain +
	buyStone(-1)
	Tooltip, 
	buy3Divinity()
	MCS(1017, 396, 50) ;divinity tab
	MCS(1150, 829, 50) ;Divinity gain =
	shiftToMystic()
}

;sets up positioning
putClonesOnFightBeforeBuy() {
	MCS(646, 391, 50) ;click fight tab
	MCS(829, 395, 50) ;click monster tab
	clickScrollBar(1241, 562)
	down4()
	down4()
	MCS(1172, 689, 50)
	MCS(1174, 722, 50)
	MCS(1172, 760, 50)
	MCS(1173, 796, 50) ;gargoyle cap
}

;reliant on positioning
removeClonesFromFight() {
	MCS(646, 391, 50) ;click fight tab
	MCS(829, 395, 50) ;click monster tab
	MCS(1122, 722, 50)
	MCS(1122, 760, 50)
	MCS(1122, 796, 50) ;gargoyle -
}

; can start from any tab
Monuments2() {
	if(GetKeyState("end"))
	 return
	killGodsLess(3)

	prepareCreate3()
	checkAutoBuyCreateOff()
	MCS(1101, 670, 50) ;nation
	changeNumber2(794, 451, 823, 70) ;7, 286 is 10 upgrade
	; maxCreate()
	checkCreateClonesOff()
	checkAutoBuyCreateOn()
	waitForColorVisibleQuick(636, 538, 0x623C24)
	MCS(1193, 480, 50) ;auto buy off
	waitForColorVisibleQuick(939, 663, 0x3C8D00)
	checkCreateClonesOn()

	; buyStone(4)
	MysticGardenUpgrades()
}

MysticGardenUpgrades() {
	MCS(917, 395, 50) ;monuments tab
	clickScrollBar(1240, 562) ;scroll up
	MCS(1219, 448, 50) ; max
	MCS(1119, 692, 50)
	MCS(1119, 689, 3500)
	MCS(1191, 692, 50)
}

Monuments3() {
	
	firstLoopLength := 93
	secondLoopLength := 38

	if(GetKeyState("end"))
		return
	killGodsLess(4)
	MCS(649, 352, 50) ;build
	MCS(917, 395, 50) ;monuments tab
	x := 0
	MouseGetPos, Px, Py
	MCS(1119, 654, 500) ;mystic loop
	loop, %firstLoopLength% {
		if(GetKeyState("end"))
			return
		MouseGetPos, Px2, Py2
		; MsgBox, %Px% and %Py% and %Px2% and %Py2%
		if((Px != Px2) || (Py != Py2)) {
			MouseGetPos, Px, Py
			if(x < 20)
				Tooltip, Go ahead and move the mouse`nIt won't be as good as the autoclick`nWhen you stop moving the mouse`nIt will go back to clicking`nEnd key to stop the script%x% half seconds out of %firstLoopLength%
			else
				Tooltip
			sleep, 500
			x++
		} else {
			MCS(1119, 654, 500) ;mystic loop
			MouseGetPos, Px, Py
			x++
			Tooltip, %x% half seconds out of %firstLoopLength%
		}
	}
	x := 0
	loop, %secondLoopLength% {
		if(GetKeyState("end"))
			return
		Tooltip, %x% quarter seconds out of %secondLoopLength%
		MCS(1121, 576, 250) ;mighty loop
		x++
	}
	Tooltip,
	MCS(1190, 657, 50) ;mystic -
	MCS(1187, 575, 50) ;might -
	clickScrollBar(1242, 885)
	; waitMultipleForColorNotVisibleQuick(636, 685, 0x33742E)
	MCST(1120, 711, 2) ;godly statue upgrade +
	MCS(1118, 674, 50) ;godly statue +
}

waitMultipleForColorNotVisibleQuick(x, y, color) {
	while(!GetKeyState("end")) {
		colorIsVisibleQuick(x, y, color)
		waitForColorNotVisibleQuick(x, y, color)

	}
}

Create2() {
	if(GetKeyState("end"))
		return
	prepareCreate()
	green := 0x3C8D00
	MCS(1100, 668, 50) ;light
	checkCreateClonesOff()
	checkAutoBuyCreateOn()
	maxCreate()
	MCS(1100, 668, 50) ;light
	waitForColorVisibleQuick(1010, 663, green)
	MCS(1097, 697, 50) ;stone
	waitForColorVisibleQuick(1010, 693, green)
	MCS(1102, 729, 50) ;soil
	waitForColorVisibleQuick(1010, 723, green)
	MCS(1100, 759, 50) ;air
	waitForColorVisibleQuick(1010, 753, green)
	MCS(1102, 786, 50) ;water
	waitForColorVisibleQuick(1010, 783, green)
	MCS(1102, 818, 50) ;plant
	waitForColorVisibleQuick(1010, 813, green)
	MCS(1105, 850, 50) ;tree
	waitForColorVisibleQuick(1010, 843, green)
	MCS(1102, 877, 50) ;fish
	waitForColorVisibleQuick(1010, 873, green)
	MCS(868, 700, 50)
	down4()
	MCS(1100, 668, 50) ;animal
	waitForColorVisibleQuick(1010, 666, green)
	MCS(1100, 700, 50) ;human
	waitForColorVisibleQuick(1010, 696, green)
	MCS(1100, 760, 50) ;mountain
	waitForColorVisibleQuick(1010, 756, green)
	MCS(1100, 820, 50) ;village
	waitForColorVisibleQuick(1010, 816, green)
	MCST(1104, 727, 17) ;river
	; MCST(1104, 819, 8) ;village
	; createAmount("Continent", 6)
	sleep, 100
	checkCreateClonesOn()
}



;UB METHODS ================================
;UB METHODS ================================
;UB METHODS ================================
;UB METHODS ================================
;UB METHODS ================================
;UB METHODS ================================

createForUBs() {
	MCS(911, 396, 50) ;monuments
	MCS(1120, 654, 50) ;mystic garden
	shiftToCreating()
	killGods()
	MCS(647, 353, 50) ;build
	MCS(911, 396, 50) ;monuments
	MCS(1190, 657, 50) ;mystic -
	AddToPowerSurge()
	MCS(1014, 393, 50) ;divinity
	MCS(1150, 698, 50) ;remove worker clones
	createAmount("Continent", 8)
	createAmount("Weather", 10)
	createAmount("Sky", 14)
	createAmount("Night", 9)
	createAmount("Moon", 12)
	createAmount("Planet", 18)
	createAmount("Earthlike planet", 10)
}

createDrainPlanets() {
	Planet()
	MCS(1117, 586, 50) ;powersurge -
	MCS(911, 396, 50) ;monuments
	MCS(1120, 654, 50) ;mystic garden
	prepareCreate2()
	maxCreate()
	MCS(1104, 850, 50) ;town
	checkAutoBuyCreateOn()
	checkCreateClonesOff()
	sleep, 1000 ;build towns
	MCS(1104, 819, 50) ;village
	MCS(1016, 397, 50) ;divinity
	MCS(1163, 571, 150) ;add
	clickScrollBar(1240, 630) ;up
	MCS(840, 824, 50)
	down4()
	down4()
	MCS(1144, 657, 50) ;town div add
	MCS(1163, 571, 150) ;close
	prepareCreate2()
	MCST(1104, 819, 35) ;village
	checkCreateClonesOn()
	Planet()
	MCS(1096, 536, 50) ;v2
	changeNumber(977, 696, 7)
	MCS(1189, 701, 50) ;create poison planet
	x := 0
	blue := 0x623C24
	loop, 7 {
		Tooltip, %x%
		x++
		waitForColorVisibleQuick(655, 691, blue)
		waitForColorNotVisibleQuick(655, 691, blue)
	}

}

fightTheUB() {
	fightTheGodToDeathOrImport()
}


;HELPER METHODS

createAmount(type, num) {
if(type=="Continent") {
	prepareCreate3()
	changeNumber(805, 453, num)
	checkAutoBuyCreateOff()
	MCS(1099, 700, 50)
	checkCreateClonesOff()
}
else if(type=="Weather") {
	prepareCreate3()
	changeNumber(805, 453, num)
	checkAutoBuyCreateOff()
	MCS(1099, 728, 50)
	checkCreateClonesOff()
}
else if(type=="Sky") {
	prepareCreate3()
	changeNumber(805, 453, num)
	checkAutoBuyCreateOff()
	MCS(1099, 760, 50)
	checkCreateClonesOff()
}
else if(type=="Night") {
	prepareCreate3()
	changeNumber(805, 453, num)
	checkAutoBuyCreateOff()
	checkCreateClonesOff()
	MCS(1099, 790, 50) 
}
else if(type=="Moon") {
	prepareCreate3()
	changeNumber(805, 453, num)
	checkAutoBuyCreateOff()
	MCS(1099, 820, 50)
	checkCreateClonesOff()
}
else if(type=="Planet") {
	prepareCreate3()
	changeNumber(805, 453, num)
	checkAutoBuyCreateOff()
	MCS(1099, 850, 50) 
	checkCreateClonesOff()
}
else if(type="Earthlike" || type="Earthlike Planet" || type="Earthlike planet") {
	prepareCreate3()
	changeNumber(805, 453, num)
	checkAutoBuyCreateOff()
	MCS(1099, 880, 50)
	checkCreateClonesOff()
}

checkAutoBuyCreateOn()
	waitForColorVisibleQuick(638, 538, 0x5D3820)
	checkAutoBuyCreateOff()
	waitForCreateToFinish()
	checkCreateClonesOn()
}

checkCreateClonesOff() {
	checkCreateClones(0)
}

checkCreateClonesOn() {
	checkCreateClones(1)
}

checkCreateClones(num) {
	isPresent := colorIsVisibleQuick(1181, 444, 0x8F7A03)
	if(num == 1) {
		; pixel search to see if you need to turn it on
		; assume on create page already
		if(!isPresent)
			MCS(1192, 450, 250)
	} else {
		if(isPresent)
			MCS(1192, 450, 250)
	}
}

waitForCreateToFinish() {
	waitForColorVisible(679, 541, 687, 552, 0x6C462E)
	waitForColorNotVisible(679, 541, 687, 552, 0x6C462E)
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
			Tooltip, %z%
			if (z > 400) 
			 startOver()
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
		Tooltip, %z%
		if (z > 400) 
			startOver()
		}
	}
}

checkAutoBuyCreateOff() {
	clickAutoBuyCreate(0)
}

checkAutoBuyCreateOn() {
	clickAutoBuyCreate(1)
}

clickAutoBuyCreate(num) {
	isPresent := colorIsVisibleQuick(1181, 467, 0x8F7A03)
	if(num == 1) {
	; pixel search to see if you need to turn it on
	; assume on create page already
		if(!isPresent)
			MCS(1194, 477, 300)
	} else {
		if(isPresent)
			MCS(1194, 477, 50)
	}
}

isLowMana() {
	blue := 0x623C24
	return colorIsNotVisibleQuick(749, 476, blue)
}

isLowHealth() {
	return colorIsNotVisibleQuick(746, 444, 0x232357)
}

isChance65() {
	return colorIsVisible(1168, 569, 1171, 579, 0xE8E8E4)
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

minCreate() {
	clickScrollBar(632, 480)
}

maxCreate() {
	clickScrollBar(827, 481)
}

shiftToMystic() {
	if(GetKeyState("end"))
		return
	MCS(537, 393, 150) ;god power
	clickScrollBar(1251, 437)
	MCS(920, 648, 50)
	MCS(1117, 586, 50)
	MCS(537, 393, 150) ;god power
}

shiftToCreating() {
	if(GetKeyState("end"))
		return
	MCS(537, 393, 150) ;god power
	clickScrollBar(1251, 437)
	MCS(920, 586, 50)
	MCS(1117, 648, 50)
	MCS(537, 393, 150) ;god power
}

closeBuyIfOpen() {
	if(colorIsVisibleQuick(733, 729, 0xEDE808)) {
	MCS(1121, 734, 50)
	}
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

killGodsLess(num) {
	if(GetKeyState("end"))
		return
	MCS(646, 396, 50) ;fight tab
	MCS(957, 395, 50) ;Gods tab
	loop, %num%
	MCS(1086, 500, 25)
	sleep, 200
	MCS(1177, 494, 50) ;stop
}

killGods() {
	if(GetKeyState("end"))
		return
	MCS(646, 396, 50) ;fight tab
	MCS(957, 395, 50) ;Gods tab
	loop, 25
		MCS(1086, 500, 25)
	sleep, 200
	MCS(1177, 494, 50) ;stop
}
killGods2() {
	if(GetKeyState("end"))
		return
	MCS(646, 396, 50) ;fight tab
	MCS(957, 395, 50) ;Gods tab
	loop, 13
		MCS(1086, 500, 25)
	sleep, 200
	MCS(1177, 494, 50) ;stop
}

prepareCreate() {
	if(GetKeyState("end"))
		return
	MCS(648, 351, 50) ;build tab
	MCS(820, 395, 50) ;create tab
	clickScrollBar(1250, 626)
}

prepareCreate2() {
	if(GetKeyState("end"))
		return
	MCS(648, 351, 50) ;build tab
	MCS(820, 395, 50) ;create tab
	clickScrollBar(1250, 627)
	down4()
}
prepareCreate3() {
	if(GetKeyState("end"))
		return
	MCS(648, 351, 50) ;build tab
	MCS(820, 395, 50) ;create tab
	clickScrollBar(1250, 627)
	down4()
	down4()
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

buyDivinity() {
MCS(534, 396, 50) ;god power button
clickScrollBar(1250, 863)
MCS(1094, 770, 50) ;buy 1
MCS(403, 711, 50) ;ok
MCS(534, 396, 50) ;god power button
}
buy3Divinity() {
MCS(534, 396, 50) ;god power button
clickScrollBar(1250, 863)
MCS(1094, 802, 50) ;buy 3
MCS(403, 711, 50) ;ok
MCS(534, 396, 50) ;god power button
}
buy5Divinity() {
MCS(534, 396, 50) ;god power button
clickScrollBar(1250, 863)
MCS(1094, 829, 50) ;buy 5
MCS(403, 711, 50) ;ok
MCS(534, 396, 50) ;god power button
}

changeNumber2(x, y, x2, n) {
	if(GetKeyState("end"))
	return
	MouseClickDrag, left, %x%, %y%, %x2%, %y%
	sleep, 50
	Send %n%
	sleep, 100
}

changeNumber(x, y, n) {
	if(GetKeyState("end"))
	return
	MouseMove, %x%, %y%, 0
	sleep, 100
	Send {Click down}
	sleep, 15
	Send {Click up}
	sleep, 15
	Send {Click down}
	sleep, 15
	Send {Click up}
	sleep, 100
	Send %n%
	sleep, 150
}


buyStone(num) {
	prepareCreate()
	MCS(1182, 699, 50) ;stone buy
	if(num == -1) {
		MCS(680, 526, 50) ;1
		MCS(714, 640, 50) ;100 mil
	}
	if(num == 0) {
		MCS(728, 528, 50) ;2
		MCS(714, 640, 50) ;200 mil
	}
	if(num == 1) {
		MCS(728, 528, 50) ;2
		MCS(868, 641, 50) ;2 billion
		}
	if(num == 2) {
		MCS(680, 526, 50) ;1
		MCS(1015, 638, 50) ;10 billion
		}
	if(num == 4) {
		MCS(776, 522, 50) ;5
		MCS(868, 641, 50) ;5 billion
		}
	if(num==3) {
		MCS(776, 522, 50) ;5
		MCS(716, 638, 50) ;500 mil
	}
	MCS(1036, 739, 50) ;buy
}


AddToPowerSurge() {
	Planet()
	MCS(1221, 447, 50) ;MAX
	MCS(1069, 585, 50) ;powersurge +
}





; |-----------------------------|
; |                             |
; |            new attempt                 |
; |          at working                   |
; |           using ub                  |
; |                             |
; |    mostly ub commands below this                          |
; |-----------------------------|
Monuments() {
MCS(646, 353, 50) ;build
MCS(916, 395, 50) ;monuments
}
Planet() {
MCS(646, 353, 50) ;build
MCS(1116, 394, 50) ;planet
}






















;|----|
;|----||----|
;|----||----||----|
;|----||----||----||----|
;|----||----||----||----||----|
;|----||----||----||----||----||----|
;|----||----||----||----|
;|----||----||----|
;|----|
;|----|
;|----||----|
;|----||----||----|
;|----||----||----||----|
;|----||----||----||----||----|
;|----||----||----||----||----||----|
;|----||----||----||----|
;|----||----||----|
;|----|


fightTheGodToDeathOrImport() {

giveCount = -1
wt = 75
wt2 = 75
sleep, 500
totalWins := 0
totalLoss := 0
while(!GetKeyState("End")) {
import()
goToFight()
clickTransformationAura(wt)
 clickClairvoyance(wt)
 ; clickGodSpeed(wt)
 clickNextGive(giveCount++, wt) ; - | -
 clickMysticMode(wt)
 ; clickFocusedBreathing(wt)
 clickNextGive(giveCount++, wt) ; + | +
; clickNextGive(giveCount++, wt) ; -
clickTransformationAura(wt)
 clickNextGive(giveCount++, wt) ; - | -
 clickMysticMode(wt)
 clickNextGive(giveCount++, wt) ; + | -
 clickFocusedBreathing(wt)
; clickNextGive(giveCount++, wt) ; -
clickTransformationAura(wt)
  clickFocusedBreathing(wt)
  ; clickNextGive(giveCount++, wt) ; - | +
 clickMysticMode(wt)
 clickNextGive(giveCount++, wt) ; + | -
  ; clickFocusedBreathing(wt)
   clickNextGive(giveCount++, wt) ; -
clickTransformationAura(wt)
 clickNextGive(giveCount++, wt) ; - | -
 clickMysticMode(wt)
  ; clickFocusedBreathing(wt)
   clickNextGive(giveCount++, wt) ; + | +
  clickFocusedBreathing(wt)
; clickNextGive(giveCount++, wt) ; -
clickTransformationAura(wt)
 clickNextGive(giveCount++, wt) ; - | -
 clickMysticMode(wt)
 clickNextGive(giveCount++, wt) ;  | -
 clickElementalMani(wt)
clickTransformationAura(wt)
 clickNextGive(giveCount++, wt) ;  | -
 clickMysticMode(wt)
 clickNextGive(giveCount++, wt)
 clickIon(wt)
clickTransformationAura(wt)
 clickFocusedBreathing(wt)
 clickMysticMode(wt)
 clickElementalMani(wt)
 clickFocusedBreathing(wt)
 
result := endgame(wt2) ; 1 is you died
if(result == 1)
totalLoss++
if(result==0) {
totalWins++
; break
}
}
thePercent := totalWins / (totalWins+totalLoss)
MsgBox, end result %totalWins% wins and %totalLoss% losses, %thePercent% percent


}


import() {
MCS(549, 483, 50)
MCS(519, 597, 50)
MCS(405, 693, 500)
clickStats()
}

goToFight() {
MCS(648, 349, 50)
MCS(1121, 393, 50)
MCS(1097, 535, 50)
MCS(1219, 446, 50)
MCS(1068, 584, 50)
MCS(1191, 661, 50)
}

!6::
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
fightTheGodToDeathOrImport()
return

endgame(wt) {
battleDone := 0
battleCount := 29
isBattleDone := 0
clicksOnGodSpeed := 0
d := 0
while(!isBattleDone && d == 0 
&& !GetKeyState("end") 
&& !GetKeyState("home")) {
d := d + clickSpTransformationAura(wt)
if(d == 0) 
battleCount++
 d := d + clickNextFight(battleDone++, wt)
 if(d == 0) 
battleCount++
 d := d + clickNextFight(battleDone++, wt) ; clickSpMysticMode(wt)
 if(d == 0) 
battleCount++
 d := d + clickNextFight(battleDone++, wt)
 if(d == 0) 
battleCount++
 d := d + clickNextFight(battleDone++, wt)
 if(d == 0) 
battleCount++
}

;  MsgBox, %d%<--
buildIs := healthIsLow()
gg(battleCount, buildIs)
;  MsgBox, %buildIs% <--
return buildIs
}

gg(battleCount, healthVisible){
if(GetKeyState("End")) 
return
sleep, 100
; MCS(641, 1065, 300) ; notepad++
MCS(324, 1061, 800) ; notepad
PixelSearch, Px, Py, 987, 443, 1166, 456, 0x23
Send %battleCount% turns, %healthVisible% where 1=failed to kill {Enter}, %bossHealth% boss health
}

buildIsVisible() {
PixelSearch, Px, Py, 2428, 584, 2437, 585, 0x664129, 3, fast
if ErrorLevel {
return 0
}
else {
return 1
}
return 0
}

healthIsLow() {
PixelSearch, Px, Py, 353, 734, 364, 740, 0x1F1F1F, 3, fast
if ErrorLevel {
return 0
}
else {
return 1
}
return 0
}

checkIfDone() {
PixelSearch, Px, Py, 832, 439, 848, 454, 0xEDE908, 3, fast
if ErrorLevel {
return 0
}
else {
return 1
}
return 0
}

!8::
CoordMode, mouse, screen
CoordMode, pixel, screen
d := isChance65()
MsgBox, %d%
return

clickNextFight(battleDone, wt) {
if(checkIfDone()) 
return 1
; if low mana, use focus
if(isLowMana() || isLowHealth()) {
clickFocusedBreathing(wt)
return 0
}
; if 65%, use clair instead
if(!isChance65() && false) {
clickClairvoyance(wt)
return 0
}

modded := mod(battleDone, 2)
; MsgBox, %modded%, %battleDone%
; if(modded == 0) 
; clickGodSpeed(wt)
if(modded == 1) 
clickIon(wt)
; if(modded == 0 || modded == 4) 
; clickFocusedBreathing(wt)
if(modded == 0)
clickElementalMani(wt)
return 0
}

clickNextGive(giveCount, wt) {
; MsgBox, %giveCount%
if(mod(giveCount, 3) == 0) {
 clickGiveHeal(wt)
}
if(mod(giveCount, 3) != 0) {
 clickGiveHurt(wt)
}
}


clickSpTransformationAura(wt) {
 if(checkIfDone()) {
 return 1
}
 clickTransformationAura(wt)
return 0
}
clickSpMysticMode(wt){
 if(checkIfDone()) 
 return 1
 clickMysticMode(wt)
return 0
}






;|-------------------|
;|                   |
;|                   |
;|                   |
;|-------------------|
;locations on screen

clickTransformationAura(wt){
MCS(853, 771, wt)
}
clickMysticMode(wt){
MCS(695, 768, wt)
}
clickFocusedBreathing(wt){
MCS(1018, 804, wt)
}
clickElementalMani(wt){
MCS(1174, 770, wt)
}
clickIon(wt){
MCS(1013, 840, wt)
}
clickClairvoyance(wt){
MCS(856, 803, wt)
}
clickGodSpeed(wt){
MCS(1015, 773, wt)
}
clickGiveHurt(wt){
MCS(852, 877, wt)
}
clickGiveHeal(wt){
MCS(697, 875, wt)
}

