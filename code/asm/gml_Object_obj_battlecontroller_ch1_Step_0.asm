.localvar 2 arguments

:[0]
push.v self.victory
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.victoried
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [33]

:[4]
push.i 231576
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.faceaction
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.faceaction
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.faceaction
pushi.e 1
pop.v.i global.battleend
pushi.e -1
pop.v.i global.mnfight
pushi.e 7
pop.v.i global.myfight
push.v self.battlewriter
pushi.e -9
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 1324
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 1325
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [15]

:[12]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [14]

:[13]
push.i 231126
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.maxhp
pushi.e 8
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hp

:[14]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[15]
push.l 32482473284732
pop.v.l self.lastbattlewriter
push.v self.skipvictory
pushi.e 0
cmp.i.v EQ
bf [23]

:[16]
push.i 231813
setowner.e
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.monstergold
pushglb.v global.tension
pushi.e 10
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.i.v [array]self.monstergold
pushi.e -5
pushi.e 1
push.v [array]self.charweapon
pushi.e 8
cmp.i.v EQ
bf [18]

:[17]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.monstergold
pushi.e -5
pushi.e 3
push.v [array]self.monstergold
pushi.e 20
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.i.v [array]self.monstergold

:[18]
push.v global.gold
pushi.e -5
pushi.e 3
push.v [array]self.monstergold
add.v.v
pop.v.v global.gold
push.v global.xp
pushi.e -5
pushi.e 3
push.v [array]self.monsterexp
add.v.v
pop.v.v global.xp
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231851
setowner.e
pushi.e -5
pushi.e 3
push.v [array]self.monstergold
call.i string(argc=1)
pushi.e -5
pushi.e 3
push.v [array]self.monsterexp
call.i string(argc=1)
push.s "obj_battlecontroller_slash_Step_0_gml_40_0"@40740
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
push.i 231152
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.battlemsg
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.battletyper
pop.v.v global.typer
call.i gml_Script_scr_battletext_ch1(argc=0)
pop.v.v self.lastbattlewriter
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [23]

:[20]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [22]

:[21]
pushi.e 7
pop.v.i self.state
pushi.e 0
pop.v.i self.hurt
pushi.e 0
pop.v.i self.hurttimer

:[22]
popenv [21]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [19]

:[23]
pushi.e 1
pop.v.i self.victoried
pushi.e 0
pop.v.i self.victortimer
push.v self.skipvictory
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e -20
pop.v.i self.victortimer

:[25]
pushi.e 1650
pushenv [27]

:[26]
push.i 68062
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e -10
pop.v.i self.hspeed
push.d -0.4
pop.v.d self.friction

:[27]
popenv [26]
pushi.e 1376
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [33]

:[28]
pushi.e 1376
pushenv [30]

:[29]
pushi.e 30
pop.v.i self.con

:[30]
popenv [29]
pushi.e 2
pop.v.i self.victoried
push.v self.lastbattlewriter
pushi.e -9
pushenv [32]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[32]
popenv [31]

:[33]
push.v self.victoried
pushi.e 1
cmp.i.v EQ
bf [40]

:[34]
push.v self.victortimer
pushi.e 1
add.i.v
pop.v.v self.victortimer
push.v self.lastbattlewriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.v self.victortimer
pushi.e 10
cmp.i.v GTE
b [37]

:[36]
push.e 0

:[37]
bf [40]

:[38]
pushi.e 2
pop.v.i self.intro
push.v self.bp
pushi.e 0
cmp.i.v LTE
bf [40]

:[39]
call.i gml_Script_scr_endcombat_ch1(argc=0)
popz.v

:[40]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [458]

:[41]
pushglb.v global.bmenuno
pushi.e 0
cmp.i.v EQ
bf [105]

:[42]
push.v self.battlewriter
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [44]

:[43]
push.i 231152
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.battlemsg
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.battletyper
pop.v.v global.typer
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v

:[44]
call.i gml_Script_left_p_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
push.v self.lbuffer
pushi.e 0
cmp.i.v LT
b [47]

:[46]
push.e 0

:[47]
bf [52]

:[48]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
push.i 231534
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 0
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [51]

:[50]
push.i 231534
setowner.e
pushi.e -5
pushi.e 0
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[51]
pushi.e 1
pop.v.i self.movenoise
pushi.e 1
pop.v.i self.rbuffer

:[52]
call.i gml_Script_right_p_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.v self.rbuffer
pushi.e 0
cmp.i.v LT
b [55]

:[54]
push.e 0

:[55]
bf [60]

:[56]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 4
cmp.i.v EQ
bf [58]

:[57]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [59]

:[58]
pushi.e -5
pushi.e 0
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
add.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[59]
pushi.e 1
pop.v.i self.movenoise
pushi.e 1
pop.v.i self.lbuffer

:[60]
call.i gml_Script_button1_p_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [63]

:[62]
push.e 0

:[63]
bf [92]

:[64]
pushi.e 1
pop.v.i self.onebuffer
pushi.e 1
pop.v.i self.selnoise
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
pushi.e 1
pop.v.i global.bmenuno

:[66]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v NEQ
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 1
pop.v.i self.onebuffer
pushi.e 2
pop.v.i global.bmenuno

:[71]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
pushi.e 1
pop.v.i self.onebuffer
pushi.e 11
pop.v.i global.bmenuno

:[76]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [78]

:[77]
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
b [79]

:[78]
push.e 0

:[79]
bf [88]

:[80]
pushi.e 1
pop.v.i self.onebuffer
pushi.e 4
pop.v.i global.bmenuno
pushglb.v global.charturn
call.i gml_Script_scr_iteminfo_temp_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[81]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [88]

:[82]
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [84]

:[83]
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v GT
b [85]

:[84]
push.e 0

:[85]
bf [87]

:[86]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[87]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [81]

:[88]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 3
cmp.i.v EQ
bf [90]

:[89]
pushi.e 1
pop.v.i self.onebuffer
pushi.e 12
pop.v.i global.bmenuno

:[90]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 4
cmp.i.v EQ
bf [92]

:[91]
pushi.e 40
conv.i.v
call.i gml_Script_scr_tensionheal_ch1(argc=1)
popz.v
push.i 231576
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.faceaction
push.i 231475
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charaction
call.i gml_Script_scr_nexthero_ch1(argc=0)
popz.v

:[92]
call.i gml_Script_button2_p_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [95]

:[93]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [95]

:[94]
pushglb.v global.charturn
pushi.e 0
cmp.i.v GT
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
pushi.e 1
pop.v.i self.twobuffer
pushi.e 1
pop.v.i self.movenoise
call.i gml_Script_scr_prevhero_ch1(argc=0)
popz.v

:[98]
push.v self.battlewriter
pushi.e -9
pushenv [100]

:[99]
pushi.e 3
pop.v.i self.depth

:[100]
popenv [99]
pushi.e 1323
pushenv [102]

:[101]
pushi.e 3
pop.v.i self.depth

:[102]
popenv [101]
pushi.e 1325
pushenv [104]

:[103]
pushi.e 3
pop.v.i self.depth

:[104]
popenv [103]

:[105]
pushglb.v global.bmenuno
pushi.e 2
cmp.i.v EQ
bf [171]

:[106]
push.v self.battlewriter
pushi.e -9
pushenv [108]

:[107]
pushi.e 1
pop.v.i self.skipme

:[108]
popenv [107]
push.v self.battlewriter
pushi.e -9
pushenv [110]

:[109]
pushi.e 10
pop.v.i self.depth

:[110]
popenv [109]
pushi.e 1323
pushenv [112]

:[111]
pushi.e 10
pop.v.i self.depth

:[112]
popenv [111]
pushi.e 1325
pushenv [114]

:[113]
pushi.e 10
pop.v.i self.depth

:[114]
popenv [113]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pop.v.v self.thischar
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [128]

:[115]
pushi.e 1
pop.v.i self.cango
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.spellcoord
push.v self.spellcoord
pushi.e 11
cmp.i.v LT
bf [123]

:[116]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spell
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
add.i.v
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [122]

:[117]
pushi.e 0
pop.v.i self.cango
push.v self.spellcoord
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [119]

:[118]
push.v self.spellcoord
pushi.e 0
cmp.i.v GT
b [120]

:[119]
push.e 0

:[120]
bf [122]

:[121]
push.i 231534
setowner.e
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[122]
b [124]

:[123]
push.i 231534
setowner.e
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e
pushi.e 0
pop.v.i self.cango

:[124]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [128]

:[125]
push.v self.spellcoord
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [127]

:[126]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
add.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e
b [128]

:[127]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[128]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [133]

:[129]
pushi.e 1
pop.v.i self.cango
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.spellcoord
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spell
pushi.e 1
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [133]

:[130]
push.v self.spellcoord
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [132]

:[131]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
add.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e
b [133]

:[132]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[133]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [149]

:[134]
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.spellcoord
pushi.e 1
pop.v.i self.cango
push.v self.spellcoord
pushi.e 10
cmp.i.v GTE
bf [136]

:[135]
pushi.e 0
pop.v.i self.cango
b [144]

:[136]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spell
push.v self.spellcoord
pushi.e 2
add.i.v
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [138]

:[137]
pushi.e 0
pop.v.i self.cango

:[138]
push.v self.spellcoord
pushi.e 5
cmp.i.v EQ
bf [141]

:[139]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spell
pushi.e 6
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [141]

:[140]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spell
pushi.e 7
pushaf.e
pushi.e 0
cmp.i.v EQ
b [142]

:[141]
push.e 0

:[142]
bf [144]

:[143]
pushi.e 2
pop.v.i self.cango

:[144]
push.v self.cango
pushi.e 0
cmp.i.v NEQ
bf [149]

:[145]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [147]

:[146]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 2
add.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[147]
push.v self.cango
pushi.e 2
cmp.i.v EQ
bf [149]

:[148]
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[149]
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [154]

:[150]
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.spellcoord
pushi.e 1
pop.v.i self.cango
push.v self.spellcoord
pushi.e 1
cmp.i.v LTE
bf [152]

:[151]
pushi.e 0
pop.v.i self.cango

:[152]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [154]

:[153]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 2
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[154]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spellcost
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pop.v.v global.tensionselect
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [157]

:[155]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spell
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [157]

:[156]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [158]

:[157]
push.e 0

:[158]
bf [166]

:[159]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spellcost
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushglb.v global.tension
cmp.v.v LTE
bf [166]

:[160]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.selnoise
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spell
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
call.i gml_Script_scr_spellinfo_ch1(argc=1)
popz.v
push.v self.spelltarget
pushi.e 0
cmp.i.v EQ
bf [162]

:[161]
call.i gml_Script_scr_spellconsumeb_ch1(argc=0)
popz.v

:[162]
push.v self.spelltarget
pushi.e 1
cmp.i.v EQ
bf [164]

:[163]
pushi.e 8
pop.v.i global.bmenuno

:[164]
push.v self.spelltarget
pushi.e 2
cmp.i.v EQ
bf [166]

:[165]
pushi.e 3
pop.v.i global.bmenuno

:[166]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [168]

:[167]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [169]

:[168]
push.e 0

:[169]
bf [171]

:[170]
pushi.e 0
pop.v.i global.tensionselect
pushi.e 1
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.movenoise

:[171]
pushglb.v global.bmenuno
pushi.e 4
cmp.i.v EQ
bf [241]

:[172]
push.v self.battlewriter
pushi.e -9
pushenv [174]

:[173]
pushi.e 1
pop.v.i self.skipme

:[174]
popenv [173]
push.v self.battlewriter
pushi.e -9
pushenv [176]

:[175]
pushi.e 10
pop.v.i self.depth

:[176]
popenv [175]
pushi.e 1323
pushenv [178]

:[177]
pushi.e 10
pop.v.i self.depth

:[178]
popenv [177]
pushi.e 1325
pushenv [180]

:[179]
pushi.e 10
pop.v.i self.depth

:[180]
popenv [179]
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [182]

:[181]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[182]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [196]

:[183]
pushi.e 1
pop.v.i self.cango
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.itemcoord
push.v self.itemcoord
pushi.e 11
cmp.i.v LT
bf [191]

:[184]
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
add.i.v
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [190]

:[185]
pushi.e 0
pop.v.i self.cango
push.v self.itemcoord
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [187]

:[186]
push.v self.itemcoord
pushi.e 0
cmp.i.v GT
b [188]

:[187]
push.e 0

:[188]
bf [190]

:[189]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[190]
b [192]

:[191]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e
pushi.e 0
pop.v.i self.cango

:[192]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [196]

:[193]
push.v self.itemcoord
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [195]

:[194]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
add.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e
b [196]

:[195]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[196]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [201]

:[197]
pushi.e 1
pop.v.i self.cango
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.itemcoord
pushi.e -1
pushi.e 1
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [201]

:[198]
push.v self.itemcoord
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [200]

:[199]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
add.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e
b [201]

:[200]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[201]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [217]

:[202]
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.itemcoord
pushi.e 1
pop.v.i self.cango
push.v self.itemcoord
pushi.e 10
cmp.i.v GTE
bf [204]

:[203]
pushi.e 0
pop.v.i self.cango
b [212]

:[204]
pushi.e -1
push.v self.itemcoord
pushi.e 2
add.i.v
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [206]

:[205]
pushi.e 0
pop.v.i self.cango

:[206]
push.v self.itemcoord
pushi.e 5
cmp.i.v EQ
bf [209]

:[207]
pushi.e -1
pushi.e 6
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [209]

:[208]
pushi.e -1
pushi.e 7
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
b [210]

:[209]
push.e 0

:[210]
bf [212]

:[211]
pushi.e 2
pop.v.i self.cango

:[212]
push.v self.cango
pushi.e 0
cmp.i.v NEQ
bf [217]

:[213]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [215]

:[214]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 2
add.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[215]
push.v self.cango
pushi.e 2
cmp.i.v EQ
bf [217]

:[216]
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[217]
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [222]

:[218]
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.itemcoord
pushi.e 1
pop.v.i self.cango
push.v self.itemcoord
pushi.e 1
cmp.i.v LTE
bf [220]

:[219]
pushi.e 0
pop.v.i self.cango

:[220]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [222]

:[221]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 2
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[222]
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [224]

:[223]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[224]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [227]

:[225]
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [227]

:[226]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [228]

:[227]
push.e 0

:[228]
bf [236]

:[229]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.selnoise
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
call.i gml_Script_scr_iteminfo_ch1(argc=1)
popz.v
push.v self.itemtarget
pushi.e 0
cmp.i.v EQ
bt [231]

:[230]
push.v self.itemtarget
pushi.e 2
cmp.i.v EQ
b [232]

:[231]
push.e 1

:[232]
bf [234]

:[233]
call.i gml_Script_scr_itemconsumeb_ch1(argc=0)
popz.v

:[234]
push.v self.itemtarget
pushi.e 1
cmp.i.v EQ
bf [236]

:[235]
pushi.e 7
pop.v.i global.bmenuno

:[236]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [238]

:[237]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [239]

:[238]
push.e 0

:[239]
bf [241]

:[240]
pushi.e 1
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.movenoise

:[241]
pushglb.v global.bmenuno
pushi.e 9
cmp.i.v EQ
bf [319]

:[242]
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.thisenemy
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [256]

:[243]
pushi.e 1
pop.v.i self.cango
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.actcoord
push.v self.actcoord
pushi.e 5
cmp.i.v LT
bf [251]

:[244]
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.canact
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
add.i.v
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [250]

:[245]
pushi.e 0
pop.v.i self.cango
push.v self.actcoord
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [247]

:[246]
push.v self.actcoord
pushi.e 0
cmp.i.v GT
b [248]

:[247]
push.e 0

:[248]
bf [250]

:[249]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[250]
b [252]

:[251]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e
pushi.e 0
pop.v.i self.cango

:[252]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [256]

:[253]
push.v self.actcoord
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [255]

:[254]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
add.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e
b [256]

:[255]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[256]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [262]

:[257]
pushi.e 1
pop.v.i self.cango
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.actcoord
push.v self.actcoord
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [261]

:[258]
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.canact
push.v self.actcoord
pushi.e 1
add.i.v
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [260]

:[259]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
add.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[260]
b [262]

:[261]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[262]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [270]

:[263]
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.actcoord
pushi.e 1
pop.v.i self.cango
push.v self.actcoord
pushi.e 4
cmp.i.v GTE
bf [265]

:[264]
pushi.e 0
pop.v.i self.cango
b [267]

:[265]
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.canact
push.v self.actcoord
pushi.e 2
add.i.v
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [267]

:[266]
pushi.e 0
pop.v.i self.cango

:[267]
push.v self.cango
pushi.e 0
cmp.i.v NEQ
bf [270]

:[268]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [270]

:[269]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 2
add.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[270]
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [275]

:[271]
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.actcoord
pushi.e 1
pop.v.i self.cango
push.v self.actcoord
pushi.e 1
cmp.i.v LTE
bf [273]

:[272]
pushi.e 0
pop.v.i self.cango

:[273]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [275]

:[274]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 2
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e

:[275]
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actcost
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pop.v.v global.tensionselect
pushi.e 1
pop.v.i self.canpress
pushi.e -5
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.actactor
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bt [277]

:[276]
pushi.e -5
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.actactor
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 4
cmp.i.v EQ
b [278]

:[277]
push.e 1

:[278]
bf [284]

:[279]
pushi.e -1
pushi.e 1
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bt [281]

:[280]
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [282]

:[281]
push.e 1

:[282]
bf [284]

:[283]
pushi.e 0
pop.v.i self.canpress

:[284]
pushi.e -5
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.actactor
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 3
cmp.i.v EQ
bt [286]

:[285]
pushi.e -5
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.actactor
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 4
cmp.i.v EQ
b [287]

:[286]
push.e 1

:[287]
bf [293]

:[288]
pushi.e -1
pushi.e 2
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bt [290]

:[289]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [291]

:[290]
push.e 1

:[291]
bf [293]

:[292]
pushi.e 0
pop.v.i self.canpress

:[293]
push.v self.canpress
pushi.e 1
cmp.i.v EQ
bf [314]

:[294]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [298]

:[295]
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.canact
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [298]

:[296]
pushglb.v global.tension
pushglb.v global.tensionselect
cmp.v.v GTE
bf [298]

:[297]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [299]

:[298]
push.e 0

:[299]
bf [314]

:[300]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.selnoise
push.v global.tension
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actcost
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
sub.v.v
pop.v.v global.tension
pushi.e 0
pop.v.i global.tensionselect
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [array]self.monsterinstance
call.i instance_exists(argc=1)
conv.v.b
bf [302]

:[301]
push.i 231410
setowner.e
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
add.i.v
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.acting

:[302]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.acting
pushi.e -5
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.actactor
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [304]

:[303]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e -1
pushi.e 1
push.v [array]self.charpos
conv.v.i
pop.v.v [array]self.acting

:[304]
pushi.e -5
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.actactor
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 3
cmp.i.v EQ
bf [306]

:[305]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e -1
pushi.e 2
push.v [array]self.charpos
conv.v.i
pop.v.v [array]self.acting

:[306]
pushi.e -5
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.actactor
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 4
cmp.i.v EQ
bf [308]

:[307]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.acting
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.acting

:[308]
pushi.e 0
pop.v.i self.i

:[309]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [313]

:[310]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.acting
pushi.e 1
cmp.i.v EQ
bf [312]

:[311]
push.i 231576
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.faceaction
push.i 231475
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charaction

:[312]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [309]

:[313]
call.i gml_Script_scr_nexthero_ch1(argc=0)
popz.v

:[314]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [316]

:[315]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [317]

:[316]
push.e 0

:[317]
bf [319]

:[318]
pushi.e 0
pop.v.i global.tensionselect
pushi.e 1
pop.v.i self.twobuffer
pushi.e 11
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.movenoise

:[319]
pushglb.v global.bmenuno
pushi.e 7
cmp.i.v EQ
bt [325]

:[320]
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [325]

:[321]
pushglb.v global.bmenuno
pushi.e 8
cmp.i.v EQ
bt [325]

:[322]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bt [325]

:[323]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bt [325]

:[324]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
b [326]

:[325]
push.e 1

:[326]
bf [458]

:[327]
push.v self.battlewriter
pushi.e -9
pushenv [329]

:[328]
pushi.e 1
pop.v.i self.skipme

:[329]
popenv [328]
push.v self.battlewriter
pushi.e -9
pushenv [331]

:[330]
pushi.e 10
pop.v.i self.depth

:[331]
popenv [330]
pushi.e 1323
pushenv [333]

:[332]
pushi.e 10
pop.v.i self.depth

:[333]
popenv [332]
pushi.e 1325
pushenv [335]

:[334]
pushi.e 10
pop.v.i self.depth

:[335]
popenv [334]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [337]

:[336]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [338]

:[337]
push.e 0

:[338]
bf [353]

:[339]
pushi.e 1
pop.v.i self.twobuffer
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [342]

:[340]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bt [342]

:[341]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
b [343]

:[342]
push.e 1

:[343]
bf [345]

:[344]
pushi.e 0
pop.v.i global.bmenuno

:[345]
pushglb.v global.bmenuno
pushi.e 7
cmp.i.v EQ
bf [347]

:[346]
pushi.e 4
pop.v.i global.bmenuno

:[347]
pushglb.v global.bmenuno
pushi.e 8
cmp.i.v EQ
bt [349]

:[348]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
b [350]

:[349]
push.e 1

:[350]
bf [352]

:[351]
pushi.e 2
pop.v.i global.bmenuno

:[352]
pushi.e 1
pop.v.i self.movenoise

:[353]
pushglb.v global.bmenuno
pushi.e 7
cmp.i.v EQ
bt [359]

:[354]
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [359]

:[355]
pushglb.v global.bmenuno
pushi.e 8
cmp.i.v EQ
bt [359]

:[356]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bt [359]

:[357]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bt [359]

:[358]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
b [360]

:[359]
push.e 1

:[360]
bf [458]

:[361]
pushglb.v global.bmenuno
pushi.e 7
cmp.i.v EQ
bt [363]

:[362]
pushglb.v global.bmenuno
pushi.e 8
cmp.i.v EQ
b [364]

:[363]
push.e 1

:[364]
bf [370]

:[365]
pushi.e 0
pop.v.i self.i

:[366]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [370]

:[367]
push.i 168067
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ht
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v GT
bf [369]

:[368]
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ht

:[369]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [366]

:[370]
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [374]

:[371]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bt [374]

:[372]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bt [374]

:[373]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
b [375]

:[374]
push.e 1

:[375]
bf [379]

:[376]
pushi.e 0
pop.v.i self.i

:[377]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [379]

:[378]
push.i 168067
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monster
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ht
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [377]

:[379]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [381]

:[380]
pushi.e -1
pushi.e 2
push.v [array]self.ht
pushi.e 0
cmp.i.v EQ
b [382]

:[381]
push.e 0

:[382]
bf [384]

:[383]
push.i 231534
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[384]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [386]

:[385]
pushi.e -1
pushi.e 0
push.v [array]self.ht
pushi.e 0
cmp.i.v EQ
b [387]

:[386]
push.e 0

:[387]
bf [389]

:[388]
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[389]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [391]

:[390]
pushi.e -1
pushi.e 1
push.v [array]self.ht
pushi.e 0
cmp.i.v EQ
b [392]

:[391]
push.e 0

:[392]
bf [394]

:[393]
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[394]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [396]

:[395]
pushi.e -1
pushi.e 0
push.v [array]self.ht
pushi.e 0
cmp.i.v EQ
b [397]

:[396]
push.e 0

:[397]
bf [399]

:[398]
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[399]
call.i gml_Script_down_p_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [417]

:[400]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [406]

:[401]
pushi.e -1
pushi.e 1
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [403]

:[402]
pushi.e 1
pop.v.i self.movenoise
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [405]

:[403]
pushi.e -1
pushi.e 2
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [405]

:[404]
pushi.e 1
pop.v.i self.movenoise
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[405]
b [417]

:[406]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [412]

:[407]
pushi.e -1
pushi.e 2
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [409]

:[408]
pushi.e 1
pop.v.i self.movenoise
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [411]

:[409]
pushi.e -1
pushi.e 0
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [411]

:[410]
pushi.e 1
pop.v.i self.movenoise
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[411]
b [417]

:[412]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [417]

:[413]
pushi.e -1
pushi.e 0
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [415]

:[414]
pushi.e 1
pop.v.i self.movenoise
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [417]

:[415]
pushi.e -1
pushi.e 1
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [417]

:[416]
pushi.e 1
pop.v.i self.movenoise
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[417]
call.i gml_Script_up_p_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [435]

:[418]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [424]

:[419]
pushi.e -1
pushi.e 2
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [421]

:[420]
pushi.e 1
pop.v.i self.movenoise
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [423]

:[421]
pushi.e -1
pushi.e 1
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [423]

:[422]
pushi.e 1
pop.v.i self.movenoise
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[423]
b [435]

:[424]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [430]

:[425]
pushi.e -1
pushi.e 0
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [427]

:[426]
pushi.e 1
pop.v.i self.movenoise
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [429]

:[427]
pushi.e -1
pushi.e 2
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [429]

:[428]
pushi.e 1
pop.v.i self.movenoise
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[429]
b [435]

:[430]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [435]

:[431]
pushi.e -1
pushi.e 1
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [433]

:[432]
pushi.e 1
pop.v.i self.movenoise
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [435]

:[433]
pushi.e -1
pushi.e 0
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [435]

:[434]
pushi.e 1
pop.v.i self.movenoise
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[435]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [437]

:[436]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [438]

:[437]
push.e 0

:[438]
bf [458]

:[439]
pushi.e 1
pop.v.i self.onebuffer
pushi.e 1
pop.v.i self.selnoise
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bf [441]

:[440]
push.i 231471
setowner.e
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.chartarget
push.i 231576
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.faceaction
push.i 231475
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charaction
call.i gml_Script_scr_nexthero_ch1(argc=0)
popz.v

:[441]
pushglb.v global.bmenuno
pushi.e 7
cmp.i.v EQ
bf [443]

:[442]
push.i 231471
setowner.e
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.chartarget
call.i gml_Script_scr_itemconsumeb_ch1(argc=0)
popz.v

:[443]
pushglb.v global.bmenuno
pushi.e 8
cmp.i.v EQ
bt [445]

:[444]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
b [446]

:[445]
push.e 1

:[446]
bf [448]

:[447]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.chartarget
call.i gml_Script_scr_spellconsumeb_ch1(argc=0)
popz.v

:[448]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bf [456]

:[449]
pushi.e 9
pop.v.i global.bmenuno
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.actcoord
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.thisenemy
pushi.e 0
pop.v.i self.i

:[450]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [455]

:[451]
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.canact
push.v self.actcoord
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [454]

:[452]
push.v self.actcoord
pushi.e 0
cmp.i.v GT
bf [454]

:[453]
push.i 231534
setowner.e
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40 ;;; this is a weird GMS2.3+ swap instruction
popaf.e
push.v self.actcoord
pushi.e 1
sub.i.v
pop.v.v self.actcoord

:[454]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [450]

:[455]
pushi.e 1
pop.v.i self.onebuffer

:[456]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
bf [458]

:[457]
push.i 231576
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.faceaction
push.i 231471
setowner.e
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.chartarget
push.i 231475
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charaction
push.i 231493
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charspecial
call.i gml_Script_scr_nexthero_ch1(argc=0)
popz.v

:[458]
push.v self.movenoise
pushi.e 1
cmp.i.v EQ
bf [460]

:[459]
pushi.e 493
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.movenoise

:[460]
push.v self.grazenoise
pushi.e 1
cmp.i.v EQ
bf [462]

:[461]
pushi.e 437
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.grazenoise

:[462]
push.v self.selnoise
pushi.e 1
cmp.i.v EQ
bf [464]

:[463]
pushi.e 494
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.selnoise

:[464]
push.v self.damagenoise
pushi.e 1
cmp.i.v EQ
bf [466]

:[465]
pushi.e 435
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.damagenoise

:[466]
push.v self.laznoise
pushi.e 1
cmp.i.v EQ
bf [468]

:[467]
pushi.e 443
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.laznoise

:[468]
push.v self.onebuffer
pushi.e 1
sub.i.v
pop.v.v self.onebuffer
push.v self.twobuffer
pushi.e 1
sub.i.v
pop.v.v self.twobuffer
push.v self.lbuffer
pushi.e 1
sub.i.v
pop.v.v self.lbuffer
push.v self.rbuffer
pushi.e 1
sub.i.v
pop.v.v self.rbuffer
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [470]

:[469]
push.v self.timeron
pushi.e 1
cmp.i.v EQ
b [471]

:[470]
push.e 0

:[471]
bf [486]

:[472]
push.v global.turntimer
pushi.e 1
sub.i.v
pop.v.v global.turntimer
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LTE
bf [474]

:[473]
push.v self.reset
pushi.e 0
cmp.i.v EQ
b [475]

:[474]
push.e 0

:[475]
bf [486]

:[476]
pushi.e 1516
pushenv [478]

:[477]
call.i instance_destroy(argc=0)
popz.v

:[478]
popenv [477]
pushi.e 1515
pushenv [480]

:[479]
call.i instance_destroy(argc=0)
popz.v

:[480]
popenv [479]
pushi.e 1522
pushenv [482]

:[481]
pushi.e 0
pop.v.i self.darken

:[482]
popenv [481]
pushi.e 1630
pushenv [484]

:[483]
pushi.e 1537
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[484]
popenv [483]
pushi.e 1
pop.v.i self.reset
push.v self.noreturn
pushi.e 0
cmp.i.v EQ
bf [486]

:[485]
push.i 68062
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[486]
call.i gml_Script_scr_debug_ch1(argc=0)
conv.v.b
bf [end]

:[487]
pushi.e 113
conv.i.v
call.i gml_Script_scr_debug_keycheck(argc=1)
conv.v.b
bf [end]

:[488]
call.i gml_Script_scr_debug_fullheal(argc=0)
popz.v

:[end]