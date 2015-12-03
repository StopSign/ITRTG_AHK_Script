
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
            break
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
MCS(Px, Py, 200)
MCS(401, 714, 200)
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
import()
start()
return

startOver() {
import()
MCS(549, 447, 200) ;info
MCS(519, 560, 200) ;import
MCS(422, 655, 400) ;yes
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
killGods()
Create1()
Monuments1()
DivinityGen1()
; save()
; return
go = 1
clickStats()
killGods2()
Monuments2()
clickStats()
Monuments3()
Create2()
shiftToCreating()
save()
killGods2()
}
ToolTip,
}

clickStats() {
MCS(386, 446, 200)
}

save() {
Tooltip, 
if(GetKeyState("end"))
 return
clickInfo()
clickExport()
clickStats()
clickNotepad()
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
clickFireFox()
}

clickInfo() {
MCS(558, 447, 200)
}
clickExport() {
MCS(406, 555, 200)
}

clickFireFox() {
MCS(206, 1059, 200) 
}
clickNotepad() {
MCS(640, 1059, 200)
}



rebirth() {
MCS(472, 442, 250) ;rebirth tab
MCS(465, 810, 250) ;rebirth button
MCS(409, 667, 2000) ;yes
}

clickTrainScrollBarUp() {
clickScrollBar(1240, 523)
}

clickMonsterScrollBarUp() {
clickScrollBar(1241, 523)
}

clickTrainPlus() {
MCS(1070, 541, 200)
}

trainTabAndMonsterStart() {
clickTrainTab()
clickPhysicalTab()
MCS(1014, 410, 150) ;100
clickTrainScrollBarUp()
clickTrainPlus()
clickSkillsTab()
clickTrainPlus()
clickFightTab()
clickMonsterTab()
clickMonsterScrollBarUp()
clickScrollBar(1242, 561)
clickTrainPlus()
clickStats()
}

Create1() {
if(GetKeyState("end"))
 return
creatinggreen := 0x3C8D00
prepareCreate()
closeBuyIfOpen()
clickShadowClone()
checkAutoBuyCreateOn()
clickFocus()
down3()
changeNumber2(792, 414, 822, 15)
clickFocus()
buyDivinity()
sleep, 100
checkCreateClonesOff()

MCS(1105, 629, 150) ;Tree
waitForColorVisibleQuick(940, 625, creatinggreen)
MCS(1106, 720, 150) ;Human
waitForColorVisibleQuick(939, 717, creatinggreen)
MCS(1100, 779, 150) ;mountain
waitForColorVisibleQuick(939, 775, creatinggreen)
checkCreateClonesOn()
maxCreate()
}

clickShadowClone() {
MCS(1106, 602, 200)
}

clickFocus() {
MCS(898, 625, 200)
}

clickStopAfterFinish() {
MCS(826, 446, 200)
}

clickMax() {
MCS(1218, 410, 200)
}

clickMonumentsScrollUp() {
clickScrollBar(1241, 523)
}
clickMonumentsScrollDown() {
clickScrollBar(1241, 848)
}
clickMightyStatue(isAdd) {
if(isAdd)
MCS(1117, 537, 200)
else
MCS(1187, 538, 200)
}
clickMysticGarden(isAdd) {
if(isAdd)
MCS(1119, 621, 200)
else
MCS(1190, 621, 200)
}
clickMysticGardenUpgrade(isAdd) {
if(isAdd)
MCS(1119, 653, 200)
else
MCS(1190, 653, 200)
}
clickGodlyStatue(isAdd) {
if(isAdd)
MCS(1120, 637, 200)
else
MCS(1187, 638, 200)
}
clickGodlyStatueUpgrade(isAdd) {
if(isAdd)
MCS(1120, 672, 200)
else
MCS(1191, 672, 200)
}

Monuments1() {
if(GetKeyState("end"))
 return
clickBuildTab()
clickMonumentsTab()
clickStopAfterFinish()
clickMax()
clickMonumentsScrollUp()
clickMightyStatue(1)
clickMightyStatue(1)
blue := 0x623C24
waitForColorNotVisibleQuick(631, 530, blue)
clickMysticGarden(1)
clickMysticGarden(1)
waitForColorNotVisibleQuick(631, 613, blue)
MCS(1120, 696, 400) ;tomb of gods
MCS(1120, 696, 400) ;tomb of gods
waitForColorNotVisibleQuick(631, 690, blue)
MCS(1120, 777, 150) ;everlasting lighthouse
MCS(1120, 777, 150) ;everlasting lighthouse
waitForColorVisibleQuick(718, 769, blue)
MCS(1120, 777, 150) ;everlasting lighthouse
MCS(1120, 777, 150) ;everlasting lighthouse
waitForColorNotVisibleQuick(718, 769, blue)
clickMonumentsScrollDown()
clickGodlyStatue(1)
clickGodlyStatue(1)
waitForColorVisibleQuick(717, 629, blue)
clickGodlyStatue(1)
clickGodlyStatue(1)
waitForColorNotVisibleQuick(717, 629, blue)
MCS(1119, 717, 150) ;Pyramids of power
MCS(1119, 717, 150) ;Pyramids of power
waitForColorVisibleQuick(720, 709, blue)
MCS(1119, 717, 150) ;Pyramids of power
MCS(1119, 717, 150) ;Pyramids of power
waitForColorNotVisibleQuick(720, 709, blue)
MCS(1119, 798, 150) ;temple of god
MCS(1119, 798, 150) ;temple of god
waitForColorVisibleQuick(723, 789, blue)
MCS(1119, 798, 150) ;temple of god
MCS(1119, 798, 150) ;temple of god
waitForColorNotVisibleQuick(723, 789, blue)

MCS(826, 481, 150) ;stop at finish off
}

clickDivinityGenAdd() {
MCS(1088, 540, 200)
}

clickDivinityGain(isAdd) {
if(isAdd) {
MCS(1090, 793, 200)
}
else
MCS(1147, 791, 200)
}

clickConvertingSpeed(isAdd) {
if(isAdd) 
MCS(1089, 823, 200)
else
MCS(1150, 824, 200)
}

divinityGen1() {
if(GetKeyState("end"))
 return
clickDivinityTab()
clickMax()
clickDivinityGenAdd()
sleepT(2)
blue := 0x623C24
waitForColorNotVisibleQuick(639, 531, blue)
MCS(1061, 409, 200) ;1000
MCS(1061, 409, 200) ;1000
buyStone(-1)
clickDivinityTab()
clickDivinityGain(1)
loop, 7
MCS(1090, 663, 500) ;worker +
clickMax()
clickDivinityTab()
clickDivinityGain(0)
buyStone(-1)
Tooltip, 
buy3Divinity()
}

Monuments2() {
if(GetKeyState("end"))
 return
prepareCreate3()
MCS(1101, 630, 200) ;nation
; changeNumber2(790, 416, 823, 286) 
 maxCreate()
MCS(470, 809, 200)
checkCreateClonesOff()
checkAutoBuyCreateOn()
blue := 0x623C24
creatinggreen := 0x3C8D00
waitForColorVisibleQuick(639, 501, blue)
checkAutoBuyCreateOff()
waitForColorVisibleQuick(1008, 624, creatinggreen)
checkCreateClonesOn()
; MCS(825, 482, 150) ;max cc
buyStone(4)
clickMonumentsTab()
clickMonumentsScrollUp()
clickStopAfterFinish()
MysticGardenUpgrades()
clickMysticGarden(1)
sleepT(15)
clickMysticGarden(1)
sleepT(15)
clickMysticGarden(1)
sleepT(15)
clickMysticGarden(0)
}

sleepT(num) {
x := 0
loop, %num% {
if(GetKeyState("End"))
return
if(GetKeyState("Home")) {
Tooltip, Continuing...
sleep, 1000
return
}
Tooltip, %x% seconds out of %num%
x++
sleep, 1000
}
Tooltip,
}

MysticGardenUpgrades() {
clickMax()
clickMysticGardenUpgrade(1)
sleepT(17)
clickMysticGardenUpgrade(1)
sleepT(0)
shiftToMystic()
clickMysticGardenUpgrade(0)
}

Monuments3() {
if(GetKeyState("end"))
 return
clickBuildTab()
clickMonumentsTab()
clickMonumentsScrollDown()
clickGodlyStatue(1)
sleepT(20)
clickGodlyStatue(0)
clickGodlyStatueUpgrade(1)
sleepT(6)
clickGodlyStatueUpgrade(1)
sleepT(0)
clickGodlyStatueUpgrade(0)
clickGodlyStatue(1)
sleepT(20)
clickGodlyStatue(0)
clickMonumentsScrollUp()
clickMysticGarden(1)
sleepT(20)
clickMysticGarden(1)
sleepT(20)
clickMysticGarden(1)
sleepT(20)
clickMysticGarden(1)
sleepT(20)
clickMysticGarden(1)
sleepT(20)
clickMysticGarden(1)
sleepT(20)
clickMysticGarden(1)
sleepT(20)
clickMysticGarden(1)
sleepT(20)
clickMysticGarden(0)
clickMonumentsScrollDown()
clickGodlyStatue(1)
}

Create2() {
if(GetKeyState("end"))
 return
prepareCreate()
green := 0x3C8D00
achieveX := 1009
MCS(1100, 632, 150) ;light
checkCreateClonesOff()
checkAutoBuyCreateOn()
maxCreate()
waitForColorVisibleQuick(achieveX, 627, green)
MCS(1097, 662, 150) ;stone
MCS(1097, 662, 150) ;stone
waitForColorVisibleQuick(achieveX, 657, green)
MCS(1102, 692, 150) ;soil
MCS(1102, 692, 150) ;soil
waitForColorVisibleQuick(achieveX, 687, green)
MCS(1100, 722, 150) ;air
MCS(1100, 722, 150) ;air
waitForColorVisibleQuick(achieveX, 717, green)
MCS(1102, 752, 150) ;water
MCS(1102, 752, 150) ;water
waitForColorVisibleQuick(achieveX, 747, green)
MCS(1102, 782, 150) ;plant
MCS(1102, 782, 150) ;plant
waitForColorVisibleQuick(achieveX, 777, green)
MCS(1105, 812, 150) ;tree
MCS(1105, 812, 150) ;tree
waitForColorVisibleQuick(achieveX, 807, green)
MCS(1102, 842, 150) ;fish
MCS(1102, 842, 150) ;fish
waitForColorVisibleQuick(achieveX, 837, green)
MCS(905, 759, 200)
down4()
MCS(1100, 629, 150) ;animal
MCS(1100, 629, 150) ;animal
waitForColorVisibleQuick(achieveX, 624, green)
MCS(1100, 659, 150) ;human
MCS(1100, 659, 150) ;human
waitForColorVisibleQuick(achieveX, 654, green)
MCS(1100, 719, 150) ;mountain
MCS(1100, 719, 150) ;mountain
waitForColorVisibleQuick(achieveX, 714, green)
MCS(1100, 779, 150) ;village
MCS(1100, 779, 150) ;village
waitForColorVisibleQuick(achieveX, 774, green)
MCS(1104, 689, 200) ;river
waitForColorVisibleQuick(achieveX, 684, green)
MCS(1100, 779, 150) ;village
sleepT(20)
MCS(1100, 779, 150) ;village
sleepT(20)
MCS(1100, 779, 150) ;village
sleepT(20)
MCS(1100, 779, 150) ;village
sleepT(20)
MCS(1100, 779, 150) ;village
sleepT(20)
MCS(1100, 779, 150) ;village
sleepT(20)
MCS(1100, 779, 150) ;village
sleepT(16)
sleep, 100
checkCreateClonesOn()
}





;HELPER METHODS


clickCreateLight() {
MCS(1109, 627, 200)
}
clickCreateStone() {
MCS(1104, 659, 200)
}
clickCreateSoil() {
MCS(1104, 690, 200)
}
clickCreateAir() {
MCS(1104, 720, 200)
}
clickCreateWater() {
MCS(1104, 750, 200)
}
clickCreatePlant() {
MCS(1104, 780, 200)
}
clickCreateTree() {
MCS(1104, 810, 200)
}
clickCreateFish() {
MCS(1104, 840, 200)
}
createAmount(type, num) {
MsgBox, incomplete
if(type=="Continent") {
    prepareCreate3()
    changeNumber(805, 453, num)
    checkAutoBuyCreateOff()
    MCS(1099, 700, 200)
    checkCreateClonesOff()
}
else if(type=="Weather") {
    prepareCreate3()
    changeNumber(805, 453, num)
    checkAutoBuyCreateOff()
    MCS(1099, 728, 200)
    checkCreateClonesOff()
}
else if(type=="Sky") {
    prepareCreate3()
    changeNumber(805, 453, num)
    checkAutoBuyCreateOff()
    MCS(1099, 760, 200)
    checkCreateClonesOff()
}
else if(type=="Night") {
    prepareCreate3()
    changeNumber(805, 453, num)
    checkAutoBuyCreateOff()
    checkCreateClonesOff()
    MCS(1099, 790, 200) 
}
else if(type=="Moon") {
    prepareCreate3()
    changeNumber(805, 453, num)
    checkAutoBuyCreateOff()
    MCS(1099, 820, 200)
    checkCreateClonesOff()
}
else if(type=="Planet") {
    prepareCreate3()
    changeNumber(805, 453, num)
    checkAutoBuyCreateOff()
    MCS(1099, 850, 200) 
    checkCreateClonesOff()
}
else if(type="Earthlike" || type="Earthlike Planet" || type="Earthlike planet") {
    prepareCreate3()
    changeNumber(805, 453, num)
    checkAutoBuyCreateOff()
    MCS(1099, 880, 200)
    checkCreateClonesOff()
}

checkAutoBuyCreateOn()
waitForColorVisibleQuick(638, 538, 0x5D3820)
checkAutoBuyCreateOff()
waitForCreateToFinish()
checkCreateClonesOn()
}

waitForCreateToFinish() {
    waitForColorVisible(630, 499, 637, 513, 0x243C62)
    waitForColorNotVisible(630, 499, 637, 513, 0x243C62)
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
    if (z > 1000) 
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

!0::
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
waitForColorNotVisible(538, 557, 538, 557, 0x000000)
return

waitForColorNotVisible(x, y, x2, y2, color) {
safeSpot()
z := 0
while(!GetKeyState("End")) {
    PixelSearch, Px, Py, %x%, %y%, %x2%, %y2%, %color%, 3, Fast
    if ErrorLevel {
        ; sleep, 25
        return
    }
    else {
    ; sleep, 10
    z++
    Tooltip, %z%
    ; if (z > 1000) 
    ; startOver()
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
    isPresent := colorIsPresentQuick(1182, 432, 0x97845B)
    if(num == 1) {
    ; pixel search to see if you need to turn it on
    ; assume on create page already
        if(!isPresent)
            MCS(1190, 441, 300)
    } else {
        if(isPresent)
            MCS(1190, 441, 200)
    }
}

checkCreateClonesOff() {
checkCreateClones(0)
}

checkCreateClonesOn() {
checkCreateClones(1)
}

checkCreateClones(num) {
    isPresent := colorIsPresentQuick(1191, 406, 0x97845B)
    if(num == 1) {
    ; pixel search to see if you need to turn it on
    ; assume on create page already
        if(!isPresent)
            MCS(1198, 415, 250)
    } else {
        if(isPresent)
            MCS(1198, 415, 250)
    }
}


colorIsPresentQuick(x, y, color) {
; safeSpot()
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
MouseMove, 172, 862, 0
sleep, 10
}

minCreate() {
MCS(632, 444, 200)
}

maxCreate() {
MCS(827, 444, 200)
}

clickGodPowerScrollUp() {
clickScrollBar(1250, 399)
}

clickUnusedMysticBottom() {
MCS(920, 550, 200)
}

clickUnusedMysticTop() {
MCS(1114, 549, 200)
}

clickUnusedCreatingBottom() {
MCS(922, 610, 200)
}

clickUnusedCreatingTop() {
MCS(1113, 610, 200)
}

shiftToMystic() {
clickGodPowerButton()
clickGodPowerScrollUp()
clickUnusedCreatingBottom()
clickUnusedMysticTop()
clickGodPowerButton()
}

shiftToCreating() {
clickGodPowerButton()
clickGodPowerScrollUp()
clickUnusedMysticBottom()
clickUnusedCreatingTop()
clickGodPowerButton()
}

closeBuyIfOpen() {
if(colorIsPresentQuick(742, 636, 0xFCFCFB)) {
clickBuyCancel()
}
}

clickBuyCancel() {
MCS(1117, 697, 200)
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

clickFightTab() {
MCS(648, 355, 200) ;fight
}

clickGodsTab() {
MCS(969, 353, 200) ;gods tab
}

clickGodFightStop() {
MCS(1176, 456, 200) ;stop
}


killGodsLess(num) {
clickFightTab()
clickGodsTab()
loop, %num%
MCS(1085, 459, 25) ;click the fight on god
sleep, 200
clickGodFightStop()
}

killGods() {
clickFightTab()
clickGodsTab()
loop, 25
MCS(1085, 459, 25) ;click the fight on god
sleep, 400
clickGodFightStop()
}

killGods2() {
clickFightTab()
clickGodsTab()
loop, 13
MCS(1085, 459, 25) ;click the fight on god
sleep, 500
}

clickBuildTab() {
MCS(652, 315, 200)
}

clickCreateTab() {
MCS(818, 358, 200)
}

clickMonumentsTab() {
MCS(910, 361, 200)
}

clickDivinityTab() {
MCS(1019, 360, 200)
}

clickTrainTab() {
MCS(714, 315, 200)
}

clickSkillsTab() {
MCS(967, 358, 200)
}

clickPhysicalTab() {
MCS(827, 358, 200)
}

clickMonsterTab() {
MCS(833, 363, 200) 
}

clickCreateScrollUp() {
clickScrollBar(1251, 590)
}

prepareCreate() {
if(GetKeyState("end"))
return
clickBuildTab()
clickCreateTab()
clickCreateScrollUp()

}

prepareCreate2() {
if(GetKeyState("end"))
return
clickBuildTab()
clickCreateTab()
clickCreateScrollUp()
down4()
}
prepareCreate3() {
if(GetKeyState("end"))
return
clickBuildTab()
clickCreateTab()
clickCreateScrollUp()
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

clickGodPowerButton() {
MCS(533, 355, 200)
}

clickGodPowerScrollDown() {
clickScrollBar(1251, 824)
}

clickBuyOne() {
MCS(1088, 730, 200)
}

clickBuyThree() {
MCS(1091, 757, 200)
}

clickBuyFive() {
MCS(1083, 791, 200)
}

clickBuyDivinityYes() {
MCS(400, 677, 200)
}

buyDivinity() {
clickGodPowerButton()
clickGodPowerScrollDown()
clickBuyOne()
clickBuyDivinityYes()
clickGodPowerButton()
}
buy3Divinity() {
clickGodPowerButton()
clickGodPowerScrollDown()
clickBuyThree()
clickBuyDivinityYes()
clickGodPowerButton()
}
buy5Divinity() {
clickGodPowerButton()
clickGodPowerScrollDown()
clickBuyfive()
clickBuyDivinityYes()
clickGodPowerButton()
}

changeNumber2(x, y, x2, n) {
    if(GetKeyState("end"))
    return
    MouseMove, %x%, %y%, 0
    sleep, 100
    MouseClickDrag, left, %x%, %y%, %x2%, %y%
    sleep, 100
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

clickStoneBuy() {
MCS(1181, 659, 200)
}

clickBuy1Tab() {
MCS(677, 485, 200)
}

clickBuy2Tab() {
MCS(722, 481, 200)
}

clickBuy5Tab() {
MCS(777, 494, 200)
}

clickBuy25Tab() {
MCS(813, 481, 200)
}

clickBuy75Tab() {
MCS(879, 486, 200)
}

clickBuyButton() {
MCS(1038, 701, 200) 
}

clickGrid(x, y, rownum, colnum, rowheight, colwidth) {
x2 := x + rownum * rowheight
y2 := y + colnum * colwidth
MCS(x2, y2, 200)
}

buyStone(num) {
prepareCreate()
clickStoneBuy()
if(num == -1) {
    clickBuy1Tab()
    MCS(723, 600, 200) ;100 mil
}
if(num == 0) {
    clickBuy2Tab()
    MCS(723, 600, 200) ;200 mil
}
if(num == 1) {
    clickBuy2Tab()
    MCS(867, 600, 200) ;2 billion
    }
if(num == 2) {
    clickBuy1Tab()
    MCS(1010, 600, 200) ;10 billion
    }
if(num == 4) {
    clickBuy5Tab()
    MCS(867, 600, 200) ;5 billion
    }
if(num==3) {
    clickBuy5Tab()
    MCS(723, 600, 200) ;500 mil
}
clickBuyButton()
}


AddToPowerSurge() {
Planet()
MCS(1221, 447, 200) ;MAX
MCS(1069, 585, 200) ;powersurge +
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
MCS(646, 353, 200) ;build
MCS(916, 395, 200) ;monuments
}
Planet() {
MCS(646, 353, 200) ;build
MCS(1116, 394, 200) ;planet
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
loop, 9 {
clickTransformationAura(wt)
 if(clickNextGive(giveCount, wt))
    giveCount++
 clickMysticMode(wt)
 if(clickNextGive(giveCount, wt))
    giveCount++
 clickFocusedBreathing(wt)
}
 
result := endgame(wt2) ; 1 is you died
if(result == 1)
totalLoss++
if(result==0) {
totalWins++
 break
}
}
thePercent := totalWins / (totalWins+totalLoss)
MsgBox, end result %totalWins% wins and %totalLoss% losses, %thePercent% percent


}

!7::
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
b := buildIsVisible() ; 
c := checkIfDone() ; healthIsLow()
MsgBox, %b% <-  --> %c%
return


import() {
MCS(547, 446, 200)
MCS(519, 562, 200)
MCS(407, 656, 500)
clickStats()
}

goToFight() {
MCS(2183, 511, 200) ;stats
MCS(2450, 384, 200) ;build
MCS(2920, 427, 200) ;planet
MCS(3026, 475, 200) ;max
MCS(2871, 614, 200) ;powersurge+
MCS(2894, 566, 200) ;v2
MCS(2992, 694, 200) ;fight
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
buildIs := buildIsVisible()
gg(battleCount, buildIs)
;  MsgBox, %buildIs% <--
return buildIs
}

gg(battleCount, buildIsVisible){
if(GetKeyState("End")) 
return
sleep, 100
; MCS(641, 1065, 300) ; notepad++
MCS(768, 1058, 800) ; notepad
Send %battleCount% turns, %buildIsVisible% where 1=failed to kill {Enter}
}

buildIsVisible() {
return colorIsPresentQuick(2432, 725, 0x664129)
}

healthIsLow() {
return colorIsPresentQuick(2543, 474, 0x1F1F1F)
}

checkIfDone() {
return colorIsPresentQuick(2758, 723, 0xEDE808)
}

isLowMana() {
blue := 0x623C24
return colorIsNotVisibleQuick(2547, 506, blue)
}

isLowHealth() {
return colorIsPresentQuick(2541, 476, 0x1F1F1F)
}

isChance65() {
return colorIsVisible(2969, 602, 2971, 608, 0xE8E8E4)
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
if(isLowHealth()) {
clickFocusedBreathing(wt)
return 0
}
if(mod(giveCount, 3) == 0) {
 clickGiveHeal(wt)
}
if(mod(giveCount, 3) != 0) {
 clickGiveHurt(wt)
}
return 1
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
MCS(2653, 800, wt)
}
clickMysticMode(wt){
MCS(2492, 801, wt)
}
clickFocusedBreathing(wt){
MCS(2806, 834, wt)
}
clickElementalMani(wt){
MCS(2974, 800, wt)
}
clickIon(wt){
MCS(2817, 872, wt)
}
clickClairvoyance(wt){
MCS(2655, 836, wt)
}
clickGodSpeed(wt){
MCS(2817, 799, wt)
}
clickGiveHurt(wt){
MCS(2658, 907, wt)
}
clickGiveHeal(wt){
MCS(2494, 903, wt)
}