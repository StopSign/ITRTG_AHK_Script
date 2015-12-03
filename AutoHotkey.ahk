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
MCS(Px, Py, 100)
MCS(401, 714, 100)
Tooltip, %x%
x++
}
return

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


!4::
CoordMode, mouse, screen
CoordMode, pixel, screen
sleep, 100
clickStats()
go = 0
startOver()
return

startOver() {
MCS(549, 482, 100) ;info
MCS(523, 597, 200) ;import
MCS(401, 691, 400) ;yes
killGods2()
start()
}

start() {

while(!GetKeyState("end")) {
if (go) {
rebirth()
trainTabAndMonsterStart()
killGods()
Create1()
Monuments1()
clickStats()
DivinityGen1()
; save()
; return
; create2_5()
}
go = 1
if(GetKeyState("end"))
 return
Monuments2()
; save()
; return
go = 1
Monuments3()
go = 1
Create2()
shiftToCreating()
save()
killGods2()
}
ToolTip,
}

clickStats() {
MCS(380, 482, 100)
}

save() {
Tooltip, 
if(GetKeyState("end"))
 return
MCS(544, 488, 200)
MCS(399, 599, 300)
MCS(385, 488, 100)
MCS(326, 1061, 1000) ;notepad
Send {Ctrl down}
sleep, 100
Send {v down}
sleep, 100
Send {v up}
sleep, 100
Send {Ctrl up}
sleep, 200
if(GetKeyState("end"))
 return
Send {Enter}
sleep, 100
Send {Enter}
sleep, 100
MCS(201, 1061, 200) ;firefox
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
MCS(709, 352, 100) ;Train tab
MCS(810, 399, 100) ;physical
MCS(1011, 450, 50) ;100
clickScrollBar(1241, 562)
MCS(1070, 575, 50) ;+

MCS(914, 396, 100) ;skills tab
clickScrollBar(1241, 574)
MCS(1070, 575, 50) ;+

MCS(644, 393, 100) ;Fight tab
MCS(832, 395, 100) ;monster tab
clickScrollBar(1242, 561)
MCS(1068, 577, 50) ;+

MCS(385, 480, 150) ;stats
}

Create1() {
if(GetKeyState("end"))
 return
creatinggreen := 0x3C8D00
prepareCreate()
closeBuyIfOpen()
MCS(1104, 639, 50) ;sh clone
checkAutoBuyCreateOn()
MCS(1044, 740, 50)
down3()
sleep, 100
MCS(844, 749, 100)
changeNumber2(794, 451, 823, 15) ;10 upgrade
MCS(844, 749, 100)
sleep, 100
; changeNumber(807, 453, 15)
MCS(451, 810, 100)
buyDivinity()
sleep, 100
checkCreateClonesOff()
MCS(1101, 668, 50) ;Tree
waitForColorVisibleQuick(940, 661, creatinggreen)
; MCS(1103, 669, 250) ;Animal
MCS(1106, 760, 50) ;Human
waitForColorVisibleQuick(943, 755, creatinggreen)
MCS(1100, 820, 50) ;mountain
waitForColorVisibleQuick(943, 815, creatinggreen)
checkCreateClonesOn()
maxCreate()
}

Monuments1() {
if(GetKeyState("end"))
 return
MCS(646, 353, 100) ;build
MCS(916, 395, 100) ;monuments
MCS(826, 481, 50) ;stop at finish on
MCS(1222, 448, 50) ;max
clickScrollBar(1241, 563) ;scroll up
MCS(1119, 574, 150) ;mighty statue
MCS(1120, 654, 150) ;mystic garden
MCS(1118, 740, 150) ;tomb of gods
MCS(1120, 819, 150) ;everlasting lighthouse
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
MCS(1017, 396, 100) ;divinity tab
MCS(1224, 451, 100) ;MAX
MCS(1087, 578, 50) ;divinity gen +
buyStone(-1)
MCS(1017, 396, 100) ;divinity tab
; waitForColorVisibleQuick(668, 568, 0x623C24)
waitForColorNotVisibleQuick(668, 568, 0x623C24)
MCS(1090, 826, 100) ;Divinity gain +
MCS(1064, 446, 100) ;1k
loop, 14
MCS(1090, 699, 100) ;worker +
MCS(1224, 451, 100) ;MAX
safeSpot()
waitForColorVisibleQuick(730, 818, 0x377A32)
MCS(1090, 826, 100) ;Divinity gain +
buyStone(-1)
MCS(1017, 396, 100) ;divinity tab
waitForColorNotVisibleQuick(730, 818, 0x377A32)
MCS(1150, 830, 50) ;divinity gain -
MCS(1090, 860, 50) ;converting speed +
; buyStone(0)
; MCS(1017, 396, 100) ;divinity tab
waitForColorVisibleQuick(736, 851, 0x377A32)
waitForColorNotVisibleQuick(736, 851, 0x377A32)
MCS(1149, 860, 50) ;converting speed -
x := 1
loop, 1 {
MCS(1090, 826, 50) ;Divinity gain +
buyStone(0)
MCS(1017, 396, 150) ;divinity tab
waitForColorVisibleQuick(730, 818, 0x377A32)
; buyStone(3)
MCS(1017, 396, 100) ;divinity tab
MCS(1090, 826, 50) ;Divinity gain +
waitForColorNotVisibleQuick(730, 818, 0x377A32)
x++
Tooltip, %x%
}
x := 1
MCS(1150, 830, 50) ;divinity gain -
; MCS(1064, 446, 100) ;1k
; loop, 15
; MCS(1090, 699, 100) ;worker +
; MCS(1224, 451, 100) ;MAX
loop, 1 {
MCS(1090, 860, 50) ;converting speed +
buyStone(0)
MCS(1017, 396, 100) ;divinity tab
waitForColorVisibleQuick(713, 851, 0x2D6629)
buyStone(3)
MCS(1017, 396, 100) ;divinity tab
MCS(1090, 860, 50) ;converting speed +
waitForColorNotVisibleQuick(713, 851, 0x2D6629)
x++
Tooltip, %x%
}
MCS(1149, 860, 150) ;converting speed -
Tooltip, 
buyDivinity()
buyDivinity()
shiftToMystic()
}



Monuments2() {
if(GetKeyState("end"))
 return
killGodsLess(3)
prepareCreate()
checkCreateClonesOn()
checkAutoBuyCreateOn()
changeNumber2(794, 451, 823, 286) ;10 upgrade
MCS(888, 723, 50)
down3()
down3()
MCS(1106, 788, 100) ;nation after 6
checkCreateClonesOff()
sleep, 200
checkCreateClonesOn()
; maxCreate()
prepareCreate2
MCS(470, 809, 100)
checkCreateClonesOff()
checkAutoBuyCreateOn()
waitForColorVisibleQuick(636, 538, 0x623C24)
MCS(1193, 480, 50) ;auto buy off
waitForColorVisibleQuick(939, 663, 0x3C8D00)
checkCreateClonesOn()
; MCS(825, 482, 50) ;max cc
; buyStone(4)
MCS(917, 395, 100) ;monuments tab
clickScrollBar(1240, 562) ;scroll up
MysticGardenUpgrades()
; clickScrollBar(1240, 562) ;scroll up
; MCST(1119, 654, 15) ;mystic +
; MCST(1119, 654, 16) ;mystic +
; MCST(1119, 693, 7) ;mystic upgrade
; MCS(1120, 654, 100) ;Mystic Garden +
}

MysticGardenUpgrades() {
MCS(1119, 692, 100)
MCST(1119, 689, 3)
MCS(1191, 692, 100)
}

createForUBs() {
MCS(911, 396, 100) ;monuments
MCS(1120, 654, 100) ;mystic garden
shiftToCreating()
killGods()
MCS(647, 353, 100) ;build
MCS(911, 396, 100) ;monuments
MCS(1190, 657, 50) ;mystic -
AddToPowerSurge()
MCS(1014, 393, 100) ;divinity
MCS(1150, 698, 100) ;remove worker clones
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
MCS(1117, 586, 100) ;powersurge -
MCS(911, 396, 100) ;monuments
MCS(1120, 654, 100) ;mystic garden
prepareCreate2()
maxCreate()
MCS(1104, 850, 50) ;town
checkAutoBuyCreateOn()
checkCreateClonesOff()
sleep, 1000 ;build towns
MCS(1104, 819, 50) ;village
MCS(1016, 397, 100) ;divinity
MCS(1163, 571, 150) ;add
clickScrollBar(1240, 630) ;up
MCS(840, 824, 100)
down4()
down4()
MCS(1144, 657, 100) ;town div add
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



Monuments3() {
if(GetKeyState("end"))
 return
killGodsLess(4)
MCS(649, 352, 100) ;build
MCS(917, 395, 100) ;monuments tab
x := 0
loop, 55 {
Tooltip, %x%
MCS(1119, 654, 500) ;mystic loop
x++
}
; MCST(1119, 654, 15) ;mystic +
; MCST(1119, 654, 16) ;mystic +
; MCST(1119, 654, 17) ;mystic +
; MCS(1119, 654, 50) ;mystic +
x := 0
loop, 45 {
Tooltip, %x%
MCS(1121, 576, 250) ;mighty loop
x++
}
Tooltip, 
; MCST(1119, 654, 18) ;mystic +
; MCST(1119, 654, 15) ;mystic +
; create2_5()
MCS(1190, 657, 50) ;mystic -
; MCST(1121, 576, 15) ;mighty +
MCS(1187, 575, 100) ;might -
clickScrollBar(1242, 885)
MCST(1120, 711, 2) ;godly statue upgrade +
MCS(1118, 674, 50) ;godly statue +
}

create2_5() {
if(GetKeyState("end"))
 return
 ; Monuments()
prepareCreate2()
createAmount("Continent", 7)

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
MCS(868, 700, 100)
down4()
MCS(1100, 668, 50) ;animal
waitForColorVisibleQuick(1010, 666, green)
MCS(1100, 700, 50) ;human
waitForColorVisibleQuick(1010, 696, green)
MCS(1100, 760, 50) ;mountain
waitForColorVisibleQuick(1010, 756, green)
MCS(1100, 820, 50) ;village
waitForColorVisibleQuick(1010, 816, green)
MCST(1104, 727, 15) ;river
; MCST(1104, 819, 8) ;village
; createAmount("Continent", 6)
sleep, 100
checkCreateClonesOn()
}





;HELPER METHODS

createAmount(type, num) {
if(type=="Continent") {
	prepareCreate3()
	changeNumber(805, 453, num)
	checkAutoBuyCreateOff()
	MCS(1099, 700, 100)
	checkCreateClonesOff()
}
else if(type=="Weather") {
	prepareCreate3()
	changeNumber(805, 453, num)
	checkAutoBuyCreateOff()
	MCS(1099, 728, 100)
	checkCreateClonesOff()
}
else if(type=="Sky") {
	prepareCreate3()
	changeNumber(805, 453, num)
	checkAutoBuyCreateOff()
	MCS(1099, 760, 100)
	checkCreateClonesOff()
}
else if(type=="Night") {
	prepareCreate3()
	changeNumber(805, 453, num)
	checkAutoBuyCreateOff()
	checkCreateClonesOff()
	MCS(1099, 790, 100) 
}
else if(type=="Moon") {
	prepareCreate3()
	changeNumber(805, 453, num)
	checkAutoBuyCreateOff()
	MCS(1099, 820, 100)
	checkCreateClonesOff()
}
else if(type=="Planet") {
	prepareCreate3()
	changeNumber(805, 453, num)
	checkAutoBuyCreateOff()
	MCS(1099, 850, 100) 
	checkCreateClonesOff()
}
else if(type="Earthlike" || type="Earthlike Planet" || type="Earthlike planet") {
	prepareCreate3()
	changeNumber(805, 453, num)
	checkAutoBuyCreateOff()
	MCS(1099, 880, 100)
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
	isPresent := colorIsPresentQuick(1181, 444, 0x8F7A03)
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
		sleep, 25
		return
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
	isPresent := colorIsPresentQuick(1181, 467, 0x8F7A03)
	if(num == 1) {
	; pixel search to see if you need to turn it on
	; assume on create page already
		if(!isPresent)
			MCS(1194, 477, 300)
	} else {
		if(isPresent)
			MCS(1194, 477, 100)
	}
}

^1::
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
waitForColorVisibleQuick(1010, 693, 0x3C8D00)
MsgBox, done
return

!0::
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
prepareCreate()
checkAutoBuyCreateOn()
changeNumber2(794, 451, 823, 286) ;10 upgrade
MCS(888, 723, 50)
down3()
down3()
MCS(1106, 788, 100)
checkCreateClonesOff()
sleep, 200
checkCreateClonesOn()
; waitForColorVisibleQuick(655, 808, 0x623C24)
; waitForColorNotVisibleQuick(655, 808, 0x623C24)
; MsgBox, done
return

colorIsPresentQuick(x, y, color) {
safeSpot()
x2 := x + 15
y2 := y + 15
PixelSearch, Px, Py, %x%, %y%, %x2%, %y2%, %color%, 3, Fast
if ErrorLevel {
return 0
}
else {
return 1
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
MCS(537, 393, 150) ;god power
clickScrollBar(1251, 437)
MCS(920, 648, 100)
MCS(1117, 586, 100)
MCS(537, 393, 150) ;god power
}

shiftToCreating() {
MCS(537, 393, 150) ;god power
clickScrollBar(1251, 437)
MCS(920, 586, 100)
MCS(1117, 648, 100)
MCS(537, 393, 150) ;god power
}

closeBuyIfOpen() {
if(colorIsPresentQuick(733, 729, 0xEDE808)) {
MCS(1121, 734, 100)
}
}

clickScrollBar(x, y) {
	if(GetKeyState("end"))
	return
	MouseMove, %x%, %y%, 0
	loop, 4{
		Click
		sleep, 50
	}
}

killGodsLess(num) {
MCS(646, 396, 100) ;fight tab
MCS(957, 395, 100) ;Gods tab
loop, %num%
MCS(1086, 500, 25)
sleep, 200
MCS(1177, 494, 50) ;stop
}

killGods() {
MCS(646, 396, 100) ;fight tab
MCS(957, 395, 100) ;Gods tab
loop, 25
MCS(1086, 500, 25)
sleep, 400
MCS(1177, 494, 50) ;stop
}
killGods2() {
MCS(646, 396, 100) ;fight tab
MCS(957, 395, 100) ;Gods tab
loop, 13
MCS(1086, 500, 25)
sleep, 500
}

prepareCreate() {
if(GetKeyState("end"))
return
MCS(648, 351, 100) ;build tab
MCS(820, 395, 100) ;create tab
clickScrollBar(1250, 626)

}

prepareCreate2() {
if(GetKeyState("end"))
return
MCS(648, 351, 100) ;build tab
MCS(820, 395, 100) ;create tab
clickScrollBar(1250, 627)
down4()
}
prepareCreate3() {
if(GetKeyState("end"))
return
MCS(648, 351, 100) ;build tab
MCS(820, 395, 100) ;create tab
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
MCS(534, 396, 100) ;god power button
clickScrollBar(1250, 863)
MCS(1094, 770, 100) ;buy 1
MCS(403, 711, 100) ;ok
MCS(534, 396, 100) ;god power button
}
buy3Divinity() {
MCS(534, 396, 100) ;god power button
clickScrollBar(1250, 863)
MCS(1094, 802, 100) ;buy 3
MCS(403, 711, 100) ;ok
MCS(534, 396, 100) ;god power button
}
buy5Divinity() {
MCS(534, 396, 100) ;god power button
clickScrollBar(1250, 863)
MCS(1094, 829, 100) ;buy 5
MCS(403, 711, 100) ;ok
MCS(534, 396, 100) ;god power button
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
MCS(1182, 699, 150) ;stone buy
if(num == -1) {
	MCS(680, 526, 150) ;1
	MCS(714, 640, 100) ;100 mil
}
if(num == 0) {
	MCS(728, 528, 100) ;2
	MCS(714, 640, 100) ;200 mil
}
if(num == 1) {
	MCS(728, 528, 100) ;2
	MCS(868, 641, 100) ;2 billion
	}
if(num == 2) {
	MCS(680, 526, 150) ;1
	MCS(1015, 638, 100) ;10 billion
	}
if(num == 4) {
	MCS(776, 522, 150) ;5
	MCS(868, 641, 100) ;5 billion
	}
if(num==3) {
	MCS(776, 522, 150) ;5
	MCS(716, 638, 100) ;500 mil
}
MCS(1036, 739, 150) ;buy
}


AddToPowerSurge() {
Planet()
MCS(1221, 447, 100) ;MAX
MCS(1069, 585, 100) ;powersurge +
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
MCS(646, 353, 100) ;build
MCS(916, 395, 100) ;monuments
}
Planet() {
MCS(646, 353, 100) ;build
MCS(1116, 394, 100) ;planet
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

!7::
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
MsgBox, here
b := healthIsLow() ; 
MsgBox, here2
c := checkIfDone() ; healthIsLow()
MsgBox, %b% <-  --> %c%
return


import() {
MCS(549, 483, 100)
MCS(519, 597, 100)
MCS(405, 693, 500)
clickStats()
}

goToFight() {
MCS(648, 349, 100)
MCS(1121, 393, 100)
MCS(1097, 535, 100)
MCS(1219, 446, 100)
MCS(1068, 584, 100)
MCS(1191, 661, 100)
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