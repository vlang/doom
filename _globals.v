@[translated]
module main

@[typedef]
struct C.FILE {}
@[weak] __global ( skytexture int 

)


@[weak] __global ( skytexturemid int 

)


@[weak] __global ( skyflatnum int 

)


@[weak] __global ( sides &Side_t 

)


@[weak] __global ( buttonlist [16]Button_t 

)


@[weak] __global ( gamemode  = GameMode_t (GameMode_t.indetermined)
)


const (
alphSwitchList   = [// Doom shareware episode 1 switches
Switchlist_t {
name1: c'SW1BRCOM', 
name2: c'SW2BRCOM', 
episode: 1
}
, Switchlist_t {
name1: c'SW1BRN1', 
name2: c'SW2BRN1', 
episode: 1
}
, Switchlist_t {
name1: c'SW1BRN2', 
name2: c'SW2BRN2', 
episode: 1
}
, Switchlist_t {
name1: c'SW1BRNGN', 
name2: c'SW2BRNGN', 
episode: 1
}
, Switchlist_t {
name1: c'SW1BROWN', 
name2: c'SW2BROWN', 
episode: 1
}
, Switchlist_t {
name1: c'SW1COMM', 
name2: c'SW2COMM', 
episode: 1
}
, Switchlist_t {
name1: c'SW1COMP', 
name2: c'SW2COMP', 
episode: 1
}
, Switchlist_t {
name1: c'SW1DIRT', 
name2: c'SW2DIRT', 
episode: 1
}
, Switchlist_t {
name1: c'SW1EXIT', 
name2: c'SW2EXIT', 
episode: 1
}
, Switchlist_t {
name1: c'SW1GRAY', 
name2: c'SW2GRAY', 
episode: 1
}
, Switchlist_t {
name1: c'SW1GRAY1', 
name2: c'SW2GRAY1', 
episode: 1
}
, Switchlist_t {
name1: c'SW1METAL', 
name2: c'SW2METAL', 
episode: 1
}
, Switchlist_t {
name1: c'SW1PIPE', 
name2: c'SW2PIPE', 
episode: 1
}
, Switchlist_t {
name1: c'SW1SLAD', 
name2: c'SW2SLAD', 
episode: 1
}
, Switchlist_t {
name1: c'SW1STARG', 
name2: c'SW2STARG', 
episode: 1
}
, Switchlist_t {
name1: c'SW1STON1', 
name2: c'SW2STON1', 
episode: 1
}
, Switchlist_t {
name1: c'SW1STON2', 
name2: c'SW2STON2', 
episode: 1
}
, Switchlist_t {
name1: c'SW1STONE', 
name2: c'SW2STONE', 
episode: 1
}
, Switchlist_t {
name1: c'SW1STRTN', 
name2: c'SW2STRTN', 
episode: 1
}
, // Doom registered episodes 2&3 switches
Switchlist_t {
name1: c'SW1BLUE', 
name2: c'SW2BLUE', 
episode: 2
}
, Switchlist_t {
name1: c'SW1CMT', 
name2: c'SW2CMT', 
episode: 2
}
, Switchlist_t {
name1: c'SW1GARG', 
name2: c'SW2GARG', 
episode: 2
}
, Switchlist_t {
name1: c'SW1GSTON', 
name2: c'SW2GSTON', 
episode: 2
}
, Switchlist_t {
name1: c'SW1HOT', 
name2: c'SW2HOT', 
episode: 2
}
, Switchlist_t {
name1: c'SW1LION', 
name2: c'SW2LION', 
episode: 2
}
, Switchlist_t {
name1: c'SW1SATYR', 
name2: c'SW2SATYR', 
episode: 2
}
, Switchlist_t {
name1: c'SW1SKIN', 
name2: c'SW2SKIN', 
episode: 2
}
, Switchlist_t {
name1: c'SW1VINE', 
name2: c'SW2VINE', 
episode: 2
}
, Switchlist_t {
name1: c'SW1WOOD', 
name2: c'SW2WOOD', 
episode: 2
}
, // Doom II switches
Switchlist_t {
name1: c'SW1PANEL', 
name2: c'SW2PANEL', 
episode: 3
}
, Switchlist_t {
name1: c'SW1ROCK', 
name2: c'SW2ROCK', 
episode: 3
}
, Switchlist_t {
name1: c'SW1MET2', 
name2: c'SW2MET2', 
episode: 3
}
, Switchlist_t {
name1: c'SW1WDMET', 
name2: c'SW2WDMET', 
episode: 3
}
, Switchlist_t {
name1: c'SW1BRIK', 
name2: c'SW2BRIK', 
episode: 3
}
, Switchlist_t {
name1: c'SW1MOD1', 
name2: c'SW2MOD1', 
episode: 3
}
, Switchlist_t {
name1: c'SW1ZIM', 
name2: c'SW2ZIM', 
episode: 3
}
, Switchlist_t {
name1: c'SW1STON6', 
name2: c'SW2STON6', 
episode: 3
}
, Switchlist_t {
name1: c'SW1TEK', 
name2: c'SW2TEK', 
episode: 3
}
, Switchlist_t {
name1: c'SW1MARB', 
name2: c'SW2MARB', 
episode: 3
}
, Switchlist_t {
name1: c'SW1SKULL', 
name2: c'SW2SKULL', 
episode: 3
}
]!

)


@[weak] __global ( switchlist [100]int 

)


@[weak] __global ( numswitches int 

)


@[weak] __global ( gameversion  = GameVersion_t (GameVersion_t.exe_final2)
)


@[weak] __global ( netgame bool 

)


@[weak] __global ( deathmatch int 

)


@[weak] __global ( players [4]Player_t 

)


@[weak] __global ( playeringame [4]bool 

)


const (
lnodes   = [[Point_t {
x: 185, 
y: 164
}
, Point_t {
x: 148, 
y: 143
}
, Point_t {
x: 69, 
y: 122
}
, Point_t {
x: 209, 
y: 102
}
, Point_t {
x: 116, 
y: 89
}
, Point_t {
x: 166, 
y: 55
}
, Point_t {
x: 71, 
y: 56
}
, Point_t {
x: 135, 
y: 29
}
, Point_t {
x: 71, 
y: 24
}
]!
, [Point_t {
x: 254, 
y: 25
}
, Point_t {
x: 97, 
y: 50
}
, Point_t {
x: 188, 
y: 64
}
, Point_t {
x: 128, 
y: 78
}
, Point_t {
x: 214, 
y: 92
}
, Point_t {
x: 133, 
y: 130
}
, Point_t {
x: 208, 
y: 136
}
, Point_t {
x: 148, 
y: 140
}
, Point_t {
x: 235, 
y: 158
}
]!
, [Point_t {
x: 156, 
y: 168
}
, Point_t {
x: 48, 
y: 154
}
, Point_t {
x: 174, 
y: 95
}
, Point_t {
x: 265, 
y: 75
}
, Point_t {
x: 130, 
y: 48
}
, Point_t {
x: 279, 
y: 23
}
, Point_t {
x: 198, 
y: 48
}
, Point_t {
x: 140, 
y: 25
}
, Point_t {
x: 281, 
y: 136
}
]!
]!

)


const (
epsd0animinfo   = [Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (224), 
y: (104)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (184), 
y: (160)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (112), 
y: (136)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (72), 
y: (112)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (88), 
y: (96)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (64), 
y: (48)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (192), 
y: (40)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (136), 
y: (16)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (80), 
y: (16)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (64), 
y: (24)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
]!

)


const (
epsd1animinfo   = [Anim_t {
type_: (Animenum_t.anim_level), 
period: (35 / 3), 
nanims: (1), 
loc: Point_t {
x: (128), 
y: (136)
}
, 
data1: (1), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_level), 
period: (35 / 3), 
nanims: (1), 
loc: Point_t {
x: (128), 
y: (136)
}
, 
data1: (2), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_level), 
period: (35 / 3), 
nanims: (1), 
loc: Point_t {
x: (128), 
y: (136)
}
, 
data1: (3), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_level), 
period: (35 / 3), 
nanims: (1), 
loc: Point_t {
x: (128), 
y: (136)
}
, 
data1: (4), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_level), 
period: (35 / 3), 
nanims: (1), 
loc: Point_t {
x: (128), 
y: (136)
}
, 
data1: (5), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_level), 
period: (35 / 3), 
nanims: (1), 
loc: Point_t {
x: (128), 
y: (136)
}
, 
data1: (6), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_level), 
period: (35 / 3), 
nanims: (1), 
loc: Point_t {
x: (128), 
y: (136)
}
, 
data1: (7), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_level), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (192), 
y: (144)
}
, 
data1: (8), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_level), 
period: (35 / 3), 
nanims: (1), 
loc: Point_t {
x: (128), 
y: (136)
}
, 
data1: (8), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
]!

)


const (
epsd2animinfo   = [Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (104), 
y: (168)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (40), 
y: (136)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (160), 
y: (96)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (104), 
y: (80)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 3), 
nanims: (3), 
loc: Point_t {
x: (120), 
y: (32)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
, Anim_t {
type_: (Animenum_t.anim_always), 
period: (35 / 4), 
nanims: (3), 
loc: Point_t {
x: (40), 
y: (0)
}
, 
data1: (0), 
data2: 0, 
p: [(voidptr(0)), (voidptr(0)), (voidptr(0))]!
, 
nexttic: 0, 
lastdrawn: 0, 
ctr: 0, 
state: 0
}
]!

)


const (
NUMANIMS   = [10, 9, 6]!

)


const (
anims   = [&epsd0animinfo, &epsd1animinfo, &epsd2animinfo, &epsd0animinfo]!

)


@[weak] __global ( acceleratestage int 

)


@[weak] __global ( me int 

)


@[weak] __global ( state Stateenum_t 

)


@[weak] __global ( wbs &Wbstartstruct_t 

)


@[weak] __global ( plrs &Wbplayerstruct_t 

)


@[weak] __global ( cnt int 

)


@[weak] __global ( bcnt int 

)


@[weak] __global ( firstrefresh int 

)


@[weak] __global ( cnt_kills [4]int 

)


@[weak] __global ( cnt_items [4]int 

)


@[weak] __global ( cnt_secret [4]int 

)


@[weak] __global ( cnt_time int 

)


@[weak] __global ( cnt_par int 

)


@[weak] __global ( cnt_pause int 

)


@[weak] __global ( NUMCMAPS int 

)


const (
yah   = [(voidptr(0)), (voidptr(0)), (voidptr(0))]!

)


const (
splat   = [(voidptr(0)), (voidptr(0))]!

)


@[weak] __global ( percent &Patch_t 

)


@[weak] __global ( colon &Patch_t 

)


@[weak] __global ( num [10]&Patch_t 

)


@[weak] __global ( wiminus &Patch_t 

)


@[weak] __global ( finished &Patch_t 

)


@[weak] __global ( entering &Patch_t 

)


@[weak] __global ( sp_secret &Patch_t 

)


@[weak] __global ( kills &Patch_t 

)


@[weak] __global ( secret &Patch_t 

)


@[weak] __global ( items &Patch_t 

)


@[weak] __global ( frags &Patch_t 

)


@[weak] __global ( timepatch &Patch_t 

)


@[weak] __global ( par &Patch_t 

)


@[weak] __global ( sucks &Patch_t 

)


@[weak] __global ( killers &Patch_t 

)


@[weak] __global ( victims &Patch_t 

)


@[weak] __global ( total &Patch_t 

)


@[weak] __global ( star &Patch_t 

)


@[weak] __global ( bstar &Patch_t 

)


@[weak] __global ( p [4]&Patch_t 

)


@[weak] __global ( bp [4]&Patch_t 

)


@[weak] __global ( lnames &&Patch_t 

)


@[weak] __global ( background &Patch_t 

)


@[weak] __global ( snl_pointeron  = bool (false)
)


@[weak] __global ( dm_state int 

)


@[weak] __global ( dm_frags [4][4]int 

)


@[weak] __global ( dm_totals [4]int 

)


@[weak] __global ( cnt_frags [4]int 

)


@[weak] __global ( dofrags int 

)


@[weak] __global ( ng_state int 

)


@[weak] __global ( sp_state int 

)


const (
weaponinfo   = [Weaponinfo_t {
// fist
ammo: Ammotype_t.am_noammo, 
upstate: Statenum_t.s_punchup, 
downstate: Statenum_t.s_punchdown, 
readystate: Statenum_t.s_punch, 
atkstate: Statenum_t.s_punch_1, 
flashstate: Statenum_t.s_null
}
, Weaponinfo_t {
// pistol
ammo: Ammotype_t.am_clip, 
upstate: Statenum_t.s_pistolup, 
downstate: Statenum_t.s_pistoldown, 
readystate: Statenum_t.s_pistol, 
atkstate: Statenum_t.s_pistol_1, 
flashstate: Statenum_t.s_pistolflash
}
, Weaponinfo_t {
// shotgun
ammo: Ammotype_t.am_shell, 
upstate: Statenum_t.s_sgunup, 
downstate: Statenum_t.s_sgundown, 
readystate: Statenum_t.s_sgun, 
atkstate: Statenum_t.s_sgun_1, 
flashstate: Statenum_t.s_sgunflash_1
}
, Weaponinfo_t {
// chaingun
ammo: Ammotype_t.am_clip, 
upstate: Statenum_t.s_chainup, 
downstate: Statenum_t.s_chaindown, 
readystate: Statenum_t.s_chain, 
atkstate: Statenum_t.s_chain_1, 
flashstate: Statenum_t.s_chainflash_1
}
, Weaponinfo_t {
// missile launcher
ammo: Ammotype_t.am_misl, 
upstate: Statenum_t.s_missileup, 
downstate: Statenum_t.s_missiledown, 
readystate: Statenum_t.s_missile, 
atkstate: Statenum_t.s_missile_1, 
flashstate: Statenum_t.s_missileflash_1
}
, Weaponinfo_t {
// plasma rifle
ammo: Ammotype_t.am_cell, 
upstate: Statenum_t.s_plasmaup, 
downstate: Statenum_t.s_plasmadown, 
readystate: Statenum_t.s_plasma, 
atkstate: Statenum_t.s_plasma_1, 
flashstate: Statenum_t.s_plasmaflash_1
}
, Weaponinfo_t {
// bfg 9000
ammo: Ammotype_t.am_cell, 
upstate: Statenum_t.s_bfgup, 
downstate: Statenum_t.s_bfgdown, 
readystate: Statenum_t.s_bfg, 
atkstate: Statenum_t.s_bfg_1, 
flashstate: Statenum_t.s_bfgflash_1
}
, Weaponinfo_t {
// chainsaw
ammo: Ammotype_t.am_noammo, 
upstate: Statenum_t.s_sawup, 
downstate: Statenum_t.s_sawdown, 
readystate: Statenum_t.s_saw, 
atkstate: Statenum_t.s_saw_1, 
flashstate: Statenum_t.s_null
}
, Weaponinfo_t {
// super shotgun
ammo: Ammotype_t.am_shell, 
upstate: Statenum_t.s_dsgunup, 
downstate: Statenum_t.s_dsgundown, 
readystate: Statenum_t.s_dsgun, 
atkstate: Statenum_t.s_dsgun_1, 
flashstate: Statenum_t.s_dsgunflash_1
}
]!

)


@[weak] __global ( gametic int 

)


@[weak] __global ( nomonsters bool 

)


@[weak] __global ( respawnparm bool 

)


@[weak] __global ( fastparm bool 

)


@[weak] __global ( devparm bool 

)


@[weak] __global ( gamemission  = GameMission_t (GameMission_t.doom)
)


@[weak] __global ( gamevariant  = GameVariant_t (GameVariant_t.vanilla)
)


@[weak] __global ( gamedescription &i8 

)


@[weak] __global ( modifiedgame bool 

)


@[weak] __global ( startskill Skill_t 

)


@[weak] __global ( startepisode int 

)


@[weak] __global ( startmap int 

)


@[weak] __global ( startloadgame int 

)


@[weak] __global ( autostart bool 

)


@[weak] __global ( timelimit int 

)


@[weak] __global ( sfxVolume  = int (8)
)


@[weak] __global ( musicVolume  = int (8)
)


@[weak] __global ( automapactive  = bool (false)
)


@[weak] __global ( menuactive bool 

)


@[weak] __global ( paused bool 

)


@[weak] __global ( viewactive bool 

)


@[weak] __global ( nodrawers bool 

)


@[weak] __global ( testcontrols  = bool (false)
)


@[weak] __global ( testcontrols_mousespeed int 

)


@[weak] __global ( consoleplayer int 

)


@[weak] __global ( displayplayer int 

)


@[weak] __global ( usergame bool 

)


@[weak] __global ( demoplayback bool 

)


@[weak] __global ( demorecording bool 

)


@[weak] __global ( singledemo bool 

)


@[weak] __global ( gamestate Gamestate_t 

)


@[weak] __global ( savegamedir &i8 

)


@[weak] __global ( mouseSensitivity  = int (5)
)


@[weak] __global ( lumpinfo &&Lumpinfo_t 

)


@[weak] __global ( numlumps u32 

)


@[weak] __global ( snd_channels  = int (8)
)


@[weak] __global ( myargc int 

)


@[weak] __global ( myargv &&u8 

)


@[c_extern] __global ( key_multi_msgplayer [8]int 

)


@[weak] __global ( detailLevel  = int (0)
)


@[weak] __global ( screenblocks  = int (9)
)


@[weak] __global ( screenvisible bool 

)


@[weak] __global ( screensaver_mode bool 

)


@[weak] __global ( fullscreen int 

)


@[weak] __global ( vanilla_savegame_limit  = int (1)
)


@[weak] __global ( vanilla_demo_limit  = int (1)
)


const (
chat_macros   = [c'No', c"I'm ready to kick butt!", c"I'm OK.", c"I'm not looking too good!", c'Help!', c'You suck!', c'Next time, scumbag...', c'Come here!', c"I'll take care of it.", c'Yes']!

)


@[weak] __global ( drone bool 

)


@[weak] __global ( scaledviewwidth int 

)


@[weak] __global ( viewheight int 

)


@[weak] __global ( viewwindowx int 

)


@[weak] __global ( viewwindowy int 

)


@[weak] __global ( gameaction Gameaction_t 

)


@[weak] __global ( iwadfile &i8 

)


@[weak] __global ( inhelpscreens bool 

)


@[weak] __global ( advancedemo bool 

)


@[weak] __global ( storedemo bool 

)


@[weak] __global ( main_loop_started  = bool (false)
)


@[weak] __global ( wadfile [1024]i8 

)


@[weak] __global ( mapdir [1024]i8 

)


@[weak] __global ( show_endoom  = int (1)
)


@[weak] __global ( show_diskicon  = int (1)
)


@[weak] __global ( wipegamestate  = Gamestate_t (Gamestate_t.gs_demoscreen)
)


@[weak] __global ( setsizeneeded bool 

)


@[weak] __global ( showMessages  = int (1)
)


@[weak] __global ( demosequence int 

)


@[weak] __global ( pagetic int 

)


@[weak] __global ( pagename &i8 

)


const (
banners   = [// doom2.wad
c'                         DOOM 2: Hell on Earth v%i.%i                           ', // doom2.wad v1.666
c'                         DOOM 2: Hell on Earth v%i.%i66                          ', // doom1.wad
c'                            DOOM Shareware Startup v%i.%i                           ', // doom.wad
c'                            DOOM Registered Startup v%i.%i                           ', // Registered DOOM uses this
c'                          DOOM System Startup v%i.%i                          ', // Doom v1.666
c'                          DOOM System Startup v%i.%i66                                                   The Ultimate DOOM Startup v%i.%i                        ', // tnt.wad
c'                     DOOM 2: TNT - Evilution v%i.%i                           ', // plutonia.wad
c'                   DOOM 2: Plutonia Experiment v%i.%i                           ']!

)


const (
packs_   = [Pack_ {
name: c'doom2', 
mission: GameMission_t.doom2
}
, Pack_ {
name: c'tnt', 
mission: GameMission_t.pack_tnt
}
, Pack_ {
name: c'plutonia', 
mission: GameMission_t.pack_plut
}
]!

)


@[weak] __global ( title [128]i8 

)


const (
copyright_banners   = [c'===========================================================================\nATTENTION:  This version of DOOM has been modified.  If you would like to\nget a copy of the original game, call 1-800-IDGAMES or see the readme file.\n        You will not receive technical support for modified games.\n                      press enter to continue\n===========================================================================\n', c'===========================================================================\n                 Commercial product - do not distribute!\n         Please report software piracy to the SPA: 1-800-388-PIR8\n===========================================================================\n', c'===========================================================================\n                                Shareware!\n===========================================================================\n']!

)


const (
gameversions   = [GameVersionStruct {
description: c'Doom 1.2', 
cmdline: c'1.2', 
version: GameVersion_t.exe_doom_1_2
}
, GameVersionStruct {
description: c'Doom 1.666', 
cmdline: c'1.666', 
version: GameVersion_t.exe_doom_1_666
}
, GameVersionStruct {
description: c'Doom 1.7/1.7a', 
cmdline: c'1.7', 
version: GameVersion_t.exe_doom_1_7
}
, GameVersionStruct {
description: c'Doom 1.8', 
cmdline: c'1.8', 
version: GameVersion_t.exe_doom_1_8
}
, GameVersionStruct {
description: c'Doom 1.9', 
cmdline: c'1.9', 
version: GameVersion_t.exe_doom_1_9
}
, GameVersionStruct {
description: c'Hacx', 
cmdline: c'hacx', 
version: GameVersion_t.exe_hacx
}
, GameVersionStruct {
description: c'Ultimate Doom', 
cmdline: c'ultimate', 
version: GameVersion_t.exe_ultimate
}
, GameVersionStruct {
description: c'Final Doom', 
cmdline: c'final', 
version: GameVersion_t.exe_final
}
, GameVersionStruct {
description: c'Final Doom (alt)', 
cmdline: c'final2', 
version: GameVersion_t.exe_final2
}
, GameVersionStruct {
description: c'Chex Quest', 
cmdline: c'chex', 
version: GameVersion_t.exe_chex
}
, GameVersionStruct {
description: (voidptr(0)), 
cmdline: (voidptr(0)), 
version: 0
}
]!

)


const (
forwardmove   = [25, 50]!

)


const (
sidemove   = [24, 40]!

)


const (
sprnames   = [c'TROO', c'SHTG', c'PUNG', c'PISG', c'PISF', c'SHTF', c'SHT2', c'CHGG', c'CHGF', c'MISG', c'MISF', c'SAWG', c'PLSG', c'PLSF', c'BFGG', c'BFGF', c'BLUD', c'PUFF', c'BAL1', c'BAL2', c'PLSS', c'PLSE', c'MISL', c'BFS1', c'BFE1', c'BFE2', c'TFOG', c'IFOG', c'PLAY', c'POSS', c'SPOS', c'VILE', c'FIRE', c'FATB', c'FBXP', c'SKEL', c'MANF', c'FATT', c'CPOS', c'SARG', c'HEAD', c'BAL7', c'BOSS', c'BOS2', c'SKUL', c'SPID', c'BSPI', c'APLS', c'APBX', c'CYBR', c'PAIN', c'SSWV', c'KEEN', c'BBRN', c'BOSF', c'ARM1', c'ARM2', c'BAR1', c'BEXP', c'FCAN', c'BON1', c'BON2', c'BKEY', c'RKEY', c'YKEY', c'BSKU', c'RSKU', c'YSKU', c'STIM', c'MEDI', c'SOUL', c'PINV', c'PSTR', c'PINS', c'MEGA', c'SUIT', c'PMAP', c'PVIS', c'CLIP', c'AMMO', c'ROCK', c'BROK', c'CELL', c'CELP', c'SHEL', c'SBOX', c'BPAK', c'BFUG', c'MGUN', c'CSAW', c'LAUN', c'PLAS', c'SHOT', c'SGN2', c'COLU', c'SMT2', c'GOR1', c'POL2', c'POL5', c'POL4', c'POL3', c'POL1', c'POL6', c'GOR2', c'GOR3', c'GOR4', c'GOR5', c'SMIT', c'COL1', c'COL2', c'COL3', c'COL4', c'CAND', c'CBRA', c'COL6', c'TRE1', c'TRE2', c'ELEC', c'CEYE', c'FSKU', c'COL5', c'TBLU', c'TGRN', c'TRED', c'SMBT', c'SMGT', c'SMRT', c'HDB1', c'HDB2', c'HDB3', c'HDB4', c'HDB5', c'HDB6', c'POB1', c'POB2', c'BRS1', c'TLMP', c'TLP2', (voidptr(0))]!

)


@[weak] __global ( numvertexes int 

)


@[weak] __global ( vertexes &Vertex_t 

)


@[weak] __global ( numsegs int 

)


@[weak] __global ( segs &Seg_t 

)


@[weak] __global ( numsectors int 

)


@[weak] __global ( sectors &Sector_t 

)


@[weak] __global ( numsubsectors int 

)


@[weak] __global ( subsectors &Subsector_t 

)


@[weak] __global ( numnodes int 

)


@[weak] __global ( nodes &Node_t 

)


@[weak] __global ( numlines int 

)


@[weak] __global ( lines &Line_t 

)


@[weak] __global ( numsides int 

)


@[weak] __global ( linedef &Line_t 

)


@[weak] __global ( iquehead int 

)


@[weak] __global ( iquetail int 

)


@[weak] __global ( rejectmatrix &u8 

)


@[weak] __global ( blockmaplump &i16 

)


@[weak] __global ( blockmap &i16 

)


@[weak] __global ( bmapwidth int 

)


@[weak] __global ( bmapheight int 

)


@[weak] __global ( bmaporgx int 

)


@[weak] __global ( bmaporgy int 

)


@[weak] __global ( blocklinks &&Mobj_t 

)


@[weak] __global ( totalkills int 

)


@[weak] __global ( totalitems int 

)


@[weak] __global ( totalsecret int 

)


@[weak] __global ( leveltime int 

)


@[weak] __global ( deathmatchstarts [10]Mapthing_t 

)


@[weak] __global ( deathmatch_p &Mapthing_t 

)


@[weak] __global ( playerstarts [4]Mapthing_t 

)


@[weak] __global ( playerstartsingame [4]bool 

)


@[weak] __global ( wminfo Wbstartstruct_t 

)


@[weak] __global ( precache  = bool (true)
)


@[weak] __global ( bodyqueslot int 

)


@[weak] __global ( totallines int 

)


@[weak] __global ( maplumpinfo &Lumpinfo_t 

)


@[c_extern] __global ( finesine [10240]int 

)


@[weak] __global ( finecosine &int 

)


const (
states   = [State_t {
sprite: Spritenum_t.spr_troo, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_NULL
State_t {
sprite: Spritenum_t.spr_shtg, 
frame: 4, 
tics: 0, 
action: Actionf_t {
acv: a_light0
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_LIGHTDONE
State_t {
sprite: Spritenum_t.spr_pung, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_weapon_ready
}
, 
nextstate: Statenum_t.s_punch, 
misc1: 0, 
misc2: 0
}
, // S_PUNCH
State_t {
sprite: Spritenum_t.spr_pung, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_lower
}
, 
nextstate: Statenum_t.s_punchdown, 
misc1: 0, 
misc2: 0
}
, // S_PUNCHDOWN
State_t {
sprite: Spritenum_t.spr_pung, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_raise
}
, 
nextstate: Statenum_t.s_punchup, 
misc1: 0, 
misc2: 0
}
, // S_PUNCHUP
State_t {
sprite: Spritenum_t.spr_pung, 
frame: 1, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_punch_2, 
misc1: 0, 
misc2: 0
}
, // S_PUNCH1
State_t {
sprite: Spritenum_t.spr_pung, 
frame: 2, 
tics: 4, 
action: Actionf_t {
acv: a_punch
}
, 
nextstate: Statenum_t.s_punch_3, 
misc1: 0, 
misc2: 0
}
, // S_PUNCH2
State_t {
sprite: Spritenum_t.spr_pung, 
frame: 3, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_punch_4, 
misc1: 0, 
misc2: 0
}
, // S_PUNCH3
State_t {
sprite: Spritenum_t.spr_pung, 
frame: 2, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_punch_5, 
misc1: 0, 
misc2: 0
}
, // S_PUNCH4
State_t {
sprite: Spritenum_t.spr_pung, 
frame: 1, 
tics: 5, 
action: Actionf_t {
acv: a_re_fire
}
, 
nextstate: Statenum_t.s_punch, 
misc1: 0, 
misc2: 0
}
, // S_PUNCH5
State_t {
sprite: Spritenum_t.spr_pisg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_weapon_ready
}
, 
nextstate: Statenum_t.s_pistol, 
misc1: 0, 
misc2: 0
}
, // S_PISTOL
State_t {
sprite: Spritenum_t.spr_pisg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_lower
}
, 
nextstate: Statenum_t.s_pistoldown, 
misc1: 0, 
misc2: 0
}
, // S_PISTOLDOWN
State_t {
sprite: Spritenum_t.spr_pisg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_raise
}
, 
nextstate: Statenum_t.s_pistolup, 
misc1: 0, 
misc2: 0
}
, // S_PISTOLUP
State_t {
sprite: Spritenum_t.spr_pisg, 
frame: 0, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pistol_2, 
misc1: 0, 
misc2: 0
}
, // S_PISTOL1
State_t {
sprite: Spritenum_t.spr_pisg, 
frame: 1, 
tics: 6, 
action: Actionf_t {
acv: a_fire_pistol
}
, 
nextstate: Statenum_t.s_pistol_3, 
misc1: 0, 
misc2: 0
}
, // S_PISTOL2
State_t {
sprite: Spritenum_t.spr_pisg, 
frame: 2, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pistol_4, 
misc1: 0, 
misc2: 0
}
, // S_PISTOL3
State_t {
sprite: Spritenum_t.spr_pisg, 
frame: 1, 
tics: 5, 
action: Actionf_t {
acv: a_re_fire
}
, 
nextstate: Statenum_t.s_pistol, 
misc1: 0, 
misc2: 0
}
, // S_PISTOL4
State_t {
sprite: Spritenum_t.spr_pisf, 
frame: 32768, 
tics: 7, 
action: Actionf_t {
acv: a_light1
}
, 
nextstate: Statenum_t.s_lightdone, 
misc1: 0, 
misc2: 0
}
, // S_PISTOLFLASH
State_t {
sprite: Spritenum_t.spr_shtg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_weapon_ready
}
, 
nextstate: Statenum_t.s_sgun, 
misc1: 0, 
misc2: 0
}
, // S_SGUN
State_t {
sprite: Spritenum_t.spr_shtg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_lower
}
, 
nextstate: Statenum_t.s_sgundown, 
misc1: 0, 
misc2: 0
}
, // S_SGUNDOWN
State_t {
sprite: Spritenum_t.spr_shtg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_raise
}
, 
nextstate: Statenum_t.s_sgunup, 
misc1: 0, 
misc2: 0
}
, // S_SGUNUP
State_t {
sprite: Spritenum_t.spr_shtg, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sgun_2, 
misc1: 0, 
misc2: 0
}
, // S_SGUN1
State_t {
sprite: Spritenum_t.spr_shtg, 
frame: 0, 
tics: 7, 
action: Actionf_t {
acv: a_fire_shotgun
}
, 
nextstate: Statenum_t.s_sgun_3, 
misc1: 0, 
misc2: 0
}
, // S_SGUN2
State_t {
sprite: Spritenum_t.spr_shtg, 
frame: 1, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sgun_4, 
misc1: 0, 
misc2: 0
}
, // S_SGUN3
State_t {
sprite: Spritenum_t.spr_shtg, 
frame: 2, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sgun_5, 
misc1: 0, 
misc2: 0
}
, // S_SGUN4
State_t {
sprite: Spritenum_t.spr_shtg, 
frame: 3, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sgun_6, 
misc1: 0, 
misc2: 0
}
, // S_SGUN5
State_t {
sprite: Spritenum_t.spr_shtg, 
frame: 2, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sgun_7, 
misc1: 0, 
misc2: 0
}
, // S_SGUN6
State_t {
sprite: Spritenum_t.spr_shtg, 
frame: 1, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sgun_8, 
misc1: 0, 
misc2: 0
}
, // S_SGUN7
State_t {
sprite: Spritenum_t.spr_shtg, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sgun_9, 
misc1: 0, 
misc2: 0
}
, // S_SGUN8
State_t {
sprite: Spritenum_t.spr_shtg, 
frame: 0, 
tics: 7, 
action: Actionf_t {
acv: a_re_fire
}
, 
nextstate: Statenum_t.s_sgun, 
misc1: 0, 
misc2: 0
}
, // S_SGUN9
State_t {
sprite: Spritenum_t.spr_shtf, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: a_light1
}
, 
nextstate: Statenum_t.s_sgunflash_2, 
misc1: 0, 
misc2: 0
}
, // S_SGUNFLASH1
State_t {
sprite: Spritenum_t.spr_shtf, 
frame: 32769, 
tics: 3, 
action: Actionf_t {
acv: a_light2
}
, 
nextstate: Statenum_t.s_lightdone, 
misc1: 0, 
misc2: 0
}
, // S_SGUNFLASH2
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_weapon_ready
}
, 
nextstate: Statenum_t.s_dsgun, 
misc1: 0, 
misc2: 0
}
, // S_DSGUN
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_lower
}
, 
nextstate: Statenum_t.s_dsgundown, 
misc1: 0, 
misc2: 0
}
, // S_DSGUNDOWN
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_raise
}
, 
nextstate: Statenum_t.s_dsgunup, 
misc1: 0, 
misc2: 0
}
, // S_DSGUNUP
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_dsgun_2, 
misc1: 0, 
misc2: 0
}
, // S_DSGUN1
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 0, 
tics: 7, 
action: Actionf_t {
acv: a_fire_shotgun2
}
, 
nextstate: Statenum_t.s_dsgun_3, 
misc1: 0, 
misc2: 0
}
, // S_DSGUN2
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 1, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_dsgun_4, 
misc1: 0, 
misc2: 0
}
, // S_DSGUN3
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 2, 
tics: 7, 
action: Actionf_t {
acv: a_check_reload
}
, 
nextstate: Statenum_t.s_dsgun_5, 
misc1: 0, 
misc2: 0
}
, // S_DSGUN4
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 3, 
tics: 7, 
action: Actionf_t {
acv: a_open_shotgun2
}
, 
nextstate: Statenum_t.s_dsgun_6, 
misc1: 0, 
misc2: 0
}
, // S_DSGUN5
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 4, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_dsgun_7, 
misc1: 0, 
misc2: 0
}
, // S_DSGUN6
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 5, 
tics: 7, 
action: Actionf_t {
acv: a_load_shotgun2
}
, 
nextstate: Statenum_t.s_dsgun_8, 
misc1: 0, 
misc2: 0
}
, // S_DSGUN7
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 6, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_dsgun_9, 
misc1: 0, 
misc2: 0
}
, // S_DSGUN8
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 7, 
tics: 6, 
action: Actionf_t {
acv: a_close_shotgun2
}
, 
nextstate: Statenum_t.s_dsgun_10, 
misc1: 0, 
misc2: 0
}
, // S_DSGUN9
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 0, 
tics: 5, 
action: Actionf_t {
acv: a_re_fire
}
, 
nextstate: Statenum_t.s_dsgun, 
misc1: 0, 
misc2: 0
}
, // S_DSGUN10
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 1, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_dsnr_2, 
misc1: 0, 
misc2: 0
}
, // S_DSNR1
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_dsgundown, 
misc1: 0, 
misc2: 0
}
, // S_DSNR2
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 32776, 
tics: 5, 
action: Actionf_t {
acv: a_light1
}
, 
nextstate: Statenum_t.s_dsgunflash_2, 
misc1: 0, 
misc2: 0
}
, // S_DSGUNFLASH1
State_t {
sprite: Spritenum_t.spr_sht_2, 
frame: 32777, 
tics: 4, 
action: Actionf_t {
acv: a_light2
}
, 
nextstate: Statenum_t.s_lightdone, 
misc1: 0, 
misc2: 0
}
, // S_DSGUNFLASH2
State_t {
sprite: Spritenum_t.spr_chgg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_weapon_ready
}
, 
nextstate: Statenum_t.s_chain, 
misc1: 0, 
misc2: 0
}
, // S_CHAIN
State_t {
sprite: Spritenum_t.spr_chgg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_lower
}
, 
nextstate: Statenum_t.s_chaindown, 
misc1: 0, 
misc2: 0
}
, // S_CHAINDOWN
State_t {
sprite: Spritenum_t.spr_chgg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_raise
}
, 
nextstate: Statenum_t.s_chainup, 
misc1: 0, 
misc2: 0
}
, // S_CHAINUP
State_t {
sprite: Spritenum_t.spr_chgg, 
frame: 0, 
tics: 4, 
action: Actionf_t {
acv: a_fire_cg_un
}
, 
nextstate: Statenum_t.s_chain_2, 
misc1: 0, 
misc2: 0
}
, // S_CHAIN1
State_t {
sprite: Spritenum_t.spr_chgg, 
frame: 1, 
tics: 4, 
action: Actionf_t {
acv: a_fire_cg_un
}
, 
nextstate: Statenum_t.s_chain_3, 
misc1: 0, 
misc2: 0
}
, // S_CHAIN2
State_t {
sprite: Spritenum_t.spr_chgg, 
frame: 1, 
tics: 0, 
action: Actionf_t {
acv: a_re_fire
}
, 
nextstate: Statenum_t.s_chain, 
misc1: 0, 
misc2: 0
}
, // S_CHAIN3
State_t {
sprite: Spritenum_t.spr_chgf, 
frame: 32768, 
tics: 5, 
action: Actionf_t {
acv: a_light1
}
, 
nextstate: Statenum_t.s_lightdone, 
misc1: 0, 
misc2: 0
}
, // S_CHAINFLASH1
State_t {
sprite: Spritenum_t.spr_chgf, 
frame: 32769, 
tics: 5, 
action: Actionf_t {
acv: a_light2
}
, 
nextstate: Statenum_t.s_lightdone, 
misc1: 0, 
misc2: 0
}
, // S_CHAINFLASH2
State_t {
sprite: Spritenum_t.spr_misg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_weapon_ready
}
, 
nextstate: Statenum_t.s_missile, 
misc1: 0, 
misc2: 0
}
, // S_MISSILE
State_t {
sprite: Spritenum_t.spr_misg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_lower
}
, 
nextstate: Statenum_t.s_missiledown, 
misc1: 0, 
misc2: 0
}
, // S_MISSILEDOWN
State_t {
sprite: Spritenum_t.spr_misg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_raise
}
, 
nextstate: Statenum_t.s_missileup, 
misc1: 0, 
misc2: 0
}
, // S_MISSILEUP
State_t {
sprite: Spritenum_t.spr_misg, 
frame: 1, 
tics: 8, 
action: Actionf_t {
acv: a_gun_flash
}
, 
nextstate: Statenum_t.s_missile_2, 
misc1: 0, 
misc2: 0
}
, // S_MISSILE1
State_t {
sprite: Spritenum_t.spr_misg, 
frame: 1, 
tics: 12, 
action: Actionf_t {
acv: a_fire_missile
}
, 
nextstate: Statenum_t.s_missile_3, 
misc1: 0, 
misc2: 0
}
, // S_MISSILE2
State_t {
sprite: Spritenum_t.spr_misg, 
frame: 1, 
tics: 0, 
action: Actionf_t {
acv: a_re_fire
}
, 
nextstate: Statenum_t.s_missile, 
misc1: 0, 
misc2: 0
}
, // S_MISSILE3
State_t {
sprite: Spritenum_t.spr_misf, 
frame: 32768, 
tics: 3, 
action: Actionf_t {
acv: a_light1
}
, 
nextstate: Statenum_t.s_missileflash_2, 
misc1: 0, 
misc2: 0
}
, // S_MISSILEFLASH1
State_t {
sprite: Spritenum_t.spr_misf, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_missileflash_3, 
misc1: 0, 
misc2: 0
}
, // S_MISSILEFLASH2
State_t {
sprite: Spritenum_t.spr_misf, 
frame: 32770, 
tics: 4, 
action: Actionf_t {
acv: a_light2
}
, 
nextstate: Statenum_t.s_missileflash_4, 
misc1: 0, 
misc2: 0
}
, // S_MISSILEFLASH3
State_t {
sprite: Spritenum_t.spr_misf, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: a_light2
}
, 
nextstate: Statenum_t.s_lightdone, 
misc1: 0, 
misc2: 0
}
, // S_MISSILEFLASH4
State_t {
sprite: Spritenum_t.spr_sawg, 
frame: 2, 
tics: 4, 
action: Actionf_t {
acv: a_weapon_ready
}
, 
nextstate: Statenum_t.s_sawb, 
misc1: 0, 
misc2: 0
}
, // S_SAW
State_t {
sprite: Spritenum_t.spr_sawg, 
frame: 3, 
tics: 4, 
action: Actionf_t {
acv: a_weapon_ready
}
, 
nextstate: Statenum_t.s_saw, 
misc1: 0, 
misc2: 0
}
, // S_SAWB
State_t {
sprite: Spritenum_t.spr_sawg, 
frame: 2, 
tics: 1, 
action: Actionf_t {
acv: a_lower
}
, 
nextstate: Statenum_t.s_sawdown, 
misc1: 0, 
misc2: 0
}
, // S_SAWDOWN
State_t {
sprite: Spritenum_t.spr_sawg, 
frame: 2, 
tics: 1, 
action: Actionf_t {
acv: a_raise
}
, 
nextstate: Statenum_t.s_sawup, 
misc1: 0, 
misc2: 0
}
, // S_SAWUP
State_t {
sprite: Spritenum_t.spr_sawg, 
frame: 0, 
tics: 4, 
action: Actionf_t {
acv: a_saw
}
, 
nextstate: Statenum_t.s_saw_2, 
misc1: 0, 
misc2: 0
}
, // S_SAW1
State_t {
sprite: Spritenum_t.spr_sawg, 
frame: 1, 
tics: 4, 
action: Actionf_t {
acv: a_saw
}
, 
nextstate: Statenum_t.s_saw_3, 
misc1: 0, 
misc2: 0
}
, // S_SAW2
State_t {
sprite: Spritenum_t.spr_sawg, 
frame: 1, 
tics: 0, 
action: Actionf_t {
acv: a_re_fire
}
, 
nextstate: Statenum_t.s_saw, 
misc1: 0, 
misc2: 0
}
, // S_SAW3
State_t {
sprite: Spritenum_t.spr_plsg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_weapon_ready
}
, 
nextstate: Statenum_t.s_plasma, 
misc1: 0, 
misc2: 0
}
, // S_PLASMA
State_t {
sprite: Spritenum_t.spr_plsg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_lower
}
, 
nextstate: Statenum_t.s_plasmadown, 
misc1: 0, 
misc2: 0
}
, // S_PLASMADOWN
State_t {
sprite: Spritenum_t.spr_plsg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_raise
}
, 
nextstate: Statenum_t.s_plasmaup, 
misc1: 0, 
misc2: 0
}
, // S_PLASMAUP
State_t {
sprite: Spritenum_t.spr_plsg, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_fire_plasma
}
, 
nextstate: Statenum_t.s_plasma_2, 
misc1: 0, 
misc2: 0
}
, // S_PLASMA1
State_t {
sprite: Spritenum_t.spr_plsg, 
frame: 1, 
tics: 20, 
action: Actionf_t {
acv: a_re_fire
}
, 
nextstate: Statenum_t.s_plasma, 
misc1: 0, 
misc2: 0
}
, // S_PLASMA2
State_t {
sprite: Spritenum_t.spr_plsf, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: a_light1
}
, 
nextstate: Statenum_t.s_lightdone, 
misc1: 0, 
misc2: 0
}
, // S_PLASMAFLASH1
State_t {
sprite: Spritenum_t.spr_plsf, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: a_light1
}
, 
nextstate: Statenum_t.s_lightdone, 
misc1: 0, 
misc2: 0
}
, // S_PLASMAFLASH2
State_t {
sprite: Spritenum_t.spr_bfgg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_weapon_ready
}
, 
nextstate: Statenum_t.s_bfg, 
misc1: 0, 
misc2: 0
}
, // S_BFG
State_t {
sprite: Spritenum_t.spr_bfgg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_lower
}
, 
nextstate: Statenum_t.s_bfgdown, 
misc1: 0, 
misc2: 0
}
, // S_BFGDOWN
State_t {
sprite: Spritenum_t.spr_bfgg, 
frame: 0, 
tics: 1, 
action: Actionf_t {
acv: a_raise
}
, 
nextstate: Statenum_t.s_bfgup, 
misc1: 0, 
misc2: 0
}
, // S_BFGUP
State_t {
sprite: Spritenum_t.spr_bfgg, 
frame: 0, 
tics: 20, 
action: Actionf_t {
acv: a_bfg_sound
}
, 
nextstate: Statenum_t.s_bfg_2, 
misc1: 0, 
misc2: 0
}
, // S_BFG1
State_t {
sprite: Spritenum_t.spr_bfgg, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_gun_flash
}
, 
nextstate: Statenum_t.s_bfg_3, 
misc1: 0, 
misc2: 0
}
, // S_BFG2
State_t {
sprite: Spritenum_t.spr_bfgg, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_fire_bfg
}
, 
nextstate: Statenum_t.s_bfg_4, 
misc1: 0, 
misc2: 0
}
, // S_BFG3
State_t {
sprite: Spritenum_t.spr_bfgg, 
frame: 1, 
tics: 20, 
action: Actionf_t {
acv: a_re_fire
}
, 
nextstate: Statenum_t.s_bfg, 
misc1: 0, 
misc2: 0
}
, // S_BFG4
State_t {
sprite: Spritenum_t.spr_bfgf, 
frame: 32768, 
tics: 11, 
action: Actionf_t {
acv: a_light1
}
, 
nextstate: Statenum_t.s_bfgflash_2, 
misc1: 0, 
misc2: 0
}
, // S_BFGFLASH1
State_t {
sprite: Spritenum_t.spr_bfgf, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: a_light2
}
, 
nextstate: Statenum_t.s_lightdone, 
misc1: 0, 
misc2: 0
}
, // S_BFGFLASH2
State_t {
sprite: Spritenum_t.spr_blud, 
frame: 2, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_blood_2, 
misc1: 0, 
misc2: 0
}
, // S_BLOOD1
State_t {
sprite: Spritenum_t.spr_blud, 
frame: 1, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_blood_3, 
misc1: 0, 
misc2: 0
}
, // S_BLOOD2
State_t {
sprite: Spritenum_t.spr_blud, 
frame: 0, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BLOOD3
State_t {
sprite: Spritenum_t.spr_puff, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_puff_2, 
misc1: 0, 
misc2: 0
}
, // S_PUFF1
State_t {
sprite: Spritenum_t.spr_puff, 
frame: 1, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_puff_3, 
misc1: 0, 
misc2: 0
}
, // S_PUFF2
State_t {
sprite: Spritenum_t.spr_puff, 
frame: 2, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_puff_4, 
misc1: 0, 
misc2: 0
}
, // S_PUFF3
State_t {
sprite: Spritenum_t.spr_puff, 
frame: 3, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_PUFF4
State_t {
sprite: Spritenum_t.spr_bal_1, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tball_2, 
misc1: 0, 
misc2: 0
}
, // S_TBALL1
State_t {
sprite: Spritenum_t.spr_bal_1, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tball_1, 
misc1: 0, 
misc2: 0
}
, // S_TBALL2
State_t {
sprite: Spritenum_t.spr_bal_1, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tballx_2, 
misc1: 0, 
misc2: 0
}
, // S_TBALLX1
State_t {
sprite: Spritenum_t.spr_bal_1, 
frame: 32771, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tballx_3, 
misc1: 0, 
misc2: 0
}
, // S_TBALLX2
State_t {
sprite: Spritenum_t.spr_bal_1, 
frame: 32772, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_TBALLX3
State_t {
sprite: Spritenum_t.spr_bal_2, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_rball_2, 
misc1: 0, 
misc2: 0
}
, // S_RBALL1
State_t {
sprite: Spritenum_t.spr_bal_2, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_rball_1, 
misc1: 0, 
misc2: 0
}
, // S_RBALL2
State_t {
sprite: Spritenum_t.spr_bal_2, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_rballx_2, 
misc1: 0, 
misc2: 0
}
, // S_RBALLX1
State_t {
sprite: Spritenum_t.spr_bal_2, 
frame: 32771, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_rballx_3, 
misc1: 0, 
misc2: 0
}
, // S_RBALLX2
State_t {
sprite: Spritenum_t.spr_bal_2, 
frame: 32772, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_RBALLX3
State_t {
sprite: Spritenum_t.spr_plss, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_plasball_2, 
misc1: 0, 
misc2: 0
}
, // S_PLASBALL
State_t {
sprite: Spritenum_t.spr_plss, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_plasball, 
misc1: 0, 
misc2: 0
}
, // S_PLASBALL2
State_t {
sprite: Spritenum_t.spr_plse, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_plasexp_2, 
misc1: 0, 
misc2: 0
}
, // S_PLASEXP
State_t {
sprite: Spritenum_t.spr_plse, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_plasexp_3, 
misc1: 0, 
misc2: 0
}
, // S_PLASEXP2
State_t {
sprite: Spritenum_t.spr_plse, 
frame: 32770, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_plasexp_4, 
misc1: 0, 
misc2: 0
}
, // S_PLASEXP3
State_t {
sprite: Spritenum_t.spr_plse, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_plasexp_5, 
misc1: 0, 
misc2: 0
}
, // S_PLASEXP4
State_t {
sprite: Spritenum_t.spr_plse, 
frame: 32772, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_PLASEXP5
State_t {
sprite: Spritenum_t.spr_misl, 
frame: 32768, 
tics: 1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_rocket, 
misc1: 0, 
misc2: 0
}
, // S_ROCKET
State_t {
sprite: Spritenum_t.spr_bfs_1, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bfgshot_2, 
misc1: 0, 
misc2: 0
}
, // S_BFGSHOT
State_t {
sprite: Spritenum_t.spr_bfs_1, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bfgshot, 
misc1: 0, 
misc2: 0
}
, // S_BFGSHOT2
State_t {
sprite: Spritenum_t.spr_bfe_1, 
frame: 32768, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bfgland_2, 
misc1: 0, 
misc2: 0
}
, // S_BFGLAND
State_t {
sprite: Spritenum_t.spr_bfe_1, 
frame: 32769, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bfgland_3, 
misc1: 0, 
misc2: 0
}
, // S_BFGLAND2
State_t {
sprite: Spritenum_t.spr_bfe_1, 
frame: 32770, 
tics: 8, 
action: Actionf_t {
acv: a_bfgs_pray
}
, 
nextstate: Statenum_t.s_bfgland_4, 
misc1: 0, 
misc2: 0
}
, // S_BFGLAND3
State_t {
sprite: Spritenum_t.spr_bfe_1, 
frame: 32771, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bfgland_5, 
misc1: 0, 
misc2: 0
}
, // S_BFGLAND4
State_t {
sprite: Spritenum_t.spr_bfe_1, 
frame: 32772, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bfgland_6, 
misc1: 0, 
misc2: 0
}
, // S_BFGLAND5
State_t {
sprite: Spritenum_t.spr_bfe_1, 
frame: 32773, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BFGLAND6
State_t {
sprite: Spritenum_t.spr_bfe_2, 
frame: 32768, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bfgexp_2, 
misc1: 0, 
misc2: 0
}
, // S_BFGEXP
State_t {
sprite: Spritenum_t.spr_bfe_2, 
frame: 32769, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bfgexp_3, 
misc1: 0, 
misc2: 0
}
, // S_BFGEXP2
State_t {
sprite: Spritenum_t.spr_bfe_2, 
frame: 32770, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bfgexp_4, 
misc1: 0, 
misc2: 0
}
, // S_BFGEXP3
State_t {
sprite: Spritenum_t.spr_bfe_2, 
frame: 32771, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BFGEXP4
State_t {
sprite: Spritenum_t.spr_misl, 
frame: 32769, 
tics: 8, 
action: Actionf_t {
acv: a_explode
}
, 
nextstate: Statenum_t.s_explode_2, 
misc1: 0, 
misc2: 0
}
, // S_EXPLODE1
State_t {
sprite: Spritenum_t.spr_misl, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_explode_3, 
misc1: 0, 
misc2: 0
}
, // S_EXPLODE2
State_t {
sprite: Spritenum_t.spr_misl, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_EXPLODE3
State_t {
sprite: Spritenum_t.spr_tfog, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tfog_01, 
misc1: 0, 
misc2: 0
}
, // S_TFOG
State_t {
sprite: Spritenum_t.spr_tfog, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tfog_02, 
misc1: 0, 
misc2: 0
}
, // S_TFOG01
State_t {
sprite: Spritenum_t.spr_tfog, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tfog_2, 
misc1: 0, 
misc2: 0
}
, // S_TFOG02
State_t {
sprite: Spritenum_t.spr_tfog, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tfog_3, 
misc1: 0, 
misc2: 0
}
, // S_TFOG2
State_t {
sprite: Spritenum_t.spr_tfog, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tfog_4, 
misc1: 0, 
misc2: 0
}
, // S_TFOG3
State_t {
sprite: Spritenum_t.spr_tfog, 
frame: 32771, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tfog_5, 
misc1: 0, 
misc2: 0
}
, // S_TFOG4
State_t {
sprite: Spritenum_t.spr_tfog, 
frame: 32772, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tfog_6, 
misc1: 0, 
misc2: 0
}
, // S_TFOG5
State_t {
sprite: Spritenum_t.spr_tfog, 
frame: 32773, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tfog_7, 
misc1: 0, 
misc2: 0
}
, // S_TFOG6
State_t {
sprite: Spritenum_t.spr_tfog, 
frame: 32774, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tfog_8, 
misc1: 0, 
misc2: 0
}
, // S_TFOG7
State_t {
sprite: Spritenum_t.spr_tfog, 
frame: 32775, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tfog_9, 
misc1: 0, 
misc2: 0
}
, // S_TFOG8
State_t {
sprite: Spritenum_t.spr_tfog, 
frame: 32776, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tfog_10, 
misc1: 0, 
misc2: 0
}
, // S_TFOG9
State_t {
sprite: Spritenum_t.spr_tfog, 
frame: 32777, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_TFOG10
State_t {
sprite: Spritenum_t.spr_ifog, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_ifog_01, 
misc1: 0, 
misc2: 0
}
, // S_IFOG
State_t {
sprite: Spritenum_t.spr_ifog, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_ifog_02, 
misc1: 0, 
misc2: 0
}
, // S_IFOG01
State_t {
sprite: Spritenum_t.spr_ifog, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_ifog_2, 
misc1: 0, 
misc2: 0
}
, // S_IFOG02
State_t {
sprite: Spritenum_t.spr_ifog, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_ifog_3, 
misc1: 0, 
misc2: 0
}
, // S_IFOG2
State_t {
sprite: Spritenum_t.spr_ifog, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_ifog_4, 
misc1: 0, 
misc2: 0
}
, // S_IFOG3
State_t {
sprite: Spritenum_t.spr_ifog, 
frame: 32771, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_ifog_5, 
misc1: 0, 
misc2: 0
}
, // S_IFOG4
State_t {
sprite: Spritenum_t.spr_ifog, 
frame: 32772, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_IFOG5
State_t {
sprite: Spritenum_t.spr_play, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_PLAY
State_t {
sprite: Spritenum_t.spr_play, 
frame: 0, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_run_2, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_RUN1
State_t {
sprite: Spritenum_t.spr_play, 
frame: 1, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_run_3, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_RUN2
State_t {
sprite: Spritenum_t.spr_play, 
frame: 2, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_run_4, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_RUN3
State_t {
sprite: Spritenum_t.spr_play, 
frame: 3, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_run_1, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_RUN4
State_t {
sprite: Spritenum_t.spr_play, 
frame: 4, 
tics: 12, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_ATK1
State_t {
sprite: Spritenum_t.spr_play, 
frame: 32773, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_atk_1, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_ATK2
State_t {
sprite: Spritenum_t.spr_play, 
frame: 6, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_PAIN
State_t {
sprite: Spritenum_t.spr_play, 
frame: 6, 
tics: 4, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_play, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_PAIN2
State_t {
sprite: Spritenum_t.spr_play, 
frame: 7, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_die_2, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_DIE1
State_t {
sprite: Spritenum_t.spr_play, 
frame: 8, 
tics: 10, 
action: Actionf_t {
acv: a_player_scream
}
, 
nextstate: Statenum_t.s_play_die_3, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_DIE2
State_t {
sprite: Spritenum_t.spr_play, 
frame: 9, 
tics: 10, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_play_die_4, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_DIE3
State_t {
sprite: Spritenum_t.spr_play, 
frame: 10, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_die_5, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_DIE4
State_t {
sprite: Spritenum_t.spr_play, 
frame: 11, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_die_6, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_DIE5
State_t {
sprite: Spritenum_t.spr_play, 
frame: 12, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_die_7, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_DIE6
State_t {
sprite: Spritenum_t.spr_play, 
frame: 13, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_DIE7
State_t {
sprite: Spritenum_t.spr_play, 
frame: 14, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_xdie_2, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_XDIE1
State_t {
sprite: Spritenum_t.spr_play, 
frame: 15, 
tics: 5, 
action: Actionf_t {
acv: a_xs_cream
}
, 
nextstate: Statenum_t.s_play_xdie_3, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_XDIE2
State_t {
sprite: Spritenum_t.spr_play, 
frame: 16, 
tics: 5, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_play_xdie_4, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_XDIE3
State_t {
sprite: Spritenum_t.spr_play, 
frame: 17, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_xdie_5, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_XDIE4
State_t {
sprite: Spritenum_t.spr_play, 
frame: 18, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_xdie_6, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_XDIE5
State_t {
sprite: Spritenum_t.spr_play, 
frame: 19, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_xdie_7, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_XDIE6
State_t {
sprite: Spritenum_t.spr_play, 
frame: 20, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_xdie_8, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_XDIE7
State_t {
sprite: Spritenum_t.spr_play, 
frame: 21, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_play_xdie_9, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_XDIE8
State_t {
sprite: Spritenum_t.spr_play, 
frame: 22, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_PLAY_XDIE9
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_poss_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_POSS_STND
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_poss_stnd, 
misc1: 0, 
misc2: 0
}
, // S_POSS_STND2
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 0, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_poss_run_2, 
misc1: 0, 
misc2: 0
}
, // S_POSS_RUN1
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 0, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_poss_run_3, 
misc1: 0, 
misc2: 0
}
, // S_POSS_RUN2
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 1, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_poss_run_4, 
misc1: 0, 
misc2: 0
}
, // S_POSS_RUN3
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 1, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_poss_run_5, 
misc1: 0, 
misc2: 0
}
, // S_POSS_RUN4
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 2, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_poss_run_6, 
misc1: 0, 
misc2: 0
}
, // S_POSS_RUN5
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 2, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_poss_run_7, 
misc1: 0, 
misc2: 0
}
, // S_POSS_RUN6
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 3, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_poss_run_8, 
misc1: 0, 
misc2: 0
}
, // S_POSS_RUN7
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 3, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_poss_run_1, 
misc1: 0, 
misc2: 0
}
, // S_POSS_RUN8
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 4, 
tics: 10, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_poss_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_POSS_ATK1
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 5, 
tics: 8, 
action: Actionf_t {
acv: a_pos_attack
}
, 
nextstate: Statenum_t.s_poss_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_POSS_ATK2
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 4, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_poss_run_1, 
misc1: 0, 
misc2: 0
}
, // S_POSS_ATK3
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 6, 
tics: 3, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_poss_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_POSS_PAIN
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 6, 
tics: 3, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_poss_run_1, 
misc1: 0, 
misc2: 0
}
, // S_POSS_PAIN2
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 7, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_poss_die_2, 
misc1: 0, 
misc2: 0
}
, // S_POSS_DIE1
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 8, 
tics: 5, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_poss_die_3, 
misc1: 0, 
misc2: 0
}
, // S_POSS_DIE2
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 9, 
tics: 5, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_poss_die_4, 
misc1: 0, 
misc2: 0
}
, // S_POSS_DIE3
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 10, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_poss_die_5, 
misc1: 0, 
misc2: 0
}
, // S_POSS_DIE4
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 11, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_POSS_DIE5
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 12, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_poss_xdie_2, 
misc1: 0, 
misc2: 0
}
, // S_POSS_XDIE1
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 13, 
tics: 5, 
action: Actionf_t {
acv: a_xs_cream
}
, 
nextstate: Statenum_t.s_poss_xdie_3, 
misc1: 0, 
misc2: 0
}
, // S_POSS_XDIE2
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 14, 
tics: 5, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_poss_xdie_4, 
misc1: 0, 
misc2: 0
}
, // S_POSS_XDIE3
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 15, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_poss_xdie_5, 
misc1: 0, 
misc2: 0
}
, // S_POSS_XDIE4
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 16, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_poss_xdie_6, 
misc1: 0, 
misc2: 0
}
, // S_POSS_XDIE5
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 17, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_poss_xdie_7, 
misc1: 0, 
misc2: 0
}
, // S_POSS_XDIE6
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 18, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_poss_xdie_8, 
misc1: 0, 
misc2: 0
}
, // S_POSS_XDIE7
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 19, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_poss_xdie_9, 
misc1: 0, 
misc2: 0
}
, // S_POSS_XDIE8
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 20, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_POSS_XDIE9
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 10, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_poss_raise_2, 
misc1: 0, 
misc2: 0
}
, // S_POSS_RAISE1
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 9, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_poss_raise_3, 
misc1: 0, 
misc2: 0
}
, // S_POSS_RAISE2
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 8, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_poss_raise_4, 
misc1: 0, 
misc2: 0
}
, // S_POSS_RAISE3
State_t {
sprite: Spritenum_t.spr_poss, 
frame: 7, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_poss_run_1, 
misc1: 0, 
misc2: 0
}
, // S_POSS_RAISE4
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_spos_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_STND
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_spos_stnd, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_STND2
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spos_run_2, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_RUN1
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spos_run_3, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_RUN2
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spos_run_4, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_RUN3
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spos_run_5, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_RUN4
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spos_run_6, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_RUN5
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spos_run_7, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_RUN6
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spos_run_8, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_RUN7
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spos_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_RUN8
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 4, 
tics: 10, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_spos_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_ATK1
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 32773, 
tics: 10, 
action: Actionf_t {
acv: a_sp_os_attack
}
, 
nextstate: Statenum_t.s_spos_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_ATK2
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 4, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_ATK3
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 6, 
tics: 3, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_PAIN
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 6, 
tics: 3, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_spos_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_PAIN2
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 7, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_die_2, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_DIE1
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 8, 
tics: 5, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_spos_die_3, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_DIE2
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 9, 
tics: 5, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_spos_die_4, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_DIE3
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 10, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_die_5, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_DIE4
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 11, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_DIE5
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 12, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_xdie_2, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_XDIE1
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 13, 
tics: 5, 
action: Actionf_t {
acv: a_xs_cream
}
, 
nextstate: Statenum_t.s_spos_xdie_3, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_XDIE2
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 14, 
tics: 5, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_spos_xdie_4, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_XDIE3
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 15, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_xdie_5, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_XDIE4
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 16, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_xdie_6, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_XDIE5
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 17, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_xdie_7, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_XDIE6
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 18, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_xdie_8, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_XDIE7
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 19, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_xdie_9, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_XDIE8
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 20, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_XDIE9
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 11, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_raise_2, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_RAISE1
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 10, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_raise_3, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_RAISE2
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 9, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_raise_4, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_RAISE3
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 8, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_raise_5, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_RAISE4
State_t {
sprite: Spritenum_t.spr_spos, 
frame: 7, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spos_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SPOS_RAISE5
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_vile_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_VILE_STND
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_vile_stnd, 
misc1: 0, 
misc2: 0
}
, // S_VILE_STND2
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 0, 
tics: 2, 
action: Actionf_t {
acv: a_vile_chase
}
, 
nextstate: Statenum_t.s_vile_run_2, 
misc1: 0, 
misc2: 0
}
, // S_VILE_RUN1
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 0, 
tics: 2, 
action: Actionf_t {
acv: a_vile_chase
}
, 
nextstate: Statenum_t.s_vile_run_3, 
misc1: 0, 
misc2: 0
}
, // S_VILE_RUN2
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 1, 
tics: 2, 
action: Actionf_t {
acv: a_vile_chase
}
, 
nextstate: Statenum_t.s_vile_run_4, 
misc1: 0, 
misc2: 0
}
, // S_VILE_RUN3
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 1, 
tics: 2, 
action: Actionf_t {
acv: a_vile_chase
}
, 
nextstate: Statenum_t.s_vile_run_5, 
misc1: 0, 
misc2: 0
}
, // S_VILE_RUN4
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 2, 
tics: 2, 
action: Actionf_t {
acv: a_vile_chase
}
, 
nextstate: Statenum_t.s_vile_run_6, 
misc1: 0, 
misc2: 0
}
, // S_VILE_RUN5
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 2, 
tics: 2, 
action: Actionf_t {
acv: a_vile_chase
}
, 
nextstate: Statenum_t.s_vile_run_7, 
misc1: 0, 
misc2: 0
}
, // S_VILE_RUN6
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 3, 
tics: 2, 
action: Actionf_t {
acv: a_vile_chase
}
, 
nextstate: Statenum_t.s_vile_run_8, 
misc1: 0, 
misc2: 0
}
, // S_VILE_RUN7
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 3, 
tics: 2, 
action: Actionf_t {
acv: a_vile_chase
}
, 
nextstate: Statenum_t.s_vile_run_9, 
misc1: 0, 
misc2: 0
}
, // S_VILE_RUN8
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 4, 
tics: 2, 
action: Actionf_t {
acv: a_vile_chase
}
, 
nextstate: Statenum_t.s_vile_run_10, 
misc1: 0, 
misc2: 0
}
, // S_VILE_RUN9
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 4, 
tics: 2, 
action: Actionf_t {
acv: a_vile_chase
}
, 
nextstate: Statenum_t.s_vile_run_11, 
misc1: 0, 
misc2: 0
}
, // S_VILE_RUN10
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 5, 
tics: 2, 
action: Actionf_t {
acv: a_vile_chase
}
, 
nextstate: Statenum_t.s_vile_run_12, 
misc1: 0, 
misc2: 0
}
, // S_VILE_RUN11
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 5, 
tics: 2, 
action: Actionf_t {
acv: a_vile_chase
}
, 
nextstate: Statenum_t.s_vile_run_1, 
misc1: 0, 
misc2: 0
}
, // S_VILE_RUN12
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 32774, 
tics: 0, 
action: Actionf_t {
acv: a_vile_start
}
, 
nextstate: Statenum_t.s_vile_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_VILE_ATK1
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 32774, 
tics: 10, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_vile_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_VILE_ATK2
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 32775, 
tics: 8, 
action: Actionf_t {
acv: a_vile_target
}
, 
nextstate: Statenum_t.s_vile_atk_4, 
misc1: 0, 
misc2: 0
}
, // S_VILE_ATK3
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 32776, 
tics: 8, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_vile_atk_5, 
misc1: 0, 
misc2: 0
}
, // S_VILE_ATK4
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 32777, 
tics: 8, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_vile_atk_6, 
misc1: 0, 
misc2: 0
}
, // S_VILE_ATK5
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 32778, 
tics: 8, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_vile_atk_7, 
misc1: 0, 
misc2: 0
}
, // S_VILE_ATK6
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 32779, 
tics: 8, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_vile_atk_8, 
misc1: 0, 
misc2: 0
}
, // S_VILE_ATK7
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 32780, 
tics: 8, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_vile_atk_9, 
misc1: 0, 
misc2: 0
}
, // S_VILE_ATK8
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 32781, 
tics: 8, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_vile_atk_10, 
misc1: 0, 
misc2: 0
}
, // S_VILE_ATK9
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 32782, 
tics: 8, 
action: Actionf_t {
acv: a_vile_attack
}
, 
nextstate: Statenum_t.s_vile_atk_11, 
misc1: 0, 
misc2: 0
}
, // S_VILE_ATK10
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 32783, 
tics: 20, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_vile_run_1, 
misc1: 0, 
misc2: 0
}
, // S_VILE_ATK11
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 32794, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_vile_heal_2, 
misc1: 0, 
misc2: 0
}
, // S_VILE_HEAL1
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 32795, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_vile_heal_3, 
misc1: 0, 
misc2: 0
}
, // S_VILE_HEAL2
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 32796, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_vile_run_1, 
misc1: 0, 
misc2: 0
}
, // S_VILE_HEAL3
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 16, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_vile_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_VILE_PAIN
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 16, 
tics: 5, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_vile_run_1, 
misc1: 0, 
misc2: 0
}
, // S_VILE_PAIN2
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 16, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_vile_die_2, 
misc1: 0, 
misc2: 0
}
, // S_VILE_DIE1
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 17, 
tics: 7, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_vile_die_3, 
misc1: 0, 
misc2: 0
}
, // S_VILE_DIE2
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 18, 
tics: 7, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_vile_die_4, 
misc1: 0, 
misc2: 0
}
, // S_VILE_DIE3
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 19, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_vile_die_5, 
misc1: 0, 
misc2: 0
}
, // S_VILE_DIE4
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 20, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_vile_die_6, 
misc1: 0, 
misc2: 0
}
, // S_VILE_DIE5
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 21, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_vile_die_7, 
misc1: 0, 
misc2: 0
}
, // S_VILE_DIE6
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 22, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_vile_die_8, 
misc1: 0, 
misc2: 0
}
, // S_VILE_DIE7
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 23, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_vile_die_9, 
misc1: 0, 
misc2: 0
}
, // S_VILE_DIE8
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 24, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_vile_die_10, 
misc1: 0, 
misc2: 0
}
, // S_VILE_DIE9
State_t {
sprite: Spritenum_t.spr_vile, 
frame: 25, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_VILE_DIE10
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32768, 
tics: 2, 
action: Actionf_t {
acv: a_start_fire
}
, 
nextstate: Statenum_t.s_fire_2, 
misc1: 0, 
misc2: 0
}
, // S_FIRE1
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32769, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_3, 
misc1: 0, 
misc2: 0
}
, // S_FIRE2
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32768, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_4, 
misc1: 0, 
misc2: 0
}
, // S_FIRE3
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32769, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_5, 
misc1: 0, 
misc2: 0
}
, // S_FIRE4
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32770, 
tics: 2, 
action: Actionf_t {
acv: a_fire_crackle
}
, 
nextstate: Statenum_t.s_fire_6, 
misc1: 0, 
misc2: 0
}
, // S_FIRE5
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32769, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_7, 
misc1: 0, 
misc2: 0
}
, // S_FIRE6
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32770, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_8, 
misc1: 0, 
misc2: 0
}
, // S_FIRE7
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32769, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_9, 
misc1: 0, 
misc2: 0
}
, // S_FIRE8
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32770, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_10, 
misc1: 0, 
misc2: 0
}
, // S_FIRE9
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32771, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_11, 
misc1: 0, 
misc2: 0
}
, // S_FIRE10
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32770, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_12, 
misc1: 0, 
misc2: 0
}
, // S_FIRE11
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32771, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_13, 
misc1: 0, 
misc2: 0
}
, // S_FIRE12
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32770, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_14, 
misc1: 0, 
misc2: 0
}
, // S_FIRE13
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32771, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_15, 
misc1: 0, 
misc2: 0
}
, // S_FIRE14
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32772, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_16, 
misc1: 0, 
misc2: 0
}
, // S_FIRE15
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32771, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_17, 
misc1: 0, 
misc2: 0
}
, // S_FIRE16
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32772, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_18, 
misc1: 0, 
misc2: 0
}
, // S_FIRE17
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32771, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_19, 
misc1: 0, 
misc2: 0
}
, // S_FIRE18
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32772, 
tics: 2, 
action: Actionf_t {
acv: a_fire_crackle
}
, 
nextstate: Statenum_t.s_fire_20, 
misc1: 0, 
misc2: 0
}
, // S_FIRE19
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32773, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_21, 
misc1: 0, 
misc2: 0
}
, // S_FIRE20
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32772, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_22, 
misc1: 0, 
misc2: 0
}
, // S_FIRE21
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32773, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_23, 
misc1: 0, 
misc2: 0
}
, // S_FIRE22
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32772, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_24, 
misc1: 0, 
misc2: 0
}
, // S_FIRE23
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32773, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_25, 
misc1: 0, 
misc2: 0
}
, // S_FIRE24
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32774, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_26, 
misc1: 0, 
misc2: 0
}
, // S_FIRE25
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32775, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_27, 
misc1: 0, 
misc2: 0
}
, // S_FIRE26
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32774, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_28, 
misc1: 0, 
misc2: 0
}
, // S_FIRE27
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32775, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_29, 
misc1: 0, 
misc2: 0
}
, // S_FIRE28
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32774, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_fire_30, 
misc1: 0, 
misc2: 0
}
, // S_FIRE29
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32775, 
tics: 2, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_FIRE30
State_t {
sprite: Spritenum_t.spr_puff, 
frame: 1, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_smoke_2, 
misc1: 0, 
misc2: 0
}
, // S_SMOKE1
State_t {
sprite: Spritenum_t.spr_puff, 
frame: 2, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_smoke_3, 
misc1: 0, 
misc2: 0
}
, // S_SMOKE2
State_t {
sprite: Spritenum_t.spr_puff, 
frame: 1, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_smoke_4, 
misc1: 0, 
misc2: 0
}
, // S_SMOKE3
State_t {
sprite: Spritenum_t.spr_puff, 
frame: 2, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_smoke_5, 
misc1: 0, 
misc2: 0
}
, // S_SMOKE4
State_t {
sprite: Spritenum_t.spr_puff, 
frame: 3, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SMOKE5
State_t {
sprite: Spritenum_t.spr_fatb, 
frame: 32768, 
tics: 2, 
action: Actionf_t {
acv: a_tracer
}
, 
nextstate: Statenum_t.s_tracer_2, 
misc1: 0, 
misc2: 0
}
, // S_TRACER
State_t {
sprite: Spritenum_t.spr_fatb, 
frame: 32769, 
tics: 2, 
action: Actionf_t {
acv: a_tracer
}
, 
nextstate: Statenum_t.s_tracer, 
misc1: 0, 
misc2: 0
}
, // S_TRACER2
State_t {
sprite: Spritenum_t.spr_fbxp, 
frame: 32768, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_traceexp_2, 
misc1: 0, 
misc2: 0
}
, // S_TRACEEXP1
State_t {
sprite: Spritenum_t.spr_fbxp, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_traceexp_3, 
misc1: 0, 
misc2: 0
}
, // S_TRACEEXP2
State_t {
sprite: Spritenum_t.spr_fbxp, 
frame: 32770, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_TRACEEXP3
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_skel_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_STND
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_skel_stnd, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_STND2
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 0, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_skel_run_2, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RUN1
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 0, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_skel_run_3, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RUN2
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 1, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_skel_run_4, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RUN3
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 1, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_skel_run_5, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RUN4
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 2, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_skel_run_6, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RUN5
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 2, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_skel_run_7, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RUN6
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 3, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_skel_run_8, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RUN7
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 3, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_skel_run_9, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RUN8
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 4, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_skel_run_10, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RUN9
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 4, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_skel_run_11, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RUN10
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 5, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_skel_run_12, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RUN11
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 5, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_skel_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RUN12
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 6, 
tics: 0, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_skel_fist_2, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_FIST1
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 6, 
tics: 6, 
action: Actionf_t {
acv: a_skel_whoosh
}
, 
nextstate: Statenum_t.s_skel_fist_3, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_FIST2
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 7, 
tics: 6, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_skel_fist_4, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_FIST3
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 8, 
tics: 6, 
action: Actionf_t {
acv: a_skel_fist
}
, 
nextstate: Statenum_t.s_skel_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_FIST4
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 32777, 
tics: 0, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_skel_miss_2, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_MISS1
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 32777, 
tics: 10, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_skel_miss_3, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_MISS2
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 10, 
tics: 10, 
action: Actionf_t {
acv: a_skel_missile
}
, 
nextstate: Statenum_t.s_skel_miss_4, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_MISS3
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 10, 
tics: 10, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_skel_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_MISS4
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 11, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skel_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_PAIN
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 11, 
tics: 5, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_skel_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_PAIN2
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 11, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skel_die_2, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_DIE1
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 12, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skel_die_3, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_DIE2
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 13, 
tics: 7, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_skel_die_4, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_DIE3
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 14, 
tics: 7, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_skel_die_5, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_DIE4
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 15, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skel_die_6, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_DIE5
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 16, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_DIE6
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 16, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skel_raise_2, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RAISE1
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 15, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skel_raise_3, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RAISE2
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 14, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skel_raise_4, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RAISE3
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 13, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skel_raise_5, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RAISE4
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 12, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skel_raise_6, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RAISE5
State_t {
sprite: Spritenum_t.spr_skel, 
frame: 11, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skel_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SKEL_RAISE6
State_t {
sprite: Spritenum_t.spr_manf, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatshot_2, 
misc1: 0, 
misc2: 0
}
, // S_FATSHOT1
State_t {
sprite: Spritenum_t.spr_manf, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatshot_1, 
misc1: 0, 
misc2: 0
}
, // S_FATSHOT2
State_t {
sprite: Spritenum_t.spr_misl, 
frame: 32769, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatshotx_2, 
misc1: 0, 
misc2: 0
}
, // S_FATSHOTX1
State_t {
sprite: Spritenum_t.spr_misl, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatshotx_3, 
misc1: 0, 
misc2: 0
}
, // S_FATSHOTX2
State_t {
sprite: Spritenum_t.spr_misl, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_FATSHOTX3
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 0, 
tics: 15, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_fatt_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_FATT_STND
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 1, 
tics: 15, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_fatt_stnd, 
misc1: 0, 
misc2: 0
}
, // S_FATT_STND2
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 0, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_fatt_run_2, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RUN1
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 0, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_fatt_run_3, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RUN2
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 1, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_fatt_run_4, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RUN3
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 1, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_fatt_run_5, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RUN4
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 2, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_fatt_run_6, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RUN5
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 2, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_fatt_run_7, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RUN6
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 3, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_fatt_run_8, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RUN7
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 3, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_fatt_run_9, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RUN8
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 4, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_fatt_run_10, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RUN9
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 4, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_fatt_run_11, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RUN10
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 5, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_fatt_run_12, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RUN11
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 5, 
tics: 4, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_fatt_run_1, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RUN12
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 6, 
tics: 20, 
action: Actionf_t {
acv: a_fat_raise
}
, 
nextstate: Statenum_t.s_fatt_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_FATT_ATK1
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 32775, 
tics: 10, 
action: Actionf_t {
acv: a_fat_attack1
}
, 
nextstate: Statenum_t.s_fatt_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_FATT_ATK2
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 8, 
tics: 5, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_fatt_atk_4, 
misc1: 0, 
misc2: 0
}
, // S_FATT_ATK3
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 6, 
tics: 5, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_fatt_atk_5, 
misc1: 0, 
misc2: 0
}
, // S_FATT_ATK4
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 32775, 
tics: 10, 
action: Actionf_t {
acv: a_fat_attack2
}
, 
nextstate: Statenum_t.s_fatt_atk_6, 
misc1: 0, 
misc2: 0
}
, // S_FATT_ATK5
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 8, 
tics: 5, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_fatt_atk_7, 
misc1: 0, 
misc2: 0
}
, // S_FATT_ATK6
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 6, 
tics: 5, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_fatt_atk_8, 
misc1: 0, 
misc2: 0
}
, // S_FATT_ATK7
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 32775, 
tics: 10, 
action: Actionf_t {
acv: a_fat_attack3
}
, 
nextstate: Statenum_t.s_fatt_atk_9, 
misc1: 0, 
misc2: 0
}
, // S_FATT_ATK8
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 8, 
tics: 5, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_fatt_atk_10, 
misc1: 0, 
misc2: 0
}
, // S_FATT_ATK9
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 6, 
tics: 5, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_fatt_run_1, 
misc1: 0, 
misc2: 0
}
, // S_FATT_ATK10
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 9, 
tics: 3, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_FATT_PAIN
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 9, 
tics: 3, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_fatt_run_1, 
misc1: 0, 
misc2: 0
}
, // S_FATT_PAIN2
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 10, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_die_2, 
misc1: 0, 
misc2: 0
}
, // S_FATT_DIE1
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 11, 
tics: 6, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_fatt_die_3, 
misc1: 0, 
misc2: 0
}
, // S_FATT_DIE2
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 12, 
tics: 6, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_fatt_die_4, 
misc1: 0, 
misc2: 0
}
, // S_FATT_DIE3
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 13, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_die_5, 
misc1: 0, 
misc2: 0
}
, // S_FATT_DIE4
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 14, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_die_6, 
misc1: 0, 
misc2: 0
}
, // S_FATT_DIE5
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 15, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_die_7, 
misc1: 0, 
misc2: 0
}
, // S_FATT_DIE6
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 16, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_die_8, 
misc1: 0, 
misc2: 0
}
, // S_FATT_DIE7
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 17, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_die_9, 
misc1: 0, 
misc2: 0
}
, // S_FATT_DIE8
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 18, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_die_10, 
misc1: 0, 
misc2: 0
}
, // S_FATT_DIE9
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 19, 
tics: -1, 
action: Actionf_t {
acv: a_boss_death
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_FATT_DIE10
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 17, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_raise_2, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RAISE1
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 16, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_raise_3, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RAISE2
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 15, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_raise_4, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RAISE3
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 14, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_raise_5, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RAISE4
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 13, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_raise_6, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RAISE5
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 12, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_raise_7, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RAISE6
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 11, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_raise_8, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RAISE7
State_t {
sprite: Spritenum_t.spr_fatt, 
frame: 10, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_fatt_run_1, 
misc1: 0, 
misc2: 0
}
, // S_FATT_RAISE8
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_cpos_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_STND
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_cpos_stnd, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_STND2
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_cpos_run_2, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RUN1
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_cpos_run_3, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RUN2
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_cpos_run_4, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RUN3
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_cpos_run_5, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RUN4
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_cpos_run_6, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RUN5
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_cpos_run_7, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RUN6
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_cpos_run_8, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RUN7
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_cpos_run_1, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RUN8
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 4, 
tics: 10, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_cpos_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_ATK1
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 32773, 
tics: 4, 
action: Actionf_t {
acv: a_cp_os_attack
}
, 
nextstate: Statenum_t.s_cpos_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_ATK2
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 32772, 
tics: 4, 
action: Actionf_t {
acv: a_cp_os_attack
}
, 
nextstate: Statenum_t.s_cpos_atk_4, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_ATK3
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 5, 
tics: 1, 
action: Actionf_t {
acv: a_cp_os_refire
}
, 
nextstate: Statenum_t.s_cpos_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_ATK4
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 6, 
tics: 3, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_PAIN
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 6, 
tics: 3, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_cpos_run_1, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_PAIN2
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 7, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_die_2, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_DIE1
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 8, 
tics: 5, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_cpos_die_3, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_DIE2
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 9, 
tics: 5, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_cpos_die_4, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_DIE3
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 10, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_die_5, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_DIE4
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 11, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_die_6, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_DIE5
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 12, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_die_7, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_DIE6
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 13, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_DIE7
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 14, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_xdie_2, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_XDIE1
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 15, 
tics: 5, 
action: Actionf_t {
acv: a_xs_cream
}
, 
nextstate: Statenum_t.s_cpos_xdie_3, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_XDIE2
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 16, 
tics: 5, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_cpos_xdie_4, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_XDIE3
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 17, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_xdie_5, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_XDIE4
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 18, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_xdie_6, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_XDIE5
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 19, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_XDIE6
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 13, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_raise_2, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RAISE1
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 12, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_raise_3, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RAISE2
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 11, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_raise_4, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RAISE3
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 10, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_raise_5, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RAISE4
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 9, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_raise_6, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RAISE5
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 8, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_raise_7, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RAISE6
State_t {
sprite: Spritenum_t.spr_cpos, 
frame: 7, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cpos_run_1, 
misc1: 0, 
misc2: 0
}
, // S_CPOS_RAISE7
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_troo_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_TROO_STND
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_troo_stnd, 
misc1: 0, 
misc2: 0
}
, // S_TROO_STND2
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_troo_run_2, 
misc1: 0, 
misc2: 0
}
, // S_TROO_RUN1
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_troo_run_3, 
misc1: 0, 
misc2: 0
}
, // S_TROO_RUN2
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_troo_run_4, 
misc1: 0, 
misc2: 0
}
, // S_TROO_RUN3
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_troo_run_5, 
misc1: 0, 
misc2: 0
}
, // S_TROO_RUN4
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_troo_run_6, 
misc1: 0, 
misc2: 0
}
, // S_TROO_RUN5
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_troo_run_7, 
misc1: 0, 
misc2: 0
}
, // S_TROO_RUN6
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_troo_run_8, 
misc1: 0, 
misc2: 0
}
, // S_TROO_RUN7
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_troo_run_1, 
misc1: 0, 
misc2: 0
}
, // S_TROO_RUN8
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 4, 
tics: 8, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_troo_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_TROO_ATK1
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 5, 
tics: 8, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_troo_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_TROO_ATK2
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 6, 
tics: 6, 
action: Actionf_t {
acv: a_troop_attack
}
, 
nextstate: Statenum_t.s_troo_run_1, 
misc1: 0, 
misc2: 0
}
, // S_TROO_ATK3
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 7, 
tics: 2, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_troo_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_TROO_PAIN
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 7, 
tics: 2, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_troo_run_1, 
misc1: 0, 
misc2: 0
}
, // S_TROO_PAIN2
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 8, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_troo_die_2, 
misc1: 0, 
misc2: 0
}
, // S_TROO_DIE1
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 9, 
tics: 8, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_troo_die_3, 
misc1: 0, 
misc2: 0
}
, // S_TROO_DIE2
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 10, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_troo_die_4, 
misc1: 0, 
misc2: 0
}
, // S_TROO_DIE3
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 11, 
tics: 6, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_troo_die_5, 
misc1: 0, 
misc2: 0
}
, // S_TROO_DIE4
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 12, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_TROO_DIE5
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 13, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_troo_xdie_2, 
misc1: 0, 
misc2: 0
}
, // S_TROO_XDIE1
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 14, 
tics: 5, 
action: Actionf_t {
acv: a_xs_cream
}
, 
nextstate: Statenum_t.s_troo_xdie_3, 
misc1: 0, 
misc2: 0
}
, // S_TROO_XDIE2
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 15, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_troo_xdie_4, 
misc1: 0, 
misc2: 0
}
, // S_TROO_XDIE3
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 16, 
tics: 5, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_troo_xdie_5, 
misc1: 0, 
misc2: 0
}
, // S_TROO_XDIE4
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 17, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_troo_xdie_6, 
misc1: 0, 
misc2: 0
}
, // S_TROO_XDIE5
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 18, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_troo_xdie_7, 
misc1: 0, 
misc2: 0
}
, // S_TROO_XDIE6
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 19, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_troo_xdie_8, 
misc1: 0, 
misc2: 0
}
, // S_TROO_XDIE7
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 20, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_TROO_XDIE8
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 12, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_troo_raise_2, 
misc1: 0, 
misc2: 0
}
, // S_TROO_RAISE1
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 11, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_troo_raise_3, 
misc1: 0, 
misc2: 0
}
, // S_TROO_RAISE2
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 10, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_troo_raise_4, 
misc1: 0, 
misc2: 0
}
, // S_TROO_RAISE3
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 9, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_troo_raise_5, 
misc1: 0, 
misc2: 0
}
, // S_TROO_RAISE4
State_t {
sprite: Spritenum_t.spr_troo, 
frame: 8, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_troo_run_1, 
misc1: 0, 
misc2: 0
}
, // S_TROO_RAISE5
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_sarg_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_SARG_STND
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_sarg_stnd, 
misc1: 0, 
misc2: 0
}
, // S_SARG_STND2
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 0, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sarg_run_2, 
misc1: 0, 
misc2: 0
}
, // S_SARG_RUN1
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 0, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sarg_run_3, 
misc1: 0, 
misc2: 0
}
, // S_SARG_RUN2
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 1, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sarg_run_4, 
misc1: 0, 
misc2: 0
}
, // S_SARG_RUN3
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 1, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sarg_run_5, 
misc1: 0, 
misc2: 0
}
, // S_SARG_RUN4
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 2, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sarg_run_6, 
misc1: 0, 
misc2: 0
}
, // S_SARG_RUN5
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 2, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sarg_run_7, 
misc1: 0, 
misc2: 0
}
, // S_SARG_RUN6
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 3, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sarg_run_8, 
misc1: 0, 
misc2: 0
}
, // S_SARG_RUN7
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 3, 
tics: 2, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sarg_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SARG_RUN8
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 4, 
tics: 8, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_sarg_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_SARG_ATK1
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 5, 
tics: 8, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_sarg_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_SARG_ATK2
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 6, 
tics: 8, 
action: Actionf_t {
acv: a_sarg_attack
}
, 
nextstate: Statenum_t.s_sarg_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SARG_ATK3
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 7, 
tics: 2, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sarg_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_SARG_PAIN
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 7, 
tics: 2, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_sarg_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SARG_PAIN2
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 8, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sarg_die_2, 
misc1: 0, 
misc2: 0
}
, // S_SARG_DIE1
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 9, 
tics: 8, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_sarg_die_3, 
misc1: 0, 
misc2: 0
}
, // S_SARG_DIE2
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 10, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sarg_die_4, 
misc1: 0, 
misc2: 0
}
, // S_SARG_DIE3
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 11, 
tics: 4, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_sarg_die_5, 
misc1: 0, 
misc2: 0
}
, // S_SARG_DIE4
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 12, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sarg_die_6, 
misc1: 0, 
misc2: 0
}
, // S_SARG_DIE5
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 13, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SARG_DIE6
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 13, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sarg_raise_2, 
misc1: 0, 
misc2: 0
}
, // S_SARG_RAISE1
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 12, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sarg_raise_3, 
misc1: 0, 
misc2: 0
}
, // S_SARG_RAISE2
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 11, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sarg_raise_4, 
misc1: 0, 
misc2: 0
}
, // S_SARG_RAISE3
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 10, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sarg_raise_5, 
misc1: 0, 
misc2: 0
}
, // S_SARG_RAISE4
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 9, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sarg_raise_6, 
misc1: 0, 
misc2: 0
}
, // S_SARG_RAISE5
State_t {
sprite: Spritenum_t.spr_sarg, 
frame: 8, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sarg_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SARG_RAISE6
State_t {
sprite: Spritenum_t.spr_head, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_head_stnd, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_STND
State_t {
sprite: Spritenum_t.spr_head, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_head_run_1, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_RUN1
State_t {
sprite: Spritenum_t.spr_head, 
frame: 1, 
tics: 5, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_head_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_ATK1
State_t {
sprite: Spritenum_t.spr_head, 
frame: 2, 
tics: 5, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_head_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_ATK2
State_t {
sprite: Spritenum_t.spr_head, 
frame: 32771, 
tics: 5, 
action: Actionf_t {
acv: a_head_attack
}
, 
nextstate: Statenum_t.s_head_run_1, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_ATK3
State_t {
sprite: Spritenum_t.spr_head, 
frame: 4, 
tics: 3, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_head_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_PAIN
State_t {
sprite: Spritenum_t.spr_head, 
frame: 4, 
tics: 3, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_head_pain_3, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_PAIN2
State_t {
sprite: Spritenum_t.spr_head, 
frame: 5, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_head_run_1, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_PAIN3
State_t {
sprite: Spritenum_t.spr_head, 
frame: 6, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_head_die_2, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_DIE1
State_t {
sprite: Spritenum_t.spr_head, 
frame: 7, 
tics: 8, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_head_die_3, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_DIE2
State_t {
sprite: Spritenum_t.spr_head, 
frame: 8, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_head_die_4, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_DIE3
State_t {
sprite: Spritenum_t.spr_head, 
frame: 9, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_head_die_5, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_DIE4
State_t {
sprite: Spritenum_t.spr_head, 
frame: 10, 
tics: 8, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_head_die_6, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_DIE5
State_t {
sprite: Spritenum_t.spr_head, 
frame: 11, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_DIE6
State_t {
sprite: Spritenum_t.spr_head, 
frame: 11, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_head_raise_2, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_RAISE1
State_t {
sprite: Spritenum_t.spr_head, 
frame: 10, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_head_raise_3, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_RAISE2
State_t {
sprite: Spritenum_t.spr_head, 
frame: 9, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_head_raise_4, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_RAISE3
State_t {
sprite: Spritenum_t.spr_head, 
frame: 8, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_head_raise_5, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_RAISE4
State_t {
sprite: Spritenum_t.spr_head, 
frame: 7, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_head_raise_6, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_RAISE5
State_t {
sprite: Spritenum_t.spr_head, 
frame: 6, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_head_run_1, 
misc1: 0, 
misc2: 0
}
, // S_HEAD_RAISE6
State_t {
sprite: Spritenum_t.spr_bal_7, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_brball_2, 
misc1: 0, 
misc2: 0
}
, // S_BRBALL1
State_t {
sprite: Spritenum_t.spr_bal_7, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_brball_1, 
misc1: 0, 
misc2: 0
}
, // S_BRBALL2
State_t {
sprite: Spritenum_t.spr_bal_7, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_brballx_2, 
misc1: 0, 
misc2: 0
}
, // S_BRBALLX1
State_t {
sprite: Spritenum_t.spr_bal_7, 
frame: 32771, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_brballx_3, 
misc1: 0, 
misc2: 0
}
, // S_BRBALLX2
State_t {
sprite: Spritenum_t.spr_bal_7, 
frame: 32772, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BRBALLX3
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_boss_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_STND
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_boss_stnd, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_STND2
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_boss_run_2, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RUN1
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_boss_run_3, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RUN2
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_boss_run_4, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RUN3
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_boss_run_5, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RUN4
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_boss_run_6, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RUN5
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_boss_run_7, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RUN6
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_boss_run_8, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RUN7
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_boss_run_1, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RUN8
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 4, 
tics: 8, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_boss_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_ATK1
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 5, 
tics: 8, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_boss_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_ATK2
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 6, 
tics: 8, 
action: Actionf_t {
acv: a_bruis_attack
}
, 
nextstate: Statenum_t.s_boss_run_1, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_ATK3
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 7, 
tics: 2, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_boss_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_PAIN
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 7, 
tics: 2, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_boss_run_1, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_PAIN2
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 8, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_boss_die_2, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_DIE1
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 9, 
tics: 8, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_boss_die_3, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_DIE2
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 10, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_boss_die_4, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_DIE3
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 11, 
tics: 8, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_boss_die_5, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_DIE4
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 12, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_boss_die_6, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_DIE5
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 13, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_boss_die_7, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_DIE6
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 14, 
tics: -1, 
action: Actionf_t {
acv: a_boss_death
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_DIE7
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 14, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_boss_raise_2, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RAISE1
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 13, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_boss_raise_3, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RAISE2
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 12, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_boss_raise_4, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RAISE3
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 11, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_boss_raise_5, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RAISE4
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 10, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_boss_raise_6, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RAISE5
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 9, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_boss_raise_7, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RAISE6
State_t {
sprite: Spritenum_t.spr_boss, 
frame: 8, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_boss_run_1, 
misc1: 0, 
misc2: 0
}
, // S_BOSS_RAISE7
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_bos_2_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_STND
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_bos_2_stnd, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_STND2
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bos_2_run_2, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RUN1
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bos_2_run_3, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RUN2
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bos_2_run_4, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RUN3
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bos_2_run_5, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RUN4
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bos_2_run_6, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RUN5
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bos_2_run_7, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RUN6
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bos_2_run_8, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RUN7
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bos_2_run_1, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RUN8
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 4, 
tics: 8, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_bos_2_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_ATK1
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 5, 
tics: 8, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_bos_2_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_ATK2
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 6, 
tics: 8, 
action: Actionf_t {
acv: a_bruis_attack
}
, 
nextstate: Statenum_t.s_bos_2_run_1, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_ATK3
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 7, 
tics: 2, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bos_2_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_PAIN
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 7, 
tics: 2, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_bos_2_run_1, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_PAIN2
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 8, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bos_2_die_2, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_DIE1
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 9, 
tics: 8, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_bos_2_die_3, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_DIE2
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 10, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bos_2_die_4, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_DIE3
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 11, 
tics: 8, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_bos_2_die_5, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_DIE4
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 12, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bos_2_die_6, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_DIE5
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 13, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bos_2_die_7, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_DIE6
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 14, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_DIE7
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 14, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bos_2_raise_2, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RAISE1
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 13, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bos_2_raise_3, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RAISE2
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 12, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bos_2_raise_4, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RAISE3
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 11, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bos_2_raise_5, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RAISE4
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 10, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bos_2_raise_6, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RAISE5
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 9, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bos_2_raise_7, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RAISE6
State_t {
sprite: Spritenum_t.spr_bos_2, 
frame: 8, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bos_2_run_1, 
misc1: 0, 
misc2: 0
}
, // S_BOS2_RAISE7
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 32768, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_skull_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_STND
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 32769, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_skull_stnd, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_STND2
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_skull_run_2, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_RUN1
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_skull_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_RUN2
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 32770, 
tics: 10, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_skull_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_ATK1
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: a_skull_attack
}
, 
nextstate: Statenum_t.s_skull_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_ATK2
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 32770, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skull_atk_4, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_ATK3
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skull_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_ATK4
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 32772, 
tics: 3, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skull_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_PAIN
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 32772, 
tics: 3, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_skull_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_PAIN2
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 32773, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skull_die_2, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_DIE1
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 32774, 
tics: 6, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_skull_die_3, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_DIE2
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 32775, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skull_die_4, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_DIE3
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 32776, 
tics: 6, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_skull_die_5, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_DIE4
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 9, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_skull_die_6, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_DIE5
State_t {
sprite: Spritenum_t.spr_skul, 
frame: 10, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SKULL_DIE6
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_spid_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_SPID_STND
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_spid_stnd, 
misc1: 0, 
misc2: 0
}
, // S_SPID_STND2
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_metal
}
, 
nextstate: Statenum_t.s_spid_run_2, 
misc1: 0, 
misc2: 0
}
, // S_SPID_RUN1
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spid_run_3, 
misc1: 0, 
misc2: 0
}
, // S_SPID_RUN2
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spid_run_4, 
misc1: 0, 
misc2: 0
}
, // S_SPID_RUN3
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spid_run_5, 
misc1: 0, 
misc2: 0
}
, // S_SPID_RUN4
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_metal
}
, 
nextstate: Statenum_t.s_spid_run_6, 
misc1: 0, 
misc2: 0
}
, // S_SPID_RUN5
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spid_run_7, 
misc1: 0, 
misc2: 0
}
, // S_SPID_RUN6
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spid_run_8, 
misc1: 0, 
misc2: 0
}
, // S_SPID_RUN7
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spid_run_9, 
misc1: 0, 
misc2: 0
}
, // S_SPID_RUN8
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 4, 
tics: 3, 
action: Actionf_t {
acv: a_metal
}
, 
nextstate: Statenum_t.s_spid_run_10, 
misc1: 0, 
misc2: 0
}
, // S_SPID_RUN9
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 4, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spid_run_11, 
misc1: 0, 
misc2: 0
}
, // S_SPID_RUN10
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 5, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spid_run_12, 
misc1: 0, 
misc2: 0
}
, // S_SPID_RUN11
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 5, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_spid_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SPID_RUN12
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 32768, 
tics: 20, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_spid_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_SPID_ATK1
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 32774, 
tics: 4, 
action: Actionf_t {
acv: a_sp_os_attack
}
, 
nextstate: Statenum_t.s_spid_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_SPID_ATK2
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 32775, 
tics: 4, 
action: Actionf_t {
acv: a_sp_os_attack
}
, 
nextstate: Statenum_t.s_spid_atk_4, 
misc1: 0, 
misc2: 0
}
, // S_SPID_ATK3
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 32775, 
tics: 1, 
action: Actionf_t {
acv: a_spid_refire
}
, 
nextstate: Statenum_t.s_spid_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_SPID_ATK4
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 8, 
tics: 3, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spid_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_SPID_PAIN
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 8, 
tics: 3, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_spid_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SPID_PAIN2
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 9, 
tics: 20, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_spid_die_2, 
misc1: 0, 
misc2: 0
}
, // S_SPID_DIE1
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 10, 
tics: 10, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_spid_die_3, 
misc1: 0, 
misc2: 0
}
, // S_SPID_DIE2
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 11, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spid_die_4, 
misc1: 0, 
misc2: 0
}
, // S_SPID_DIE3
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 12, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spid_die_5, 
misc1: 0, 
misc2: 0
}
, // S_SPID_DIE4
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 13, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spid_die_6, 
misc1: 0, 
misc2: 0
}
, // S_SPID_DIE5
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 14, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spid_die_7, 
misc1: 0, 
misc2: 0
}
, // S_SPID_DIE6
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 15, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spid_die_8, 
misc1: 0, 
misc2: 0
}
, // S_SPID_DIE7
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 16, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spid_die_9, 
misc1: 0, 
misc2: 0
}
, // S_SPID_DIE8
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 17, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spid_die_10, 
misc1: 0, 
misc2: 0
}
, // S_SPID_DIE9
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 18, 
tics: 30, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_spid_die_11, 
misc1: 0, 
misc2: 0
}
, // S_SPID_DIE10
State_t {
sprite: Spritenum_t.spr_spid, 
frame: 18, 
tics: -1, 
action: Actionf_t {
acv: a_boss_death
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SPID_DIE11
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_bspi_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_STND
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_bspi_stnd, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_STND2
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 0, 
tics: 20, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bspi_run_1, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_SIGHT
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_baby_metal
}
, 
nextstate: Statenum_t.s_bspi_run_2, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RUN1
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bspi_run_3, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RUN2
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bspi_run_4, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RUN3
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bspi_run_5, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RUN4
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bspi_run_6, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RUN5
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bspi_run_7, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RUN6
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_baby_metal
}
, 
nextstate: Statenum_t.s_bspi_run_8, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RUN7
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bspi_run_9, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RUN8
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 4, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bspi_run_10, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RUN9
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 4, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bspi_run_11, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RUN10
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 5, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bspi_run_12, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RUN11
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 5, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_bspi_run_1, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RUN12
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 32768, 
tics: 20, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_bspi_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_ATK1
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 32774, 
tics: 4, 
action: Actionf_t {
acv: a_bspi_attack
}
, 
nextstate: Statenum_t.s_bspi_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_ATK2
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 32775, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bspi_atk_4, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_ATK3
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 32775, 
tics: 1, 
action: Actionf_t {
acv: a_spid_refire
}
, 
nextstate: Statenum_t.s_bspi_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_ATK4
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 8, 
tics: 3, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bspi_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_PAIN
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 8, 
tics: 3, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_bspi_run_1, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_PAIN2
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 9, 
tics: 20, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_bspi_die_2, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_DIE1
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 10, 
tics: 7, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_bspi_die_3, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_DIE2
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 11, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bspi_die_4, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_DIE3
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 12, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bspi_die_5, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_DIE4
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 13, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bspi_die_6, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_DIE5
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 14, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bspi_die_7, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_DIE6
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 15, 
tics: -1, 
action: Actionf_t {
acv: a_boss_death
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_DIE7
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 15, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bspi_raise_2, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RAISE1
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 14, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bspi_raise_3, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RAISE2
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 13, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bspi_raise_4, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RAISE3
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 12, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bspi_raise_5, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RAISE4
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 11, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bspi_raise_6, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RAISE5
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 10, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bspi_raise_7, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RAISE6
State_t {
sprite: Spritenum_t.spr_bspi, 
frame: 9, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bspi_run_1, 
misc1: 0, 
misc2: 0
}
, // S_BSPI_RAISE7
State_t {
sprite: Spritenum_t.spr_apls, 
frame: 32768, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_arach_plaz_2, 
misc1: 0, 
misc2: 0
}
, // S_ARACH_PLAZ
State_t {
sprite: Spritenum_t.spr_apls, 
frame: 32769, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_arach_plaz, 
misc1: 0, 
misc2: 0
}
, // S_ARACH_PLAZ2
State_t {
sprite: Spritenum_t.spr_apbx, 
frame: 32768, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_arach_plex_2, 
misc1: 0, 
misc2: 0
}
, // S_ARACH_PLEX
State_t {
sprite: Spritenum_t.spr_apbx, 
frame: 32769, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_arach_plex_3, 
misc1: 0, 
misc2: 0
}
, // S_ARACH_PLEX2
State_t {
sprite: Spritenum_t.spr_apbx, 
frame: 32770, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_arach_plex_4, 
misc1: 0, 
misc2: 0
}
, // S_ARACH_PLEX3
State_t {
sprite: Spritenum_t.spr_apbx, 
frame: 32771, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_arach_plex_5, 
misc1: 0, 
misc2: 0
}
, // S_ARACH_PLEX4
State_t {
sprite: Spritenum_t.spr_apbx, 
frame: 32772, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_ARACH_PLEX5
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_cyber_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_STND
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_cyber_stnd, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_STND2
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_hoof
}
, 
nextstate: Statenum_t.s_cyber_run_2, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_RUN1
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_cyber_run_3, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_RUN2
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_cyber_run_4, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_RUN3
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_cyber_run_5, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_RUN4
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_cyber_run_6, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_RUN5
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_cyber_run_7, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_RUN6
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_metal
}
, 
nextstate: Statenum_t.s_cyber_run_8, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_RUN7
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_cyber_run_1, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_RUN8
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 4, 
tics: 6, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_cyber_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_ATK1
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 5, 
tics: 12, 
action: Actionf_t {
acv: a_cyber_attack
}
, 
nextstate: Statenum_t.s_cyber_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_ATK2
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 4, 
tics: 12, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_cyber_atk_4, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_ATK3
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 5, 
tics: 12, 
action: Actionf_t {
acv: a_cyber_attack
}
, 
nextstate: Statenum_t.s_cyber_atk_5, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_ATK4
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 4, 
tics: 12, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_cyber_atk_6, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_ATK5
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 5, 
tics: 12, 
action: Actionf_t {
acv: a_cyber_attack
}
, 
nextstate: Statenum_t.s_cyber_run_1, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_ATK6
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 6, 
tics: 10, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_cyber_run_1, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_PAIN
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 7, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cyber_die_2, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_DIE1
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 8, 
tics: 10, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_cyber_die_3, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_DIE2
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 9, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cyber_die_4, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_DIE3
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 10, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cyber_die_5, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_DIE4
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 11, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cyber_die_6, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_DIE5
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 12, 
tics: 10, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_cyber_die_7, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_DIE6
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 13, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cyber_die_8, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_DIE7
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 14, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cyber_die_9, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_DIE8
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 15, 
tics: 30, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_cyber_die_10, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_DIE9
State_t {
sprite: Spritenum_t.spr_cybr, 
frame: 15, 
tics: -1, 
action: Actionf_t {
acv: a_boss_death
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_CYBER_DIE10
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_pain_stnd, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_STND
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_pain_run_2, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_RUN1
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_pain_run_3, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_RUN2
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_pain_run_4, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_RUN3
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_pain_run_5, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_RUN4
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_pain_run_6, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_RUN5
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_pain_run_1, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_RUN6
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 3, 
tics: 5, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_pain_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_ATK1
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 4, 
tics: 5, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_pain_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_ATK2
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 32773, 
tics: 5, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_pain_atk_4, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_ATK3
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 32773, 
tics: 0, 
action: Actionf_t {
acv: a_pain_attack
}
, 
nextstate: Statenum_t.s_pain_run_1, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_ATK4
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 6, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pain_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_PAIN
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 6, 
tics: 6, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_pain_run_1, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_PAIN2
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 32775, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pain_die_2, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_DIE1
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 32776, 
tics: 8, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_pain_die_3, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_DIE2
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 32777, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pain_die_4, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_DIE3
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 32778, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pain_die_5, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_DIE4
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 32779, 
tics: 8, 
action: Actionf_t {
acv: a_pain_die
}
, 
nextstate: Statenum_t.s_pain_die_6, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_DIE5
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 32780, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_DIE6
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 12, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pain_raise_2, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_RAISE1
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 11, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pain_raise_3, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_RAISE2
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 10, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pain_raise_4, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_RAISE3
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 9, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pain_raise_5, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_RAISE4
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 8, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pain_raise_6, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_RAISE5
State_t {
sprite: Spritenum_t.spr_pain, 
frame: 7, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pain_run_1, 
misc1: 0, 
misc2: 0
}
, // S_PAIN_RAISE6
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_sswv_stnd_2, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_STND
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 1, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_sswv_stnd, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_STND2
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sswv_run_2, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_RUN1
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 0, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sswv_run_3, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_RUN2
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sswv_run_4, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_RUN3
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 1, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sswv_run_5, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_RUN4
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sswv_run_6, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_RUN5
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 2, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sswv_run_7, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_RUN6
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sswv_run_8, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_RUN7
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 3, 
tics: 3, 
action: Actionf_t {
acv: a_chase
}
, 
nextstate: Statenum_t.s_sswv_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_RUN8
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 4, 
tics: 10, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_sswv_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_ATK1
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 5, 
tics: 10, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_sswv_atk_3, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_ATK2
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 32774, 
tics: 4, 
action: Actionf_t {
acv: a_cp_os_attack
}
, 
nextstate: Statenum_t.s_sswv_atk_4, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_ATK3
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 5, 
tics: 6, 
action: Actionf_t {
acv: a_face_target
}
, 
nextstate: Statenum_t.s_sswv_atk_5, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_ATK4
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 32774, 
tics: 4, 
action: Actionf_t {
acv: a_cp_os_attack
}
, 
nextstate: Statenum_t.s_sswv_atk_6, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_ATK5
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 5, 
tics: 1, 
action: Actionf_t {
acv: a_cp_os_refire
}
, 
nextstate: Statenum_t.s_sswv_atk_2, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_ATK6
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 7, 
tics: 3, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sswv_pain_2, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_PAIN
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 7, 
tics: 3, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_sswv_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_PAIN2
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 8, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sswv_die_2, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_DIE1
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 9, 
tics: 5, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_sswv_die_3, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_DIE2
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 10, 
tics: 5, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_sswv_die_4, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_DIE3
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 11, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sswv_die_5, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_DIE4
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 12, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_DIE5
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 13, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sswv_xdie_2, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_XDIE1
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 14, 
tics: 5, 
action: Actionf_t {
acv: a_xs_cream
}
, 
nextstate: Statenum_t.s_sswv_xdie_3, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_XDIE2
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 15, 
tics: 5, 
action: Actionf_t {
acv: a_fall
}
, 
nextstate: Statenum_t.s_sswv_xdie_4, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_XDIE3
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 16, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sswv_xdie_5, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_XDIE4
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 17, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sswv_xdie_6, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_XDIE5
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 18, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sswv_xdie_7, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_XDIE6
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 19, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sswv_xdie_8, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_XDIE7
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 20, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sswv_xdie_9, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_XDIE8
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 21, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_XDIE9
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 12, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sswv_raise_2, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_RAISE1
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 11, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sswv_raise_3, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_RAISE2
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 10, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sswv_raise_4, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_RAISE3
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 9, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sswv_raise_5, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_RAISE4
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 8, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_sswv_run_1, 
misc1: 0, 
misc2: 0
}
, // S_SSWV_RAISE5
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_keenstnd, 
misc1: 0, 
misc2: 0
}
, // S_KEENSTND
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 0, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_commkeen_2, 
misc1: 0, 
misc2: 0
}
, // S_COMMKEEN
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 1, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_commkeen_3, 
misc1: 0, 
misc2: 0
}
, // S_COMMKEEN2
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 2, 
tics: 6, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_commkeen_4, 
misc1: 0, 
misc2: 0
}
, // S_COMMKEEN3
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 3, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_commkeen_5, 
misc1: 0, 
misc2: 0
}
, // S_COMMKEEN4
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 4, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_commkeen_6, 
misc1: 0, 
misc2: 0
}
, // S_COMMKEEN5
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 5, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_commkeen_7, 
misc1: 0, 
misc2: 0
}
, // S_COMMKEEN6
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 6, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_commkeen_8, 
misc1: 0, 
misc2: 0
}
, // S_COMMKEEN7
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 7, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_commkeen_9, 
misc1: 0, 
misc2: 0
}
, // S_COMMKEEN8
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 8, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_commkeen_10, 
misc1: 0, 
misc2: 0
}
, // S_COMMKEEN9
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 9, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_commkeen_11, 
misc1: 0, 
misc2: 0
}
, // S_COMMKEEN10
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 10, 
tics: 6, 
action: Actionf_t {
acv: a_keen_die
}
, 
nextstate: Statenum_t.s_commkeen_12, 
misc1: 0, 
misc2: 0
}
, // S_COMMKEEN11
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 11, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_COMMKEEN12
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 12, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_keenpain_2, 
misc1: 0, 
misc2: 0
}
, // S_KEENPAIN
State_t {
sprite: Spritenum_t.spr_keen, 
frame: 12, 
tics: 8, 
action: Actionf_t {
acv: a_pain
}
, 
nextstate: Statenum_t.s_keenstnd, 
misc1: 0, 
misc2: 0
}
, // S_KEENPAIN2
State_t {
sprite: Spritenum_t.spr_bbrn, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BRAIN
State_t {
sprite: Spritenum_t.spr_bbrn, 
frame: 1, 
tics: 36, 
action: Actionf_t {
acv: a_brain_pain
}
, 
nextstate: Statenum_t.s_brain, 
misc1: 0, 
misc2: 0
}
, // S_BRAIN_PAIN
State_t {
sprite: Spritenum_t.spr_bbrn, 
frame: 0, 
tics: 100, 
action: Actionf_t {
acv: a_brain_scream
}
, 
nextstate: Statenum_t.s_brain_die_2, 
misc1: 0, 
misc2: 0
}
, // S_BRAIN_DIE1
State_t {
sprite: Spritenum_t.spr_bbrn, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_brain_die_3, 
misc1: 0, 
misc2: 0
}
, // S_BRAIN_DIE2
State_t {
sprite: Spritenum_t.spr_bbrn, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_brain_die_4, 
misc1: 0, 
misc2: 0
}
, // S_BRAIN_DIE3
State_t {
sprite: Spritenum_t.spr_bbrn, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: a_brain_die
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BRAIN_DIE4
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: a_look
}
, 
nextstate: Statenum_t.s_braineye, 
misc1: 0, 
misc2: 0
}
, // S_BRAINEYE
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 0, 
tics: 181, 
action: Actionf_t {
acv: a_brain_awake
}
, 
nextstate: Statenum_t.s_braineye_1, 
misc1: 0, 
misc2: 0
}
, // S_BRAINEYESEE
State_t {
sprite: Spritenum_t.spr_sswv, 
frame: 0, 
tics: 150, 
action: Actionf_t {
acv: a_brain_spit
}
, 
nextstate: Statenum_t.s_braineye_1, 
misc1: 0, 
misc2: 0
}
, // S_BRAINEYE1
State_t {
sprite: Spritenum_t.spr_bosf, 
frame: 32768, 
tics: 3, 
action: Actionf_t {
acv: a_spawn_sound
}
, 
nextstate: Statenum_t.s_spawn_2, 
misc1: 0, 
misc2: 0
}
, // S_SPAWN1
State_t {
sprite: Spritenum_t.spr_bosf, 
frame: 32769, 
tics: 3, 
action: Actionf_t {
acv: a_spawn_fly
}
, 
nextstate: Statenum_t.s_spawn_3, 
misc1: 0, 
misc2: 0
}
, // S_SPAWN2
State_t {
sprite: Spritenum_t.spr_bosf, 
frame: 32770, 
tics: 3, 
action: Actionf_t {
acv: a_spawn_fly
}
, 
nextstate: Statenum_t.s_spawn_4, 
misc1: 0, 
misc2: 0
}
, // S_SPAWN3
State_t {
sprite: Spritenum_t.spr_bosf, 
frame: 32771, 
tics: 3, 
action: Actionf_t {
acv: a_spawn_fly
}
, 
nextstate: Statenum_t.s_spawn_1, 
misc1: 0, 
misc2: 0
}
, // S_SPAWN4
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_spawnfire_2, 
misc1: 0, 
misc2: 0
}
, // S_SPAWNFIRE1
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_spawnfire_3, 
misc1: 0, 
misc2: 0
}
, // S_SPAWNFIRE2
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32770, 
tics: 4, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_spawnfire_4, 
misc1: 0, 
misc2: 0
}
, // S_SPAWNFIRE3
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_spawnfire_5, 
misc1: 0, 
misc2: 0
}
, // S_SPAWNFIRE4
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32772, 
tics: 4, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_spawnfire_6, 
misc1: 0, 
misc2: 0
}
, // S_SPAWNFIRE5
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32773, 
tics: 4, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_spawnfire_7, 
misc1: 0, 
misc2: 0
}
, // S_SPAWNFIRE6
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32774, 
tics: 4, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_spawnfire_8, 
misc1: 0, 
misc2: 0
}
, // S_SPAWNFIRE7
State_t {
sprite: Spritenum_t.spr_fire, 
frame: 32775, 
tics: 4, 
action: Actionf_t {
acv: a_fire
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SPAWNFIRE8
State_t {
sprite: Spritenum_t.spr_misl, 
frame: 32769, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_brainexplode_2, 
misc1: 0, 
misc2: 0
}
, // S_BRAINEXPLODE1
State_t {
sprite: Spritenum_t.spr_misl, 
frame: 32770, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_brainexplode_3, 
misc1: 0, 
misc2: 0
}
, // S_BRAINEXPLODE2
State_t {
sprite: Spritenum_t.spr_misl, 
frame: 32771, 
tics: 10, 
action: Actionf_t {
acv: a_brain_explode
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BRAINEXPLODE3
State_t {
sprite: Spritenum_t.spr_arm_1, 
frame: 0, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_arm_1_a, 
misc1: 0, 
misc2: 0
}
, // S_ARM1
State_t {
sprite: Spritenum_t.spr_arm_1, 
frame: 32769, 
tics: 7, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_arm_1, 
misc1: 0, 
misc2: 0
}
, // S_ARM1A
State_t {
sprite: Spritenum_t.spr_arm_2, 
frame: 0, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_arm_2_a, 
misc1: 0, 
misc2: 0
}
, // S_ARM2
State_t {
sprite: Spritenum_t.spr_arm_2, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_arm_2, 
misc1: 0, 
misc2: 0
}
, // S_ARM2A
State_t {
sprite: Spritenum_t.spr_bar_1, 
frame: 0, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bar_2, 
misc1: 0, 
misc2: 0
}
, // S_BAR1
State_t {
sprite: Spritenum_t.spr_bar_1, 
frame: 1, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bar_1, 
misc1: 0, 
misc2: 0
}
, // S_BAR2
State_t {
sprite: Spritenum_t.spr_bexp, 
frame: 32768, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bexp_2, 
misc1: 0, 
misc2: 0
}
, // S_BEXP
State_t {
sprite: Spritenum_t.spr_bexp, 
frame: 32769, 
tics: 5, 
action: Actionf_t {
acv: a_scream
}
, 
nextstate: Statenum_t.s_bexp_3, 
misc1: 0, 
misc2: 0
}
, // S_BEXP2
State_t {
sprite: Spritenum_t.spr_bexp, 
frame: 32770, 
tics: 5, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bexp_4, 
misc1: 0, 
misc2: 0
}
, // S_BEXP3
State_t {
sprite: Spritenum_t.spr_bexp, 
frame: 32771, 
tics: 10, 
action: Actionf_t {
acv: a_explode
}
, 
nextstate: Statenum_t.s_bexp_5, 
misc1: 0, 
misc2: 0
}
, // S_BEXP4
State_t {
sprite: Spritenum_t.spr_bexp, 
frame: 32772, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BEXP5
State_t {
sprite: Spritenum_t.spr_fcan, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bbar_2, 
misc1: 0, 
misc2: 0
}
, // S_BBAR1
State_t {
sprite: Spritenum_t.spr_fcan, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bbar_3, 
misc1: 0, 
misc2: 0
}
, // S_BBAR2
State_t {
sprite: Spritenum_t.spr_fcan, 
frame: 32770, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bbar_1, 
misc1: 0, 
misc2: 0
}
, // S_BBAR3
State_t {
sprite: Spritenum_t.spr_bon_1, 
frame: 0, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bon_1_a, 
misc1: 0, 
misc2: 0
}
, // S_BON1
State_t {
sprite: Spritenum_t.spr_bon_1, 
frame: 1, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bon_1_b, 
misc1: 0, 
misc2: 0
}
, // S_BON1A
State_t {
sprite: Spritenum_t.spr_bon_1, 
frame: 2, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bon_1_c, 
misc1: 0, 
misc2: 0
}
, // S_BON1B
State_t {
sprite: Spritenum_t.spr_bon_1, 
frame: 3, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bon_1_d, 
misc1: 0, 
misc2: 0
}
, // S_BON1C
State_t {
sprite: Spritenum_t.spr_bon_1, 
frame: 2, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bon_1_e, 
misc1: 0, 
misc2: 0
}
, // S_BON1D
State_t {
sprite: Spritenum_t.spr_bon_1, 
frame: 1, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bon_1, 
misc1: 0, 
misc2: 0
}
, // S_BON1E
State_t {
sprite: Spritenum_t.spr_bon_2, 
frame: 0, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bon_2_a, 
misc1: 0, 
misc2: 0
}
, // S_BON2
State_t {
sprite: Spritenum_t.spr_bon_2, 
frame: 1, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bon_2_b, 
misc1: 0, 
misc2: 0
}
, // S_BON2A
State_t {
sprite: Spritenum_t.spr_bon_2, 
frame: 2, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bon_2_c, 
misc1: 0, 
misc2: 0
}
, // S_BON2B
State_t {
sprite: Spritenum_t.spr_bon_2, 
frame: 3, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bon_2_d, 
misc1: 0, 
misc2: 0
}
, // S_BON2C
State_t {
sprite: Spritenum_t.spr_bon_2, 
frame: 2, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bon_2_e, 
misc1: 0, 
misc2: 0
}
, // S_BON2D
State_t {
sprite: Spritenum_t.spr_bon_2, 
frame: 1, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bon_2, 
misc1: 0, 
misc2: 0
}
, // S_BON2E
State_t {
sprite: Spritenum_t.spr_bkey, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bkey_2, 
misc1: 0, 
misc2: 0
}
, // S_BKEY
State_t {
sprite: Spritenum_t.spr_bkey, 
frame: 32769, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bkey, 
misc1: 0, 
misc2: 0
}
, // S_BKEY2
State_t {
sprite: Spritenum_t.spr_rkey, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_rkey_2, 
misc1: 0, 
misc2: 0
}
, // S_RKEY
State_t {
sprite: Spritenum_t.spr_rkey, 
frame: 32769, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_rkey, 
misc1: 0, 
misc2: 0
}
, // S_RKEY2
State_t {
sprite: Spritenum_t.spr_ykey, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_ykey_2, 
misc1: 0, 
misc2: 0
}
, // S_YKEY
State_t {
sprite: Spritenum_t.spr_ykey, 
frame: 32769, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_ykey, 
misc1: 0, 
misc2: 0
}
, // S_YKEY2
State_t {
sprite: Spritenum_t.spr_bsku, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bskull_2, 
misc1: 0, 
misc2: 0
}
, // S_BSKULL
State_t {
sprite: Spritenum_t.spr_bsku, 
frame: 32769, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bskull, 
misc1: 0, 
misc2: 0
}
, // S_BSKULL2
State_t {
sprite: Spritenum_t.spr_rsku, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_rskull_2, 
misc1: 0, 
misc2: 0
}
, // S_RSKULL
State_t {
sprite: Spritenum_t.spr_rsku, 
frame: 32769, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_rskull, 
misc1: 0, 
misc2: 0
}
, // S_RSKULL2
State_t {
sprite: Spritenum_t.spr_ysku, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_yskull_2, 
misc1: 0, 
misc2: 0
}
, // S_YSKULL
State_t {
sprite: Spritenum_t.spr_ysku, 
frame: 32769, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_yskull, 
misc1: 0, 
misc2: 0
}
, // S_YSKULL2
State_t {
sprite: Spritenum_t.spr_stim, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_STIM
State_t {
sprite: Spritenum_t.spr_medi, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_MEDI
State_t {
sprite: Spritenum_t.spr_soul, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_soul_2, 
misc1: 0, 
misc2: 0
}
, // S_SOUL
State_t {
sprite: Spritenum_t.spr_soul, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_soul_3, 
misc1: 0, 
misc2: 0
}
, // S_SOUL2
State_t {
sprite: Spritenum_t.spr_soul, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_soul_4, 
misc1: 0, 
misc2: 0
}
, // S_SOUL3
State_t {
sprite: Spritenum_t.spr_soul, 
frame: 32771, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_soul_5, 
misc1: 0, 
misc2: 0
}
, // S_SOUL4
State_t {
sprite: Spritenum_t.spr_soul, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_soul_6, 
misc1: 0, 
misc2: 0
}
, // S_SOUL5
State_t {
sprite: Spritenum_t.spr_soul, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_soul, 
misc1: 0, 
misc2: 0
}
, // S_SOUL6
State_t {
sprite: Spritenum_t.spr_pinv, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pinv_2, 
misc1: 0, 
misc2: 0
}
, // S_PINV
State_t {
sprite: Spritenum_t.spr_pinv, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pinv_3, 
misc1: 0, 
misc2: 0
}
, // S_PINV2
State_t {
sprite: Spritenum_t.spr_pinv, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pinv_4, 
misc1: 0, 
misc2: 0
}
, // S_PINV3
State_t {
sprite: Spritenum_t.spr_pinv, 
frame: 32771, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pinv, 
misc1: 0, 
misc2: 0
}
, // S_PINV4
State_t {
sprite: Spritenum_t.spr_pstr, 
frame: 32768, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_PSTR
State_t {
sprite: Spritenum_t.spr_pins, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pins_2, 
misc1: 0, 
misc2: 0
}
, // S_PINS
State_t {
sprite: Spritenum_t.spr_pins, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pins_3, 
misc1: 0, 
misc2: 0
}
, // S_PINS2
State_t {
sprite: Spritenum_t.spr_pins, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pins_4, 
misc1: 0, 
misc2: 0
}
, // S_PINS3
State_t {
sprite: Spritenum_t.spr_pins, 
frame: 32771, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pins, 
misc1: 0, 
misc2: 0
}
, // S_PINS4
State_t {
sprite: Spritenum_t.spr_mega, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_mega_2, 
misc1: 0, 
misc2: 0
}
, // S_MEGA
State_t {
sprite: Spritenum_t.spr_mega, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_mega_3, 
misc1: 0, 
misc2: 0
}
, // S_MEGA2
State_t {
sprite: Spritenum_t.spr_mega, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_mega_4, 
misc1: 0, 
misc2: 0
}
, // S_MEGA3
State_t {
sprite: Spritenum_t.spr_mega, 
frame: 32771, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_mega, 
misc1: 0, 
misc2: 0
}
, // S_MEGA4
State_t {
sprite: Spritenum_t.spr_suit, 
frame: 32768, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SUIT
State_t {
sprite: Spritenum_t.spr_pmap, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pmap_2, 
misc1: 0, 
misc2: 0
}
, // S_PMAP
State_t {
sprite: Spritenum_t.spr_pmap, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pmap_3, 
misc1: 0, 
misc2: 0
}
, // S_PMAP2
State_t {
sprite: Spritenum_t.spr_pmap, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pmap_4, 
misc1: 0, 
misc2: 0
}
, // S_PMAP3
State_t {
sprite: Spritenum_t.spr_pmap, 
frame: 32771, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pmap_5, 
misc1: 0, 
misc2: 0
}
, // S_PMAP4
State_t {
sprite: Spritenum_t.spr_pmap, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pmap_6, 
misc1: 0, 
misc2: 0
}
, // S_PMAP5
State_t {
sprite: Spritenum_t.spr_pmap, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pmap, 
misc1: 0, 
misc2: 0
}
, // S_PMAP6
State_t {
sprite: Spritenum_t.spr_pvis, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pvis_2, 
misc1: 0, 
misc2: 0
}
, // S_PVIS
State_t {
sprite: Spritenum_t.spr_pvis, 
frame: 1, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_pvis, 
misc1: 0, 
misc2: 0
}
, // S_PVIS2
State_t {
sprite: Spritenum_t.spr_clip, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_CLIP
State_t {
sprite: Spritenum_t.spr_ammo, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_AMMO
State_t {
sprite: Spritenum_t.spr_rock, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_ROCK
State_t {
sprite: Spritenum_t.spr_brok, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BROK
State_t {
sprite: Spritenum_t.spr_cell, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_CELL
State_t {
sprite: Spritenum_t.spr_celp, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_CELP
State_t {
sprite: Spritenum_t.spr_shel, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SHEL
State_t {
sprite: Spritenum_t.spr_sbox, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SBOX
State_t {
sprite: Spritenum_t.spr_bpak, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BPAK
State_t {
sprite: Spritenum_t.spr_bfug, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BFUG
State_t {
sprite: Spritenum_t.spr_mgun, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_MGUN
State_t {
sprite: Spritenum_t.spr_csaw, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_CSAW
State_t {
sprite: Spritenum_t.spr_laun, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_LAUN
State_t {
sprite: Spritenum_t.spr_plas, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_PLAS
State_t {
sprite: Spritenum_t.spr_shot, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SHOT
State_t {
sprite: Spritenum_t.spr_sgn_2, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SHOT2
State_t {
sprite: Spritenum_t.spr_colu, 
frame: 32768, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_COLU
State_t {
sprite: Spritenum_t.spr_smt_2, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_STALAG
State_t {
sprite: Spritenum_t.spr_gor_1, 
frame: 0, 
tics: 10, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bloodytwitch_2, 
misc1: 0, 
misc2: 0
}
, // S_BLOODYTWITCH
State_t {
sprite: Spritenum_t.spr_gor_1, 
frame: 1, 
tics: 15, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bloodytwitch_3, 
misc1: 0, 
misc2: 0
}
, // S_BLOODYTWITCH2
State_t {
sprite: Spritenum_t.spr_gor_1, 
frame: 2, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bloodytwitch_4, 
misc1: 0, 
misc2: 0
}
, // S_BLOODYTWITCH3
State_t {
sprite: Spritenum_t.spr_gor_1, 
frame: 1, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bloodytwitch, 
misc1: 0, 
misc2: 0
}
, // S_BLOODYTWITCH4
State_t {
sprite: Spritenum_t.spr_play, 
frame: 13, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_DEADTORSO
State_t {
sprite: Spritenum_t.spr_play, 
frame: 18, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_DEADBOTTOM
State_t {
sprite: Spritenum_t.spr_pol_2, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_HEADSONSTICK
State_t {
sprite: Spritenum_t.spr_pol_5, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_GIBS
State_t {
sprite: Spritenum_t.spr_pol_4, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_HEADONASTICK
State_t {
sprite: Spritenum_t.spr_pol_3, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_headcandles_2, 
misc1: 0, 
misc2: 0
}
, // S_HEADCANDLES
State_t {
sprite: Spritenum_t.spr_pol_3, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_headcandles, 
misc1: 0, 
misc2: 0
}
, // S_HEADCANDLES2
State_t {
sprite: Spritenum_t.spr_pol_1, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_DEADSTICK
State_t {
sprite: Spritenum_t.spr_pol_6, 
frame: 0, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_livestick_2, 
misc1: 0, 
misc2: 0
}
, // S_LIVESTICK
State_t {
sprite: Spritenum_t.spr_pol_6, 
frame: 1, 
tics: 8, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_livestick, 
misc1: 0, 
misc2: 0
}
, // S_LIVESTICK2
State_t {
sprite: Spritenum_t.spr_gor_2, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_MEAT2
State_t {
sprite: Spritenum_t.spr_gor_3, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_MEAT3
State_t {
sprite: Spritenum_t.spr_gor_4, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_MEAT4
State_t {
sprite: Spritenum_t.spr_gor_5, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_MEAT5
State_t {
sprite: Spritenum_t.spr_smit, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_STALAGTITE
State_t {
sprite: Spritenum_t.spr_col_1, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_TALLGRNCOL
State_t {
sprite: Spritenum_t.spr_col_2, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SHRTGRNCOL
State_t {
sprite: Spritenum_t.spr_col_3, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_TALLREDCOL
State_t {
sprite: Spritenum_t.spr_col_4, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SHRTREDCOL
State_t {
sprite: Spritenum_t.spr_cand, 
frame: 32768, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_CANDLESTIK
State_t {
sprite: Spritenum_t.spr_cbra, 
frame: 32768, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_CANDELABRA
State_t {
sprite: Spritenum_t.spr_col_6, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SKULLCOL
State_t {
sprite: Spritenum_t.spr_tre_1, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_TORCHTREE
State_t {
sprite: Spritenum_t.spr_tre_2, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BIGTREE
State_t {
sprite: Spritenum_t.spr_elec, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_TECHPILLAR
State_t {
sprite: Spritenum_t.spr_ceye, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_evileye_2, 
misc1: 0, 
misc2: 0
}
, // S_EVILEYE
State_t {
sprite: Spritenum_t.spr_ceye, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_evileye_3, 
misc1: 0, 
misc2: 0
}
, // S_EVILEYE2
State_t {
sprite: Spritenum_t.spr_ceye, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_evileye_4, 
misc1: 0, 
misc2: 0
}
, // S_EVILEYE3
State_t {
sprite: Spritenum_t.spr_ceye, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_evileye, 
misc1: 0, 
misc2: 0
}
, // S_EVILEYE4
State_t {
sprite: Spritenum_t.spr_fsku, 
frame: 32768, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_floatskull_2, 
misc1: 0, 
misc2: 0
}
, // S_FLOATSKULL
State_t {
sprite: Spritenum_t.spr_fsku, 
frame: 32769, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_floatskull_3, 
misc1: 0, 
misc2: 0
}
, // S_FLOATSKULL2
State_t {
sprite: Spritenum_t.spr_fsku, 
frame: 32770, 
tics: 6, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_floatskull, 
misc1: 0, 
misc2: 0
}
, // S_FLOATSKULL3
State_t {
sprite: Spritenum_t.spr_col_5, 
frame: 0, 
tics: 14, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_heartcol_2, 
misc1: 0, 
misc2: 0
}
, // S_HEARTCOL
State_t {
sprite: Spritenum_t.spr_col_5, 
frame: 1, 
tics: 14, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_heartcol, 
misc1: 0, 
misc2: 0
}
, // S_HEARTCOL2
State_t {
sprite: Spritenum_t.spr_tblu, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bluetorch_2, 
misc1: 0, 
misc2: 0
}
, // S_BLUETORCH
State_t {
sprite: Spritenum_t.spr_tblu, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bluetorch_3, 
misc1: 0, 
misc2: 0
}
, // S_BLUETORCH2
State_t {
sprite: Spritenum_t.spr_tblu, 
frame: 32770, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bluetorch_4, 
misc1: 0, 
misc2: 0
}
, // S_BLUETORCH3
State_t {
sprite: Spritenum_t.spr_tblu, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_bluetorch, 
misc1: 0, 
misc2: 0
}
, // S_BLUETORCH4
State_t {
sprite: Spritenum_t.spr_tgrn, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_greentorch_2, 
misc1: 0, 
misc2: 0
}
, // S_GREENTORCH
State_t {
sprite: Spritenum_t.spr_tgrn, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_greentorch_3, 
misc1: 0, 
misc2: 0
}
, // S_GREENTORCH2
State_t {
sprite: Spritenum_t.spr_tgrn, 
frame: 32770, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_greentorch_4, 
misc1: 0, 
misc2: 0
}
, // S_GREENTORCH3
State_t {
sprite: Spritenum_t.spr_tgrn, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_greentorch, 
misc1: 0, 
misc2: 0
}
, // S_GREENTORCH4
State_t {
sprite: Spritenum_t.spr_tred, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_redtorch_2, 
misc1: 0, 
misc2: 0
}
, // S_REDTORCH
State_t {
sprite: Spritenum_t.spr_tred, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_redtorch_3, 
misc1: 0, 
misc2: 0
}
, // S_REDTORCH2
State_t {
sprite: Spritenum_t.spr_tred, 
frame: 32770, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_redtorch_4, 
misc1: 0, 
misc2: 0
}
, // S_REDTORCH3
State_t {
sprite: Spritenum_t.spr_tred, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_redtorch, 
misc1: 0, 
misc2: 0
}
, // S_REDTORCH4
State_t {
sprite: Spritenum_t.spr_smbt, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_btorchshrt_2, 
misc1: 0, 
misc2: 0
}
, // S_BTORCHSHRT
State_t {
sprite: Spritenum_t.spr_smbt, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_btorchshrt_3, 
misc1: 0, 
misc2: 0
}
, // S_BTORCHSHRT2
State_t {
sprite: Spritenum_t.spr_smbt, 
frame: 32770, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_btorchshrt_4, 
misc1: 0, 
misc2: 0
}
, // S_BTORCHSHRT3
State_t {
sprite: Spritenum_t.spr_smbt, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_btorchshrt, 
misc1: 0, 
misc2: 0
}
, // S_BTORCHSHRT4
State_t {
sprite: Spritenum_t.spr_smgt, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_gtorchshrt_2, 
misc1: 0, 
misc2: 0
}
, // S_GTORCHSHRT
State_t {
sprite: Spritenum_t.spr_smgt, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_gtorchshrt_3, 
misc1: 0, 
misc2: 0
}
, // S_GTORCHSHRT2
State_t {
sprite: Spritenum_t.spr_smgt, 
frame: 32770, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_gtorchshrt_4, 
misc1: 0, 
misc2: 0
}
, // S_GTORCHSHRT3
State_t {
sprite: Spritenum_t.spr_smgt, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_gtorchshrt, 
misc1: 0, 
misc2: 0
}
, // S_GTORCHSHRT4
State_t {
sprite: Spritenum_t.spr_smrt, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_rtorchshrt_2, 
misc1: 0, 
misc2: 0
}
, // S_RTORCHSHRT
State_t {
sprite: Spritenum_t.spr_smrt, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_rtorchshrt_3, 
misc1: 0, 
misc2: 0
}
, // S_RTORCHSHRT2
State_t {
sprite: Spritenum_t.spr_smrt, 
frame: 32770, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_rtorchshrt_4, 
misc1: 0, 
misc2: 0
}
, // S_RTORCHSHRT3
State_t {
sprite: Spritenum_t.spr_smrt, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_rtorchshrt, 
misc1: 0, 
misc2: 0
}
, // S_RTORCHSHRT4
State_t {
sprite: Spritenum_t.spr_hdb_1, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_HANGNOGUTS
State_t {
sprite: Spritenum_t.spr_hdb_2, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_HANGBNOBRAIN
State_t {
sprite: Spritenum_t.spr_hdb_3, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_HANGTLOOKDN
State_t {
sprite: Spritenum_t.spr_hdb_4, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_HANGTSKULL
State_t {
sprite: Spritenum_t.spr_hdb_5, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_HANGTLOOKUP
State_t {
sprite: Spritenum_t.spr_hdb_6, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_HANGTNOBRAIN
State_t {
sprite: Spritenum_t.spr_pob_1, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_COLONGIBS
State_t {
sprite: Spritenum_t.spr_pob_2, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_SMALLPOOL
State_t {
sprite: Spritenum_t.spr_brs_1, 
frame: 0, 
tics: -1, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_null, 
misc1: 0, 
misc2: 0
}
, // S_BRAINSTEM
State_t {
sprite: Spritenum_t.spr_tlmp, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_techlamp_2, 
misc1: 0, 
misc2: 0
}
, // S_TECHLAMP
State_t {
sprite: Spritenum_t.spr_tlmp, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_techlamp_3, 
misc1: 0, 
misc2: 0
}
, // S_TECHLAMP2
State_t {
sprite: Spritenum_t.spr_tlmp, 
frame: 32770, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_techlamp_4, 
misc1: 0, 
misc2: 0
}
, // S_TECHLAMP3
State_t {
sprite: Spritenum_t.spr_tlmp, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_techlamp, 
misc1: 0, 
misc2: 0
}
, // S_TECHLAMP4
State_t {
sprite: Spritenum_t.spr_tlp_2, 
frame: 32768, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tech_2_lamp_2, 
misc1: 0, 
misc2: 0
}
, // S_TECH2LAMP
State_t {
sprite: Spritenum_t.spr_tlp_2, 
frame: 32769, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tech_2_lamp_3, 
misc1: 0, 
misc2: 0
}
, // S_TECH2LAMP2
State_t {
sprite: Spritenum_t.spr_tlp_2, 
frame: 32770, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tech_2_lamp_4, 
misc1: 0, 
misc2: 0
}
, // S_TECH2LAMP3
State_t {
sprite: Spritenum_t.spr_tlp_2, 
frame: 32771, 
tics: 4, 
action: Actionf_t {
acv: (voidptr(0))
}
, 
nextstate: Statenum_t.s_tech_2_lamp, 
misc1: 0, 
misc2: 0
}
, // S_TECH2LAMP4
]!

)


const (
mobjinfo   = [Mobjinfo_t {
// MT_PLAYER
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_play, 
// spawnstate
spawnhealth: 100, 
// spawnhealth
seestate: Statenum_t.s_play_run_1, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 0, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_play_pain, 
// painstate
painchance: 255, 
// painchance
painsound: Sfxenum_t.sfx_plpain, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_play_atk_1, 
// missilestate
deathstate: Statenum_t.s_play_die_1, 
// deathstate
xdeathstate: Statenum_t.s_play_xdie_1, 
// xdeathstate
deathsound: Sfxenum_t.sfx_pldeth, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 56 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_dropoff | Mobjflag_t.mf_pickup | Mobjflag_t.mf_notdmatch, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_POSSESSED
doomednum: 3004, 
// doomednum
spawnstate: Statenum_t.s_poss_stnd, 
// spawnstate
spawnhealth: 20, 
// spawnhealth
seestate: Statenum_t.s_poss_run_1, 
// seestate
seesound: Sfxenum_t.sfx_posit1, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_pistol, 
// attacksound
painstate: Statenum_t.s_poss_pain, 
// painstate
painchance: 200, 
// painchance
painsound: Sfxenum_t.sfx_popain, 
// painsound
meleestate: 0, 
// meleestate
missilestate: Statenum_t.s_poss_atk_1, 
// missilestate
deathstate: Statenum_t.s_poss_die_1, 
// deathstate
xdeathstate: Statenum_t.s_poss_xdie_1, 
// xdeathstate
deathsound: Sfxenum_t.sfx_podth1, 
// deathsound
speed: 8, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 56 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_posact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_poss_raise_1, 
// raisestate
}
, Mobjinfo_t {
// MT_SHOTGUY
doomednum: 9, 
// doomednum
spawnstate: Statenum_t.s_spos_stnd, 
// spawnstate
spawnhealth: 30, 
// spawnhealth
seestate: Statenum_t.s_spos_run_1, 
// seestate
seesound: Sfxenum_t.sfx_posit2, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: 0, 
// attacksound
painstate: Statenum_t.s_spos_pain, 
// painstate
painchance: 170, 
// painchance
painsound: Sfxenum_t.sfx_popain, 
// painsound
meleestate: 0, 
// meleestate
missilestate: Statenum_t.s_spos_atk_1, 
// missilestate
deathstate: Statenum_t.s_spos_die_1, 
// deathstate
xdeathstate: Statenum_t.s_spos_xdie_1, 
// xdeathstate
deathsound: Sfxenum_t.sfx_podth2, 
// deathsound
speed: 8, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 56 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_posact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_spos_raise_1, 
// raisestate
}
, Mobjinfo_t {
// MT_VILE
doomednum: 64, 
// doomednum
spawnstate: Statenum_t.s_vile_stnd, 
// spawnstate
spawnhealth: 700, 
// spawnhealth
seestate: Statenum_t.s_vile_run_1, 
// seestate
seesound: Sfxenum_t.sfx_vilsit, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: 0, 
// attacksound
painstate: Statenum_t.s_vile_pain, 
// painstate
painchance: 10, 
// painchance
painsound: Sfxenum_t.sfx_vipain, 
// painsound
meleestate: 0, 
// meleestate
missilestate: Statenum_t.s_vile_atk_1, 
// missilestate
deathstate: Statenum_t.s_vile_die_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_vildth, 
// deathsound
speed: 15, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 56 * (1 << 16), 
// height
mass: 500, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_vilact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_FIRE
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_fire_1, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_UNDEAD
doomednum: 66, 
// doomednum
spawnstate: Statenum_t.s_skel_stnd, 
// spawnstate
spawnhealth: 300, 
// spawnhealth
seestate: Statenum_t.s_skel_run_1, 
// seestate
seesound: Sfxenum_t.sfx_skesit, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: 0, 
// attacksound
painstate: Statenum_t.s_skel_pain, 
// painstate
painchance: 100, 
// painchance
painsound: Sfxenum_t.sfx_popain, 
// painsound
meleestate: Statenum_t.s_skel_fist_1, 
// meleestate
missilestate: Statenum_t.s_skel_miss_1, 
// missilestate
deathstate: Statenum_t.s_skel_die_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_skedth, 
// deathsound
speed: 10, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 56 * (1 << 16), 
// height
mass: 500, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_skeact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_skel_raise_1, 
// raisestate
}
, Mobjinfo_t {
// MT_TRACER
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_tracer, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_skeatk, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_traceexp_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_barexp, 
// deathsound
speed: 10 * (1 << 16), 
// speed
radius: 11 * (1 << 16), 
// radius
height: 8 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 10, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_missile | Mobjflag_t.mf_dropoff | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_SMOKE
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_smoke_1, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_FATSO
doomednum: 67, 
// doomednum
spawnstate: Statenum_t.s_fatt_stnd, 
// spawnstate
spawnhealth: 600, 
// spawnhealth
seestate: Statenum_t.s_fatt_run_1, 
// seestate
seesound: Sfxenum_t.sfx_mansit, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: 0, 
// attacksound
painstate: Statenum_t.s_fatt_pain, 
// painstate
painchance: 80, 
// painchance
painsound: Sfxenum_t.sfx_mnpain, 
// painsound
meleestate: 0, 
// meleestate
missilestate: Statenum_t.s_fatt_atk_1, 
// missilestate
deathstate: Statenum_t.s_fatt_die_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_mandth, 
// deathsound
speed: 8, 
// speed
radius: 48 * (1 << 16), 
// radius
height: 64 * (1 << 16), 
// height
mass: 1000, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_posact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_fatt_raise_1, 
// raisestate
}
, Mobjinfo_t {
// MT_FATSHOT
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_fatshot_1, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_firsht, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_fatshotx_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_firxpl, 
// deathsound
speed: 20 * (1 << 16), 
// speed
radius: 6 * (1 << 16), 
// radius
height: 8 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 8, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_missile | Mobjflag_t.mf_dropoff | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_CHAINGUY
doomednum: 65, 
// doomednum
spawnstate: Statenum_t.s_cpos_stnd, 
// spawnstate
spawnhealth: 70, 
// spawnhealth
seestate: Statenum_t.s_cpos_run_1, 
// seestate
seesound: Sfxenum_t.sfx_posit2, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: 0, 
// attacksound
painstate: Statenum_t.s_cpos_pain, 
// painstate
painchance: 170, 
// painchance
painsound: Sfxenum_t.sfx_popain, 
// painsound
meleestate: 0, 
// meleestate
missilestate: Statenum_t.s_cpos_atk_1, 
// missilestate
deathstate: Statenum_t.s_cpos_die_1, 
// deathstate
xdeathstate: Statenum_t.s_cpos_xdie_1, 
// xdeathstate
deathsound: Sfxenum_t.sfx_podth2, 
// deathsound
speed: 8, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 56 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_posact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_cpos_raise_1, 
// raisestate
}
, Mobjinfo_t {
// MT_TROOP
doomednum: 3001, 
// doomednum
spawnstate: Statenum_t.s_troo_stnd, 
// spawnstate
spawnhealth: 60, 
// spawnhealth
seestate: Statenum_t.s_troo_run_1, 
// seestate
seesound: Sfxenum_t.sfx_bgsit1, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: 0, 
// attacksound
painstate: Statenum_t.s_troo_pain, 
// painstate
painchance: 200, 
// painchance
painsound: Sfxenum_t.sfx_popain, 
// painsound
meleestate: Statenum_t.s_troo_atk_1, 
// meleestate
missilestate: Statenum_t.s_troo_atk_1, 
// missilestate
deathstate: Statenum_t.s_troo_die_1, 
// deathstate
xdeathstate: Statenum_t.s_troo_xdie_1, 
// xdeathstate
deathsound: Sfxenum_t.sfx_bgdth1, 
// deathsound
speed: 8, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 56 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_bgact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_troo_raise_1, 
// raisestate
}
, Mobjinfo_t {
// MT_SERGEANT
doomednum: 3002, 
// doomednum
spawnstate: Statenum_t.s_sarg_stnd, 
// spawnstate
spawnhealth: 150, 
// spawnhealth
seestate: Statenum_t.s_sarg_run_1, 
// seestate
seesound: Sfxenum_t.sfx_sgtsit, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_sgtatk, 
// attacksound
painstate: Statenum_t.s_sarg_pain, 
// painstate
painchance: 180, 
// painchance
painsound: Sfxenum_t.sfx_dmpain, 
// painsound
meleestate: Statenum_t.s_sarg_atk_1, 
// meleestate
missilestate: 0, 
// missilestate
deathstate: Statenum_t.s_sarg_die_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_sgtdth, 
// deathsound
speed: 10, 
// speed
radius: 30 * (1 << 16), 
// radius
height: 56 * (1 << 16), 
// height
mass: 400, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_dmact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_sarg_raise_1, 
// raisestate
}
, Mobjinfo_t {
// MT_SHADOWS
doomednum: 58, 
// doomednum
spawnstate: Statenum_t.s_sarg_stnd, 
// spawnstate
spawnhealth: 150, 
// spawnhealth
seestate: Statenum_t.s_sarg_run_1, 
// seestate
seesound: Sfxenum_t.sfx_sgtsit, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_sgtatk, 
// attacksound
painstate: Statenum_t.s_sarg_pain, 
// painstate
painchance: 180, 
// painchance
painsound: Sfxenum_t.sfx_dmpain, 
// painsound
meleestate: Statenum_t.s_sarg_atk_1, 
// meleestate
missilestate: 0, 
// missilestate
deathstate: Statenum_t.s_sarg_die_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_sgtdth, 
// deathsound
speed: 10, 
// speed
radius: 30 * (1 << 16), 
// radius
height: 56 * (1 << 16), 
// height
mass: 400, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_dmact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_shadow | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_sarg_raise_1, 
// raisestate
}
, Mobjinfo_t {
// MT_HEAD
doomednum: 3005, 
// doomednum
spawnstate: Statenum_t.s_head_stnd, 
// spawnstate
spawnhealth: 400, 
// spawnhealth
seestate: Statenum_t.s_head_run_1, 
// seestate
seesound: Sfxenum_t.sfx_cacsit, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: 0, 
// attacksound
painstate: Statenum_t.s_head_pain, 
// painstate
painchance: 128, 
// painchance
painsound: Sfxenum_t.sfx_dmpain, 
// painsound
meleestate: 0, 
// meleestate
missilestate: Statenum_t.s_head_atk_1, 
// missilestate
deathstate: Statenum_t.s_head_die_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_cacdth, 
// deathsound
speed: 8, 
// speed
radius: 31 * (1 << 16), 
// radius
height: 56 * (1 << 16), 
// height
mass: 400, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_dmact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_float | Mobjflag_t.mf_nogravity | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_head_raise_1, 
// raisestate
}
, Mobjinfo_t {
// MT_BRUISER
doomednum: 3003, 
// doomednum
spawnstate: Statenum_t.s_boss_stnd, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_boss_run_1, 
// seestate
seesound: Sfxenum_t.sfx_brssit, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: 0, 
// attacksound
painstate: Statenum_t.s_boss_pain, 
// painstate
painchance: 50, 
// painchance
painsound: Sfxenum_t.sfx_dmpain, 
// painsound
meleestate: Statenum_t.s_boss_atk_1, 
// meleestate
missilestate: Statenum_t.s_boss_atk_1, 
// missilestate
deathstate: Statenum_t.s_boss_die_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_brsdth, 
// deathsound
speed: 8, 
// speed
radius: 24 * (1 << 16), 
// radius
height: 64 * (1 << 16), 
// height
mass: 1000, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_dmact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_boss_raise_1, 
// raisestate
}
, Mobjinfo_t {
// MT_BRUISERSHOT
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_brball_1, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_firsht, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_brballx_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_firxpl, 
// deathsound
speed: 15 * (1 << 16), 
// speed
radius: 6 * (1 << 16), 
// radius
height: 8 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 8, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_missile | Mobjflag_t.mf_dropoff | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_KNIGHT
doomednum: 69, 
// doomednum
spawnstate: Statenum_t.s_bos_2_stnd, 
// spawnstate
spawnhealth: 500, 
// spawnhealth
seestate: Statenum_t.s_bos_2_run_1, 
// seestate
seesound: Sfxenum_t.sfx_kntsit, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: 0, 
// attacksound
painstate: Statenum_t.s_bos_2_pain, 
// painstate
painchance: 50, 
// painchance
painsound: Sfxenum_t.sfx_dmpain, 
// painsound
meleestate: Statenum_t.s_bos_2_atk_1, 
// meleestate
missilestate: Statenum_t.s_bos_2_atk_1, 
// missilestate
deathstate: Statenum_t.s_bos_2_die_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_kntdth, 
// deathsound
speed: 8, 
// speed
radius: 24 * (1 << 16), 
// radius
height: 64 * (1 << 16), 
// height
mass: 1000, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_dmact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_bos_2_raise_1, 
// raisestate
}
, Mobjinfo_t {
// MT_SKULL
doomednum: 3006, 
// doomednum
spawnstate: Statenum_t.s_skull_stnd, 
// spawnstate
spawnhealth: 100, 
// spawnhealth
seestate: Statenum_t.s_skull_run_1, 
// seestate
seesound: 0, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_sklatk, 
// attacksound
painstate: Statenum_t.s_skull_pain, 
// painstate
painchance: 256, 
// painchance
painsound: Sfxenum_t.sfx_dmpain, 
// painsound
meleestate: 0, 
// meleestate
missilestate: Statenum_t.s_skull_atk_1, 
// missilestate
deathstate: Statenum_t.s_skull_die_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_firxpl, 
// deathsound
speed: 8, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 56 * (1 << 16), 
// height
mass: 50, 
// mass
damage: 3, 
// damage
activesound: Sfxenum_t.sfx_dmact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_float | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_SPIDER
doomednum: 7, 
// doomednum
spawnstate: Statenum_t.s_spid_stnd, 
// spawnstate
spawnhealth: 3000, 
// spawnhealth
seestate: Statenum_t.s_spid_run_1, 
// seestate
seesound: Sfxenum_t.sfx_spisit, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_shotgn, 
// attacksound
painstate: Statenum_t.s_spid_pain, 
// painstate
painchance: 40, 
// painchance
painsound: Sfxenum_t.sfx_dmpain, 
// painsound
meleestate: 0, 
// meleestate
missilestate: Statenum_t.s_spid_atk_1, 
// missilestate
deathstate: Statenum_t.s_spid_die_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_spidth, 
// deathsound
speed: 12, 
// speed
radius: 128 * (1 << 16), 
// radius
height: 100 * (1 << 16), 
// height
mass: 1000, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_dmact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_BABY
doomednum: 68, 
// doomednum
spawnstate: Statenum_t.s_bspi_stnd, 
// spawnstate
spawnhealth: 500, 
// spawnhealth
seestate: Statenum_t.s_bspi_sight, 
// seestate
seesound: Sfxenum_t.sfx_bspsit, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: 0, 
// attacksound
painstate: Statenum_t.s_bspi_pain, 
// painstate
painchance: 128, 
// painchance
painsound: Sfxenum_t.sfx_dmpain, 
// painsound
meleestate: 0, 
// meleestate
missilestate: Statenum_t.s_bspi_atk_1, 
// missilestate
deathstate: Statenum_t.s_bspi_die_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_bspdth, 
// deathsound
speed: 12, 
// speed
radius: 64 * (1 << 16), 
// radius
height: 64 * (1 << 16), 
// height
mass: 600, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_bspact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_bspi_raise_1, 
// raisestate
}
, Mobjinfo_t {
// MT_CYBORG
doomednum: 16, 
// doomednum
spawnstate: Statenum_t.s_cyber_stnd, 
// spawnstate
spawnhealth: 4000, 
// spawnhealth
seestate: Statenum_t.s_cyber_run_1, 
// seestate
seesound: Sfxenum_t.sfx_cybsit, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: 0, 
// attacksound
painstate: Statenum_t.s_cyber_pain, 
// painstate
painchance: 20, 
// painchance
painsound: Sfxenum_t.sfx_dmpain, 
// painsound
meleestate: 0, 
// meleestate
missilestate: Statenum_t.s_cyber_atk_1, 
// missilestate
deathstate: Statenum_t.s_cyber_die_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_cybdth, 
// deathsound
speed: 16, 
// speed
radius: 40 * (1 << 16), 
// radius
height: 110 * (1 << 16), 
// height
mass: 1000, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_dmact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_PAIN
doomednum: 71, 
// doomednum
spawnstate: Statenum_t.s_pain_stnd, 
// spawnstate
spawnhealth: 400, 
// spawnhealth
seestate: Statenum_t.s_pain_run_1, 
// seestate
seesound: Sfxenum_t.sfx_pesit, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: 0, 
// attacksound
painstate: Statenum_t.s_pain_pain, 
// painstate
painchance: 128, 
// painchance
painsound: Sfxenum_t.sfx_pepain, 
// painsound
meleestate: 0, 
// meleestate
missilestate: Statenum_t.s_pain_atk_1, 
// missilestate
deathstate: Statenum_t.s_pain_die_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_pedth, 
// deathsound
speed: 8, 
// speed
radius: 31 * (1 << 16), 
// radius
height: 56 * (1 << 16), 
// height
mass: 400, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_dmact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_float | Mobjflag_t.mf_nogravity | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_pain_raise_1, 
// raisestate
}
, Mobjinfo_t {
// MT_WOLFSS
doomednum: 84, 
// doomednum
spawnstate: Statenum_t.s_sswv_stnd, 
// spawnstate
spawnhealth: 50, 
// spawnhealth
seestate: Statenum_t.s_sswv_run_1, 
// seestate
seesound: Sfxenum_t.sfx_sssit, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: 0, 
// attacksound
painstate: Statenum_t.s_sswv_pain, 
// painstate
painchance: 170, 
// painchance
painsound: Sfxenum_t.sfx_popain, 
// painsound
meleestate: 0, 
// meleestate
missilestate: Statenum_t.s_sswv_atk_1, 
// missilestate
deathstate: Statenum_t.s_sswv_die_1, 
// deathstate
xdeathstate: Statenum_t.s_sswv_xdie_1, 
// xdeathstate
deathsound: Sfxenum_t.sfx_ssdth, 
// deathsound
speed: 8, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 56 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_posact, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_sswv_raise_1, 
// raisestate
}
, Mobjinfo_t {
// MT_KEEN
doomednum: 72, 
// doomednum
spawnstate: Statenum_t.s_keenstnd, 
// spawnstate
spawnhealth: 100, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_keenpain, 
// painstate
painchance: 256, 
// painchance
painsound: Sfxenum_t.sfx_keenpn, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_commkeen, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_keendt, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 72 * (1 << 16), 
// height
mass: 10000000, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity | Mobjflag_t.mf_shootable | Mobjflag_t.mf_countkill, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_BOSSBRAIN
doomednum: 88, 
// doomednum
spawnstate: Statenum_t.s_brain, 
// spawnstate
spawnhealth: 250, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_brain_pain, 
// painstate
painchance: 255, 
// painchance
painsound: Sfxenum_t.sfx_bospn, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_brain_die_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_bosdth, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 10000000, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_BOSSSPIT
doomednum: 89, 
// doomednum
spawnstate: Statenum_t.s_braineye, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_braineyesee, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 32 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_nosector, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_BOSSTARGET
doomednum: 87, 
// doomednum
spawnstate: Statenum_t.s_null, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 32 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_nosector, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_SPAWNSHOT
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_spawn_1, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_bospit, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_firxpl, 
// deathsound
speed: 10 * (1 << 16), 
// speed
radius: 6 * (1 << 16), 
// radius
height: 32 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 3, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_missile | Mobjflag_t.mf_dropoff | Mobjflag_t.mf_nogravity | Mobjflag_t.mf_noclip, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_SPAWNFIRE
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_spawnfire_1, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_BARREL
doomednum: 2035, 
// doomednum
spawnstate: Statenum_t.s_bar_1, 
// spawnstate
spawnhealth: 20, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_bexp, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_barexp, 
// deathsound
speed: 0, 
// speed
radius: 10 * (1 << 16), 
// radius
height: 42 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_shootable | Mobjflag_t.mf_noblood, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_TROOPSHOT
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_tball_1, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_firsht, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_tballx_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_firxpl, 
// deathsound
speed: 10 * (1 << 16), 
// speed
radius: 6 * (1 << 16), 
// radius
height: 8 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 3, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_missile | Mobjflag_t.mf_dropoff | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_HEADSHOT
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_rball_1, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_firsht, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_rballx_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_firxpl, 
// deathsound
speed: 10 * (1 << 16), 
// speed
radius: 6 * (1 << 16), 
// radius
height: 8 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 5, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_missile | Mobjflag_t.mf_dropoff | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_ROCKET
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_rocket, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_rlaunc, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_explode_1, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_barexp, 
// deathsound
speed: 20 * (1 << 16), 
// speed
radius: 11 * (1 << 16), 
// radius
height: 8 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 20, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_missile | Mobjflag_t.mf_dropoff | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_PLASMA
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_plasball, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_plasma, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_plasexp, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_firxpl, 
// deathsound
speed: 25 * (1 << 16), 
// speed
radius: 13 * (1 << 16), 
// radius
height: 8 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 5, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_missile | Mobjflag_t.mf_dropoff | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_BFG
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_bfgshot, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: 0, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_bfgland, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_rxplod, 
// deathsound
speed: 25 * (1 << 16), 
// speed
radius: 13 * (1 << 16), 
// radius
height: 8 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 100, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_missile | Mobjflag_t.mf_dropoff | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_ARACHPLAZ
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_arach_plaz, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_plasma, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_arach_plex, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_firxpl, 
// deathsound
speed: 25 * (1 << 16), 
// speed
radius: 13 * (1 << 16), 
// radius
height: 8 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 5, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_missile | Mobjflag_t.mf_dropoff | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_PUFF
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_puff_1, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_BLOOD
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_blood_1, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_TFOG
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_tfog, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_IFOG
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_ifog, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_TELEPORTMAN
doomednum: 14, 
// doomednum
spawnstate: Statenum_t.s_null, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_nosector, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_EXTRABFG
doomednum: -1, 
// doomednum
spawnstate: Statenum_t.s_bfgexp, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC0
doomednum: 2018, 
// doomednum
spawnstate: Statenum_t.s_arm_1, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC1
doomednum: 2019, 
// doomednum
spawnstate: Statenum_t.s_arm_2, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC2
doomednum: 2014, 
// doomednum
spawnstate: Statenum_t.s_bon_1, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_countitem, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC3
doomednum: 2015, 
// doomednum
spawnstate: Statenum_t.s_bon_2, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_countitem, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC4
doomednum: 5, 
// doomednum
spawnstate: Statenum_t.s_bkey, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_notdmatch, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC5
doomednum: 13, 
// doomednum
spawnstate: Statenum_t.s_rkey, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_notdmatch, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC6
doomednum: 6, 
// doomednum
spawnstate: Statenum_t.s_ykey, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_notdmatch, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC7
doomednum: 39, 
// doomednum
spawnstate: Statenum_t.s_yskull, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_notdmatch, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC8
doomednum: 38, 
// doomednum
spawnstate: Statenum_t.s_rskull, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_notdmatch, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC9
doomednum: 40, 
// doomednum
spawnstate: Statenum_t.s_bskull, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_notdmatch, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC10
doomednum: 2011, 
// doomednum
spawnstate: Statenum_t.s_stim, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC11
doomednum: 2012, 
// doomednum
spawnstate: Statenum_t.s_medi, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC12
doomednum: 2013, 
// doomednum
spawnstate: Statenum_t.s_soul, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_countitem, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_INV
doomednum: 2022, 
// doomednum
spawnstate: Statenum_t.s_pinv, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_countitem, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC13
doomednum: 2023, 
// doomednum
spawnstate: Statenum_t.s_pstr, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_countitem, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_INS
doomednum: 2024, 
// doomednum
spawnstate: Statenum_t.s_pins, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_countitem, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC14
doomednum: 2025, 
// doomednum
spawnstate: Statenum_t.s_suit, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC15
doomednum: 2026, 
// doomednum
spawnstate: Statenum_t.s_pmap, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_countitem, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC16
doomednum: 2045, 
// doomednum
spawnstate: Statenum_t.s_pvis, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_countitem, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MEGA
doomednum: 83, 
// doomednum
spawnstate: Statenum_t.s_mega, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special | Mobjflag_t.mf_countitem, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_CLIP
doomednum: 2007, 
// doomednum
spawnstate: Statenum_t.s_clip, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC17
doomednum: 2048, 
// doomednum
spawnstate: Statenum_t.s_ammo, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC18
doomednum: 2010, 
// doomednum
spawnstate: Statenum_t.s_rock, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC19
doomednum: 2046, 
// doomednum
spawnstate: Statenum_t.s_brok, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC20
doomednum: 2047, 
// doomednum
spawnstate: Statenum_t.s_cell, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC21
doomednum: 17, 
// doomednum
spawnstate: Statenum_t.s_celp, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC22
doomednum: 2008, 
// doomednum
spawnstate: Statenum_t.s_shel, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC23
doomednum: 2049, 
// doomednum
spawnstate: Statenum_t.s_sbox, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC24
doomednum: 8, 
// doomednum
spawnstate: Statenum_t.s_bpak, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC25
doomednum: 2006, 
// doomednum
spawnstate: Statenum_t.s_bfug, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_CHAINGUN
doomednum: 2002, 
// doomednum
spawnstate: Statenum_t.s_mgun, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC26
doomednum: 2005, 
// doomednum
spawnstate: Statenum_t.s_csaw, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC27
doomednum: 2003, 
// doomednum
spawnstate: Statenum_t.s_laun, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC28
doomednum: 2004, 
// doomednum
spawnstate: Statenum_t.s_plas, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_SHOTGUN
doomednum: 2001, 
// doomednum
spawnstate: Statenum_t.s_shot, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_SUPERSHOTGUN
doomednum: 82, 
// doomednum
spawnstate: Statenum_t.s_shot_2, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_special, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC29
doomednum: 85, 
// doomednum
spawnstate: Statenum_t.s_techlamp, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC30
doomednum: 86, 
// doomednum
spawnstate: Statenum_t.s_tech_2_lamp, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC31
doomednum: 2028, 
// doomednum
spawnstate: Statenum_t.s_colu, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC32
doomednum: 30, 
// doomednum
spawnstate: Statenum_t.s_tallgrncol, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC33
doomednum: 31, 
// doomednum
spawnstate: Statenum_t.s_shrtgrncol, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC34
doomednum: 32, 
// doomednum
spawnstate: Statenum_t.s_tallredcol, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC35
doomednum: 33, 
// doomednum
spawnstate: Statenum_t.s_shrtredcol, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC36
doomednum: 37, 
// doomednum
spawnstate: Statenum_t.s_skullcol, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC37
doomednum: 36, 
// doomednum
spawnstate: Statenum_t.s_heartcol, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC38
doomednum: 41, 
// doomednum
spawnstate: Statenum_t.s_evileye, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC39
doomednum: 42, 
// doomednum
spawnstate: Statenum_t.s_floatskull, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC40
doomednum: 43, 
// doomednum
spawnstate: Statenum_t.s_torchtree, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC41
doomednum: 44, 
// doomednum
spawnstate: Statenum_t.s_bluetorch, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC42
doomednum: 45, 
// doomednum
spawnstate: Statenum_t.s_greentorch, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC43
doomednum: 46, 
// doomednum
spawnstate: Statenum_t.s_redtorch, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC44
doomednum: 55, 
// doomednum
spawnstate: Statenum_t.s_btorchshrt, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC45
doomednum: 56, 
// doomednum
spawnstate: Statenum_t.s_gtorchshrt, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC46
doomednum: 57, 
// doomednum
spawnstate: Statenum_t.s_rtorchshrt, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC47
doomednum: 47, 
// doomednum
spawnstate: Statenum_t.s_stalagtite, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC48
doomednum: 48, 
// doomednum
spawnstate: Statenum_t.s_techpillar, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC49
doomednum: 34, 
// doomednum
spawnstate: Statenum_t.s_candlestik, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: 0, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC50
doomednum: 35, 
// doomednum
spawnstate: Statenum_t.s_candelabra, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC51
doomednum: 49, 
// doomednum
spawnstate: Statenum_t.s_bloodytwitch, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 68 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC52
doomednum: 50, 
// doomednum
spawnstate: Statenum_t.s_meat_2, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 84 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC53
doomednum: 51, 
// doomednum
spawnstate: Statenum_t.s_meat_3, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 84 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC54
doomednum: 52, 
// doomednum
spawnstate: Statenum_t.s_meat_4, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 68 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC55
doomednum: 53, 
// doomednum
spawnstate: Statenum_t.s_meat_5, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 52 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC56
doomednum: 59, 
// doomednum
spawnstate: Statenum_t.s_meat_2, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 84 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC57
doomednum: 60, 
// doomednum
spawnstate: Statenum_t.s_meat_4, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 68 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC58
doomednum: 61, 
// doomednum
spawnstate: Statenum_t.s_meat_3, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 52 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC59
doomednum: 62, 
// doomednum
spawnstate: Statenum_t.s_meat_5, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 52 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC60
doomednum: 63, 
// doomednum
spawnstate: Statenum_t.s_bloodytwitch, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 68 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC61
doomednum: 22, 
// doomednum
spawnstate: Statenum_t.s_head_die_6, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: 0, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC62
doomednum: 15, 
// doomednum
spawnstate: Statenum_t.s_play_die_7, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: 0, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC63
doomednum: 18, 
// doomednum
spawnstate: Statenum_t.s_poss_die_5, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: 0, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC64
doomednum: 21, 
// doomednum
spawnstate: Statenum_t.s_sarg_die_6, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: 0, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC65
doomednum: 23, 
// doomednum
spawnstate: Statenum_t.s_skull_die_6, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: 0, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC66
doomednum: 20, 
// doomednum
spawnstate: Statenum_t.s_troo_die_5, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: 0, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC67
doomednum: 19, 
// doomednum
spawnstate: Statenum_t.s_spos_die_5, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: 0, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC68
doomednum: 10, 
// doomednum
spawnstate: Statenum_t.s_play_xdie_9, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: 0, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC69
doomednum: 12, 
// doomednum
spawnstate: Statenum_t.s_play_xdie_9, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: 0, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC70
doomednum: 28, 
// doomednum
spawnstate: Statenum_t.s_headsonstick, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC71
doomednum: 24, 
// doomednum
spawnstate: Statenum_t.s_gibs, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: 0, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC72
doomednum: 27, 
// doomednum
spawnstate: Statenum_t.s_headonastick, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC73
doomednum: 29, 
// doomednum
spawnstate: Statenum_t.s_headcandles, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC74
doomednum: 25, 
// doomednum
spawnstate: Statenum_t.s_deadstick, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC75
doomednum: 26, 
// doomednum
spawnstate: Statenum_t.s_livestick, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC76
doomednum: 54, 
// doomednum
spawnstate: Statenum_t.s_bigtree, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 32 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC77
doomednum: 70, 
// doomednum
spawnstate: Statenum_t.s_bbar_1, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC78
doomednum: 73, 
// doomednum
spawnstate: Statenum_t.s_hangnoguts, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 88 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC79
doomednum: 74, 
// doomednum
spawnstate: Statenum_t.s_hangbnobrain, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 88 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC80
doomednum: 75, 
// doomednum
spawnstate: Statenum_t.s_hangtlookdn, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 64 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC81
doomednum: 76, 
// doomednum
spawnstate: Statenum_t.s_hangtskull, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 64 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC82
doomednum: 77, 
// doomednum
spawnstate: Statenum_t.s_hangtlookup, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 64 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC83
doomednum: 78, 
// doomednum
spawnstate: Statenum_t.s_hangtnobrain, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 16 * (1 << 16), 
// radius
height: 64 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_solid | Mobjflag_t.mf_spawnceiling | Mobjflag_t.mf_nogravity, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC84
doomednum: 79, 
// doomednum
spawnstate: Statenum_t.s_colongibs, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC85
doomednum: 80, 
// doomednum
spawnstate: Statenum_t.s_smallpool, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
, Mobjinfo_t {
// MT_MISC86
doomednum: 81, 
// doomednum
spawnstate: Statenum_t.s_brainstem, 
// spawnstate
spawnhealth: 1000, 
// spawnhealth
seestate: Statenum_t.s_null, 
// seestate
seesound: Sfxenum_t.sfx_none, 
// seesound
reactiontime: 8, 
// reactiontime
attacksound: Sfxenum_t.sfx_none, 
// attacksound
painstate: Statenum_t.s_null, 
// painstate
painchance: 0, 
// painchance
painsound: Sfxenum_t.sfx_none, 
// painsound
meleestate: Statenum_t.s_null, 
// meleestate
missilestate: Statenum_t.s_null, 
// missilestate
deathstate: Statenum_t.s_null, 
// deathstate
xdeathstate: Statenum_t.s_null, 
// xdeathstate
deathsound: Sfxenum_t.sfx_none, 
// deathsound
speed: 0, 
// speed
radius: 20 * (1 << 16), 
// radius
height: 16 * (1 << 16), 
// height
mass: 100, 
// mass
damage: 0, 
// damage
activesound: Sfxenum_t.sfx_none, 
// activesound
flags: Mobjflag_t.mf_noblockmap, 
// flags
raisestate: Statenum_t.s_null, 
// raisestate
}
]!

)


@[weak] __global ( itemrespawnque [128]Mapthing_t 

)


@[weak] __global ( itemrespawntime [128]int 

)


@[weak] __global ( ceilingline &Line_t 

)


@[weak] __global ( linetarget &Mobj_t 

)


@[weak] __global ( gameskill Skill_t 

)


@[weak] __global ( respawnmonsters bool 

)


@[weak] __global ( test int 

)


@[weak] __global ( attackrange int 

)


@[weak] __global ( deh_allow_long_cheats bool 

)


@[weak] __global ( deh_apply_cheats bool 

)


@[weak] __global ( cheat_amap  = Cheatseq_t {
sequence: c'iddt', 
sequence_len: sizeof(c'iddt') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}

)


@[weak] __global ( cheat_mus  = Cheatseq_t {
sequence: c'idmus', 
sequence_len: sizeof(c'idmus') - 1, 
parameter_chars: 2, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}

)


@[weak] __global ( cheat_god  = Cheatseq_t {
sequence: c'iddqd', 
sequence_len: sizeof(c'iddqd') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}

)


@[weak] __global ( cheat_ammo  = Cheatseq_t {
sequence: c'idkfa', 
sequence_len: sizeof(c'idkfa') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}

)


@[weak] __global ( cheat_ammonokey  = Cheatseq_t {
sequence: c'idfa', 
sequence_len: sizeof(c'idfa') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}

)


@[weak] __global ( cheat_noclip  = Cheatseq_t {
sequence: c'idspispopd', 
sequence_len: sizeof(c'idspispopd') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}

)


@[weak] __global ( cheat_commercial_noclip  = Cheatseq_t {
sequence: c'idclip', 
sequence_len: sizeof(c'idclip') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}

)


const (
cheat_powerup   = [Cheatseq_t {
sequence: c'idbeholdv', 
sequence_len: sizeof(c'idbeholdv') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}
, Cheatseq_t {
sequence: c'idbeholds', 
sequence_len: sizeof(c'idbeholds') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}
, Cheatseq_t {
sequence: c'idbeholdi', 
sequence_len: sizeof(c'idbeholdi') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}
, Cheatseq_t {
sequence: c'idbeholdr', 
sequence_len: sizeof(c'idbeholdr') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}
, Cheatseq_t {
sequence: c'idbeholda', 
sequence_len: sizeof(c'idbeholda') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}
, Cheatseq_t {
sequence: c'idbeholdl', 
sequence_len: sizeof(c'idbeholdl') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}
, Cheatseq_t {
sequence: c'idbehold', 
sequence_len: sizeof(c'idbehold') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}
]!

)


@[weak] __global ( cheat_choppers  = Cheatseq_t {
sequence: c'idchoppers', 
sequence_len: sizeof(c'idchoppers') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}

)


@[weak] __global ( cheat_clev  = Cheatseq_t {
sequence: c'idclev', 
sequence_len: sizeof(c'idclev') - 1, 
parameter_chars: 2, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}

)


@[weak] __global ( cheat_mypos  = Cheatseq_t {
sequence: c'idmypos', 
sequence_len: sizeof(c'idmypos') - 1, 
parameter_chars: 0, 
chars_read: 0, 
param_chars_read: 0, 
parameter_buf: c''
}

)


const (
allcheats   = [Deh_cheat_t {
name: c'Change music', 
seq: &cheat_mus
}
, Deh_cheat_t {
name: c'Chainsaw', 
seq: &cheat_choppers
}
, Deh_cheat_t {
name: c'God mode', 
seq: &cheat_god
}
, Deh_cheat_t {
name: c'Ammo & Keys', 
seq: &cheat_ammo
}
, Deh_cheat_t {
name: c'Ammo', 
seq: &cheat_ammonokey
}
, Deh_cheat_t {
name: c'No Clipping 1', 
seq: &cheat_noclip
}
, Deh_cheat_t {
name: c'No Clipping 2', 
seq: &cheat_commercial_noclip
}
, Deh_cheat_t {
name: c'Invincibility', 
seq: &cheat_powerup [0] 
}
, Deh_cheat_t {
name: c'Berserk', 
seq: &cheat_powerup [1] 
}
, Deh_cheat_t {
name: c'Invisibility', 
seq: &cheat_powerup [2] 
}
, Deh_cheat_t {
name: c'Radiation Suit', 
seq: &cheat_powerup [3] 
}
, Deh_cheat_t {
name: c'Auto-map', 
seq: &cheat_powerup [4] 
}
, Deh_cheat_t {
name: c'Lite-Amp Goggles', 
seq: &cheat_powerup [5] 
}
, Deh_cheat_t {
name: c'BEHOLD menu', 
seq: &cheat_powerup [6] 
}
, Deh_cheat_t {
name: c'Level Warp', 
seq: &cheat_clev
}
, Deh_cheat_t {
name: c'Player Position', 
seq: &cheat_mypos
}
, Deh_cheat_t {
name: c'Map cheat', 
seq: &cheat_amap
}
]!

)


@[weak] __global ( deh_section_cheat  = Deh_section_t {
//FAILED TO FIND STRUCT Deh_section_t
c'Cheat', (voidptr(0)), deh_cheat_start, deh_cheat_parse_line, (voidptr(0)), (voidptr(0))}

)


@[weak] __global ( st_backing_screen &Pixel_t 

)


@[weak] __global ( sttminus &Patch_t 

)


@[weak] __global ( I_VideoBuffer &Pixel_t 

)


@[weak] __global ( joywait u32 

)


@[weak] __global ( key_map_north int 

)


@[weak] __global ( key_map_south int 

)


@[weak] __global ( key_map_east int 

)


@[weak] __global ( key_map_west int 

)


@[weak] __global ( key_map_zoomin int 

)


@[weak] __global ( key_map_zoomout int 

)


@[weak] __global ( key_map_toggle int 

)


@[weak] __global ( key_map_maxzoom int 

)


@[weak] __global ( key_map_follow int 

)


@[weak] __global ( key_map_grid int 

)


@[weak] __global ( key_map_mark int 

)


@[weak] __global ( key_map_clearmark int 

)


@[weak] __global ( joybautomap int 

)


@[weak] __global ( gameepisode int 

)


@[weak] __global ( gamemap int 

)


const (
player_arrow   = [Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 
y: 0
}
, 
b: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7), 
y: 0
}

}
, // -----
Mline_t {
a: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7), 
y: 0
}
, 
b: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 2, 
y: ((8 * 16 * (1 << 16)) / 7) / 4
}

}
, // ----->
Mline_t {
a: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7), 
y: 0
}
, 
b: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 2, 
y: -((8 * 16 * (1 << 16)) / 7) / 4
}

}
, Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 
y: 0
}
, 
b: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 8, 
y: ((8 * 16 * (1 << 16)) / 7) / 4
}

}
, // >---->
Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 
y: 0
}
, 
b: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 8, 
y: -((8 * 16 * (1 << 16)) / 7) / 4
}

}
, Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) + 3 * ((8 * 16 * (1 << 16)) / 7) / 8, 
y: 0
}
, 
b: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 
y: ((8 * 16 * (1 << 16)) / 7) / 4
}

}
, // >>--->
Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) + 3 * ((8 * 16 * (1 << 16)) / 7) / 8, 
y: 0
}
, 
b: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 
y: -((8 * 16 * (1 << 16)) / 7) / 4
}

}
]!

)


const (
cheat_player_arrow   = [Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 
y: 0
}
, 
b: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7), 
y: 0
}

}
, // -----
Mline_t {
a: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7), 
y: 0
}
, 
b: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 2, 
y: ((8 * 16 * (1 << 16)) / 7) / 6
}

}
, // ----->
Mline_t {
a: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7), 
y: 0
}
, 
b: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 2, 
y: -((8 * 16 * (1 << 16)) / 7) / 6
}

}
, Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 
y: 0
}
, 
b: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 8, 
y: ((8 * 16 * (1 << 16)) / 7) / 6
}

}
, // >----->
Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 
y: 0
}
, 
b: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) - ((8 * 16 * (1 << 16)) / 7) / 8, 
y: -((8 * 16 * (1 << 16)) / 7) / 6
}

}
, Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) + 3 * ((8 * 16 * (1 << 16)) / 7) / 8, 
y: 0
}
, 
b: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 
y: ((8 * 16 * (1 << 16)) / 7) / 6
}

}
, // >>----->
Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) + 3 * ((8 * 16 * (1 << 16)) / 7) / 8, 
y: 0
}
, 
b: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) + ((8 * 16 * (1 << 16)) / 7) / 8, 
y: -((8 * 16 * (1 << 16)) / 7) / 6
}

}
, Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) / 2, 
y: 0
}
, 
b: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) / 2, 
y: -((8 * 16 * (1 << 16)) / 7) / 6
}

}
, // >>-d--->
Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) / 2, 
y: -((8 * 16 * (1 << 16)) / 7) / 6
}
, 
b: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) / 2 + ((8 * 16 * (1 << 16)) / 7) / 6, 
y: -((8 * 16 * (1 << 16)) / 7) / 6
}

}
, Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) / 2 + ((8 * 16 * (1 << 16)) / 7) / 6, 
y: -((8 * 16 * (1 << 16)) / 7) / 6
}
, 
b: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) / 2 + ((8 * 16 * (1 << 16)) / 7) / 6, 
y: ((8 * 16 * (1 << 16)) / 7) / 4
}

}
, Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) / 6, 
y: 0
}
, 
b: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) / 6, 
y: -((8 * 16 * (1 << 16)) / 7) / 6
}

}
, // >>-dd-->
Mline_t {
a: Mpoint_t {
x: -((8 * 16 * (1 << 16)) / 7) / 6, 
y: -((8 * 16 * (1 << 16)) / 7) / 6
}
, 
b: Mpoint_t {
x: 0, 
y: -((8 * 16 * (1 << 16)) / 7) / 6
}

}
, Mline_t {
a: Mpoint_t {
x: 0, 
y: -((8 * 16 * (1 << 16)) / 7) / 6
}
, 
b: Mpoint_t {
x: 0, 
y: ((8 * 16 * (1 << 16)) / 7) / 4
}

}
, Mline_t {
a: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7) / 6, 
y: ((8 * 16 * (1 << 16)) / 7) / 4
}
, 
b: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7) / 6, 
y: -((8 * 16 * (1 << 16)) / 7) / 7
}

}
, // >>-ddt->
Mline_t {
a: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7) / 6, 
y: -((8 * 16 * (1 << 16)) / 7) / 7
}
, 
b: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7) / 6 + ((8 * 16 * (1 << 16)) / 7) / 32, 
y: -((8 * 16 * (1 << 16)) / 7) / 7 - ((8 * 16 * (1 << 16)) / 7) / 32
}

}
, Mline_t {
a: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7) / 6 + ((8 * 16 * (1 << 16)) / 7) / 32, 
y: -((8 * 16 * (1 << 16)) / 7) / 7 - ((8 * 16 * (1 << 16)) / 7) / 32
}
, 
b: Mpoint_t {
x: ((8 * 16 * (1 << 16)) / 7) / 6 + ((8 * 16 * (1 << 16)) / 7) / 10, 
y: -((8 * 16 * (1 << 16)) / 7) / 7
}

}
]!

)


const (
triangle_guy   = [Mline_t {
a: Mpoint_t {
x: int((-0.86699999999999999 * ((1 << 16)))), 
y: int((-0.5 * ((1 << 16))))
}
, 
b: Mpoint_t {
x: int((0.86699999999999999 * ((1 << 16)))), 
y: int((-0.5 * ((1 << 16))))
}

}
, Mline_t {
a: Mpoint_t {
x: int((0.86699999999999999 * ((1 << 16)))), 
y: int((-0.5 * ((1 << 16))))
}
, 
b: Mpoint_t {
x: int((0)), 
y: int((((1 << 16))))
}

}
, Mline_t {
a: Mpoint_t {
x: int((0)), 
y: int((((1 << 16))))
}
, 
b: Mpoint_t {
x: int((-0.86699999999999999 * ((1 << 16)))), 
y: int((-0.5 * ((1 << 16))))
}

}
]!

)


const (
thintriangle_guy   = [Mline_t {
a: Mpoint_t {
x: int((-0.5 * ((1 << 16)))), 
y: int((-0.69999999999999996 * ((1 << 16))))
}
, 
b: Mpoint_t {
x: int((((1 << 16)))), 
y: int((0))
}

}
, Mline_t {
a: Mpoint_t {
x: int((((1 << 16)))), 
y: int((0))
}
, 
b: Mpoint_t {
x: int((-0.5 * ((1 << 16)))), 
y: int((0.69999999999999996 * ((1 << 16))))
}

}
, Mline_t {
a: Mpoint_t {
x: int((-0.5 * ((1 << 16)))), 
y: int((0.69999999999999996 * ((1 << 16))))
}
, 
b: Mpoint_t {
x: int((-0.5 * ((1 << 16)))), 
y: int((-0.69999999999999996 * ((1 << 16))))
}

}
]!

)


@[weak] __global ( cheating  = int (0)
)


@[weak] __global ( grid  = int (0)
)


@[weak] __global ( leveljuststarted  = int (1)
)


@[weak] __global ( finit_width  = int (320)
)


@[weak] __global ( finit_height  = int (200 - 32)
)


@[weak] __global ( f_x int 

)


@[weak] __global ( f_y int 

)


@[weak] __global ( f_w int 

)


@[weak] __global ( f_h int 

)


@[weak] __global ( lightlev int 

)


@[weak] __global ( fb &Pixel_t 

)


@[weak] __global ( amclock int 

)


@[weak] __global ( m_paninc Mpoint_t 

)


@[weak] __global ( mtof_zoommul int 

)


@[weak] __global ( ftom_zoommul int 

)


@[weak] __global ( m_x int 

)


@[weak] __global ( m_y int 

)


@[weak] __global ( m_x2 int 

)


@[weak] __global ( m_y2 int 

)


@[weak] __global ( m_w int 

)


@[weak] __global ( m_h int 

)


@[weak] __global ( min_x int 

)


@[weak] __global ( min_y int 

)


@[weak] __global ( max_x int 

)


@[weak] __global ( max_y int 

)


@[weak] __global ( max_w int 

)


@[weak] __global ( max_h int 

)


@[weak] __global ( min_w int 

)


@[weak] __global ( min_h int 

)


@[weak] __global ( min_scale_mtof int 

)


@[weak] __global ( max_scale_mtof int 

)


@[weak] __global ( old_m_w int 

)


@[weak] __global ( old_m_h int 

)


@[weak] __global ( old_m_x int 

)


@[weak] __global ( old_m_y int 

)


@[weak] __global ( f_oldloc Mpoint_t 

)


@[weak] __global ( scale_mtof  = int (int((0.20000000000000001 * (1 << 16))))
)


@[weak] __global ( scale_ftom int 

)


@[weak] __global ( plr &Player_t 

)


@[weak] __global ( marknums [10]&Patch_t 

)


@[weak] __global ( markpoints [10]Mpoint_t 

)


@[weak] __global ( markpointnum  = int (0)
)


@[weak] __global ( followplayer  = int (1)
)


@[weak] __global ( stopped  = bool (true)
)


@[weak] __global ( viewangleoffset int 

)


@[weak] __global ( lowres_turn bool 

)


@[weak] __global ( netcmds &Ticcmd_t 

)


@[weak] __global ( doom_loop_interface  = Loop_interface_t {
processEvents: d_process_events, 
buildTiccmd: g_build_ticcmd, 
runTic: run_tic, 
runMenu: m_ticker
}

)


const (
doom1_endmsg   = [c'are you sure you want to\nquit this great game?', c"please don't leave, there's more\ndemons to toast!", c"let's beat it -- this is turning\ninto a bloodbath!", c"i wouldn't leave if i were you.\ndos is much worse.", c"you're trying to say you like dos\nbetter than me, right?", c"don't leave yet -- there's a\ndemon around that corner!", c"ya know, next time you come in here\ni'm gonna toast ya.", c'go ahead and leave. see if i care.']!

)


const (
doom2_endmsg   = [// QuitDOOM II messages
c'are you sure you want to\nquit this great game?', c'you want to quit?\nthen, thou hast lost an eighth!', c"don't go now, there's a \ndimensional shambler waiting\nat the dos prompt!", c'get outta here and go back\nto your boring programs.', c"if i were your boss, i'd \n deathmatch ya in a minute!", c'look, bud. you leave now\nand you forfeit your body count!', c"just leave. when you come\nback, i'll be waiting with a bat.", c"you're lucky i don't smack\nyou for thinking about leaving."]!

)


@[weak] __global ( thinkercap Thinker_t 

)


const (
deh_signatures   = [c'Patch File for DeHackEd v2.3', c'Patch File for DeHackEd v3.0', (voidptr(0))]!

)


@[weak] __global ( deh_section_ammo  = Deh_section_t {
//FAILED TO FIND STRUCT Deh_section_t
c'Ammo', (voidptr(0)), deh_ammo_start, deh_ammo_parse_line, (voidptr(0)), deh_ammo_sha_1_hash}

)


@[weak] __global ( deh_section_frame  = Deh_section_t {
//FAILED TO FIND STRUCT Deh_section_t
c'Frame', (voidptr(0)), deh_frame_start, deh_frame_parse_line, (voidptr(0)), deh_frame_sha_1_sum}

)


@[weak] __global ( deh_section_misc  = Deh_section_t {
//FAILED TO FIND STRUCT Deh_section_t
c'Misc', (voidptr(0)), deh_misc_start, deh_misc_parse_line, (voidptr(0)), deh_misc_sha_1_sum}

)


@[weak] __global ( deh_section_pointer  = Deh_section_t {
//FAILED TO FIND STRUCT Deh_section_t
c'Pointer', deh_pointer_init, deh_pointer_start, deh_pointer_parse_line, (voidptr(0)), deh_pointer_sha_1_sum}

)


@[weak] __global ( deh_section_sound  = Deh_section_t {
//FAILED TO FIND STRUCT Deh_section_t
c'Sound', (voidptr(0)), deh_sound_start, deh_sound_parse_line, (voidptr(0)), (voidptr(0))}

)


@[weak] __global ( deh_section_text Deh_section_t 

)


@[weak] __global ( deh_section_thing  = Deh_section_t {
//FAILED TO FIND STRUCT Deh_section_t
c'Thing', (voidptr(0)), deh_thing_start, deh_thing_parse_line, (voidptr(0)), deh_thing_sha_1_sum}

)


@[weak] __global ( deh_section_weapon  = Deh_section_t {
//FAILED TO FIND STRUCT Deh_section_t
c'Weapon', (voidptr(0)), deh_weapon_start, deh_weapon_parse_line, (voidptr(0)), deh_weapon_sha_1_sum}

)


@[weak] __global ( deh_section_bexstr  = Deh_section_t {
//FAILED TO FIND STRUCT Deh_section_t
c'[STRINGS]', (voidptr(0)), deh_bexs_tr_start, deh_bexs_tr_parse_line, (voidptr(0)), (voidptr(0))}

)


const (
deh_section_types   = [&deh_section_ammo, &deh_section_cheat, &deh_section_frame, &deh_section_misc, &deh_section_pointer, &deh_section_sound, &deh_section_text, &deh_section_thing, &deh_section_weapon, &deh_section_bexstr, (voidptr(0))]!

)


@[weak] __global ( deh_initial_health  = int (100)
)


@[weak] __global ( deh_initial_bullets  = int (50)
)


@[weak] __global ( deh_max_health  = int (200)
)


@[weak] __global ( deh_max_armor  = int (200)
)


@[weak] __global ( deh_green_armor_class  = int (1)
)


@[weak] __global ( deh_blue_armor_class  = int (2)
)


@[weak] __global ( deh_max_soulsphere  = int (200)
)


@[weak] __global ( deh_soulsphere_health  = int (100)
)


@[weak] __global ( deh_megasphere_health  = int (200)
)


@[weak] __global ( deh_god_mode_health  = int (100)
)


@[weak] __global ( deh_idfa_armor  = int (200)
)


@[weak] __global ( deh_idfa_armor_class  = int (2)
)


@[weak] __global ( deh_idkfa_armor  = int (200)
)


@[weak] __global ( deh_idkfa_armor_class  = int (2)
)


@[weak] __global ( deh_bfg_cells_per_shot  = int (40)
)


@[weak] __global ( deh_species_infighting  = int (0)
)


const (
misc_settings   = [MiscSetting {
deh_name: c'Initial Health', 
value: &deh_initial_health
}
, MiscSetting {
deh_name: c'Initial Bullets', 
value: &deh_initial_bullets
}
, MiscSetting {
deh_name: c'Max Health', 
value: &deh_max_health
}
, MiscSetting {
deh_name: c'Max Armor', 
value: &deh_max_armor
}
, MiscSetting {
deh_name: c'Green Armor Class', 
value: &deh_green_armor_class
}
, MiscSetting {
deh_name: c'Blue Armor Class', 
value: &deh_blue_armor_class
}
, MiscSetting {
deh_name: c'Max Soulsphere', 
value: &deh_max_soulsphere
}
, MiscSetting {
deh_name: c'Soulsphere Health', 
value: &deh_soulsphere_health
}
, MiscSetting {
deh_name: c'Megasphere Health', 
value: &deh_megasphere_health
}
, MiscSetting {
deh_name: c'God Mode Health', 
value: &deh_god_mode_health
}
, MiscSetting {
deh_name: c'IDFA Armor', 
value: &deh_idfa_armor
}
, MiscSetting {
deh_name: c'IDFA Armor Class', 
value: &deh_idfa_armor_class
}
, MiscSetting {
deh_name: c'IDKFA Armor', 
value: &deh_idkfa_armor
}
, MiscSetting {
deh_name: c'IDKFA Armor Class', 
value: &deh_idkfa_armor_class
}
, MiscSetting {
deh_name: c'BFG Cells/Shot', 
value: &deh_bfg_cells_per_shot
}
]!

)


@[weak] __global ( activeceilings [30]&Ceiling_t 

)


@[weak] __global ( flattranslation &int 

)


@[weak] __global ( texturetranslation &int 

)


@[weak] __global ( levelTimer bool 

)


@[weak] __global ( levelTimeCount int 

)


@[weak] __global ( activeplats [30]&Plat_t 

)


@[weak] __global ( animplanes [32]Animplane_t 

)


@[weak] __global ( lastanim &Animplane_t 

)


const (
animdefs   = [Animdef_t {
istexture: false, 
endname: c'NUKAGE3', 
startname: c'NUKAGE1', 
speed: 8
}
, Animdef_t {
istexture: false, 
endname: c'FWATER4', 
startname: c'FWATER1', 
speed: 8
}
, Animdef_t {
istexture: false, 
endname: c'SWATER4', 
startname: c'SWATER1', 
speed: 8
}
, Animdef_t {
istexture: false, 
endname: c'LAVA4', 
startname: c'LAVA1', 
speed: 8
}
, Animdef_t {
istexture: false, 
endname: c'BLOOD3', 
startname: c'BLOOD1', 
speed: 8
}
, // DOOM II flat animations.
Animdef_t {
istexture: false, 
endname: c'RROCK08', 
startname: c'RROCK05', 
speed: 8
}
, Animdef_t {
istexture: false, 
endname: c'SLIME04', 
startname: c'SLIME01', 
speed: 8
}
, Animdef_t {
istexture: false, 
endname: c'SLIME08', 
startname: c'SLIME05', 
speed: 8
}
, Animdef_t {
istexture: false, 
endname: c'SLIME12', 
startname: c'SLIME09', 
speed: 8
}
, Animdef_t {
istexture: true, 
endname: c'BLODGR4', 
startname: c'BLODGR1', 
speed: 8
}
, Animdef_t {
istexture: true, 
endname: c'SLADRIP3', 
startname: c'SLADRIP1', 
speed: 8
}
, Animdef_t {
istexture: true, 
endname: c'BLODRIP4', 
startname: c'BLODRIP1', 
speed: 8
}
, Animdef_t {
istexture: true, 
endname: c'FIREWALL', 
startname: c'FIREWALA', 
speed: 8
}
, Animdef_t {
istexture: true, 
endname: c'GSTFONT3', 
startname: c'GSTFONT1', 
speed: 8
}
, Animdef_t {
istexture: true, 
endname: c'FIRELAVA', 
startname: c'FIRELAV3', 
speed: 8
}
, Animdef_t {
istexture: true, 
endname: c'FIREMAG3', 
startname: c'FIREMAG1', 
speed: 8
}
, Animdef_t {
istexture: true, 
endname: c'FIREBLU2', 
startname: c'FIREBLU1', 
speed: 8
}
, Animdef_t {
istexture: true, 
endname: c'ROCKRED3', 
startname: c'ROCKRED1', 
speed: 8
}
, Animdef_t {
istexture: true, 
endname: c'BFALL4', 
startname: c'BFALL1', 
speed: 8
}
, Animdef_t {
istexture: true, 
endname: c'SFALL4', 
startname: c'SFALL1', 
speed: 8
}
, Animdef_t {
istexture: true, 
endname: c'WFALL4', 
startname: c'WFALL1', 
speed: 8
}
, Animdef_t {
istexture: true, 
endname: c'DBRAIN4', 
startname: c'DBRAIN1', 
speed: 8
}
, Animdef_t {
istexture: -1, 
endname: c'', 
startname: c'', 
speed: 0
}
]!

)


@[weak] __global ( numlinespecials i16 

)


@[weak] __global ( linespeciallist [64]&Line_t 

)


@[weak] __global ( numflats int 

)


@[weak] __global ( go_  = bool (0)
)


@[weak] __global ( wipe_scr_start &Pixel_t 

)


@[weak] __global ( wipe_scr_end &Pixel_t 

)


@[weak] __global ( wipe_scr &Pixel_t 

)


@[weak] __global ( y &int 

)


const (
bex_stringtable   = [// part 1 - general initialization and prompts
Bex_string_t {
macro: c'D_DEVSTR', 
string_: c'Development mode ON.\n'
}
, Bex_string_t {
macro: c'D_CDROM', 
string_: c'CD-ROM Version: default.cfg from c:\\doomdata\n'
}
, Bex_string_t {
macro: c'QUITMSG', 
string_: c'are you sure you want to\nquit this great game?'
}
, Bex_string_t {
macro: c'LOADNET', 
string_: c"you can't do load while in a net game!\n\npress a key."
}
, Bex_string_t {
macro: c'QLOADNET', 
string_: c"you can't quickload during a netgame!\n\npress a key."
}
, Bex_string_t {
macro: c'QSAVESPOT', 
string_: c"you haven't picked a quicksave slot yet!\n\npress a key."
}
, Bex_string_t {
macro: c'SAVEDEAD', 
string_: c"you can't save if you aren't playing!\n\npress a key."
}
, Bex_string_t {
macro: c'QSPROMPT', 
string_: c"quicksave over your game named\n\n'%s'?\n\npress y or n."
}
, Bex_string_t {
macro: c'QLPROMPT', 
string_: c"do you want to quickload the game named\n\n'%s'?\n\npress y or n."
}
, Bex_string_t {
macro: c'NEWGAME', 
string_: c"you can't start a new game\nwhile in a network game.\n\npress a key."
}
, Bex_string_t {
macro: c'NIGHTMARE', 
string_: c"are you sure? this skill level\nisn't even remotely fair.\n\npress y or n."
}
, Bex_string_t {
macro: c'SWSTRING', 
string_: c'this is the shareware version of doom.\n\nyou need to order the entire trilogy.\n\npress a key.'
}
, Bex_string_t {
macro: c'MSGOFF', 
string_: c'Messages OFF'
}
, Bex_string_t {
macro: c'MSGON', 
string_: c'Messages ON'
}
, Bex_string_t {
macro: c'NETEND', 
string_: c"you can't end a netgame!\n\npress a key."
}
, Bex_string_t {
macro: c'ENDGAME', 
string_: c'are you sure you want to end the game?\n\npress y or n.'
}
, Bex_string_t {
macro: c'DETAILHI', 
string_: c'High detail'
}
, Bex_string_t {
macro: c'DETAILLO', 
string_: c'Low detail'
}
, Bex_string_t {
macro: c'GAMMALVL0', 
string_: c'Gamma correction OFF'
}
, Bex_string_t {
macro: c'GAMMALVL1', 
string_: c'Gamma correction level 1'
}
, Bex_string_t {
macro: c'GAMMALVL2', 
string_: c'Gamma correction level 2'
}
, Bex_string_t {
macro: c'GAMMALVL3', 
string_: c'Gamma correction level 3'
}
, Bex_string_t {
macro: c'GAMMALVL4', 
string_: c'Gamma correction level 4'
}
, Bex_string_t {
macro: c'EMPTYSTRING', 
string_: c'empty slot'
}
, Bex_string_t {
macro: c'GGSAVED', 
string_: c'game saved.'
}
, Bex_string_t {
macro: c'SAVEGAMENAME', 
string_: c'doomsav'
}
, // part 2 - messages when the player gets things
Bex_string_t {
macro: c'GOTARMOR', 
string_: c'Picked up the armor.'
}
, Bex_string_t {
macro: c'GOTMEGA', 
string_: c'Picked up the MegaArmor!'
}
, Bex_string_t {
macro: c'GOTHTHBONUS', 
string_: c'Picked up a health bonus.'
}
, Bex_string_t {
macro: c'GOTARMBONUS', 
string_: c'Picked up an armor bonus.'
}
, Bex_string_t {
macro: c'GOTSTIM', 
string_: c'Picked up a stimpack.'
}
, Bex_string_t {
macro: c'GOTMEDINEED', 
string_: c'Picked up a medikit that you REALLY need!'
}
, Bex_string_t {
macro: c'GOTMEDIKIT', 
string_: c'Picked up a medikit.'
}
, Bex_string_t {
macro: c'GOTSUPER', 
string_: c'Supercharge!'
}
, Bex_string_t {
macro: c'GOTBLUECARD', 
string_: c'Picked up a blue keycard.'
}
, Bex_string_t {
macro: c'GOTYELWCARD', 
string_: c'Picked up a yellow keycard.'
}
, Bex_string_t {
macro: c'GOTREDCARD', 
string_: c'Picked up a red keycard.'
}
, Bex_string_t {
macro: c'GOTBLUESKUL', 
string_: c'Picked up a blue skull key.'
}
, Bex_string_t {
macro: c'GOTYELWSKUL', 
string_: c'Picked up a yellow skull key.'
}
, Bex_string_t {
macro: c'GOTREDSKULL', 
string_: c'Picked up a red skull key.'
}
, Bex_string_t {
macro: c'GOTINVUL', 
string_: c'Invulnerability!'
}
, Bex_string_t {
macro: c'GOTBERSERK', 
string_: c'Berserk!'
}
, Bex_string_t {
macro: c'GOTINVIS', 
string_: c'Partial Invisibility'
}
, Bex_string_t {
macro: c'GOTSUIT', 
string_: c'Radiation Shielding Suit'
}
, Bex_string_t {
macro: c'GOTMAP', 
string_: c'Computer Area Map'
}
, Bex_string_t {
macro: c'GOTVISOR', 
string_: c'Light Amplification Visor'
}
, Bex_string_t {
macro: c'GOTMSPHERE', 
string_: c'MegaSphere!'
}
, Bex_string_t {
macro: c'GOTCLIP', 
string_: c'Picked up a clip.'
}
, Bex_string_t {
macro: c'GOTCLIPBOX', 
string_: c'Picked up a box of bullets.'
}
, Bex_string_t {
macro: c'GOTROCKET', 
string_: c'Picked up a rocket.'
}
, Bex_string_t {
macro: c'GOTROCKBOX', 
string_: c'Picked up a box of rockets.'
}
, Bex_string_t {
macro: c'GOTCELL', 
string_: c'Picked up an energy cell.'
}
, Bex_string_t {
macro: c'GOTCELLBOX', 
string_: c'Picked up an energy cell pack.'
}
, Bex_string_t {
macro: c'GOTSHELLS', 
string_: c'Picked up 4 shotgun shells.'
}
, Bex_string_t {
macro: c'GOTSHELLBOX', 
string_: c'Picked up a box of shotgun shells.'
}
, Bex_string_t {
macro: c'GOTBACKPACK', 
string_: c'Picked up a backpack full of ammo!'
}
, Bex_string_t {
macro: c'GOTBFG9000', 
string_: c'You got the BFG9000!  Oh, yes.'
}
, Bex_string_t {
macro: c'GOTCHAINGUN', 
string_: c'You got the chaingun!'
}
, Bex_string_t {
macro: c'GOTCHAINSAW', 
string_: c'A chainsaw!  Find some meat!'
}
, Bex_string_t {
macro: c'GOTLAUNCHER', 
string_: c'You got the rocket launcher!'
}
, Bex_string_t {
macro: c'GOTPLASMA', 
string_: c'You got the plasma gun!'
}
, Bex_string_t {
macro: c'GOTSHOTGUN', 
string_: c'You got the shotgun!'
}
, Bex_string_t {
macro: c'GOTSHOTGUN2', 
string_: c'You got the super shotgun!'
}
, // part 3 - messages when keys are needed
Bex_string_t {
macro: c'PD_BLUEO', 
string_: c'You need a blue key to activate this object'
}
, Bex_string_t {
macro: c'PD_REDO', 
string_: c'You need a red key to activate this object'
}
, Bex_string_t {
macro: c'PD_YELLOWO', 
string_: c'You need a yellow key to activate this object'
}
, Bex_string_t {
macro: c'PD_BLUEK', 
string_: c'You need a blue key to open this door'
}
, Bex_string_t {
macro: c'PD_REDK', 
string_: c'You need a red key to open this door'
}
, Bex_string_t {
macro: c'PD_YELLOWK', 
string_: c'You need a yellow key to open this door'
}
, // part 4 - multiplayer messaging
Bex_string_t {
macro: c'HUSTR_MSGU', 
string_: c'[Message unsent]'
}
, Bex_string_t {
macro: c'HUSTR_MESSAGESENT', 
string_: c'[Message Sent]'
}
, Bex_string_t {
macro: c'HUSTR_CHATMACRO0', 
string_: c'No'
}
, Bex_string_t {
macro: c'HUSTR_CHATMACRO1', 
string_: c"I'm ready to kick butt!"
}
, Bex_string_t {
macro: c'HUSTR_CHATMACRO2', 
string_: c"I'm OK."
}
, Bex_string_t {
macro: c'HUSTR_CHATMACRO3', 
string_: c"I'm not looking too good!"
}
, Bex_string_t {
macro: c'HUSTR_CHATMACRO4', 
string_: c'Help!'
}
, Bex_string_t {
macro: c'HUSTR_CHATMACRO5', 
string_: c'You suck!'
}
, Bex_string_t {
macro: c'HUSTR_CHATMACRO6', 
string_: c'Next time, scumbag...'
}
, Bex_string_t {
macro: c'HUSTR_CHATMACRO7', 
string_: c'Come here!'
}
, Bex_string_t {
macro: c'HUSTR_CHATMACRO8', 
string_: c"I'll take care of it."
}
, Bex_string_t {
macro: c'HUSTR_CHATMACRO9', 
string_: c'Yes'
}
, Bex_string_t {
macro: c'HUSTR_TALKTOSELF1', 
string_: c'You mumble to yourself'
}
, Bex_string_t {
macro: c'HUSTR_TALKTOSELF2', 
string_: c"Who's there?"
}
, Bex_string_t {
macro: c'HUSTR_TALKTOSELF3', 
string_: c'You scare yourself'
}
, Bex_string_t {
macro: c'HUSTR_TALKTOSELF4', 
string_: c'You start to rave'
}
, Bex_string_t {
macro: c'HUSTR_TALKTOSELF5', 
string_: c"You've lost it..."
}
, Bex_string_t {
macro: c'HUSTR_PLRGREEN', 
string_: c'Green: '
}
, Bex_string_t {
macro: c'HUSTR_PLRINDIGO', 
string_: c'Indigo: '
}
, Bex_string_t {
macro: c'HUSTR_PLRBROWN', 
string_: c'Brown: '
}
, Bex_string_t {
macro: c'HUSTR_PLRRED', 
string_: c'Red: '
}
, // part 5 - level names in the automap
Bex_string_t {
macro: c'HUSTR_E1M1', 
string_: c'E1M1: Hangar'
}
, Bex_string_t {
macro: c'HUSTR_E1M2', 
string_: c'E1M2: Nuclear Plant'
}
, Bex_string_t {
macro: c'HUSTR_E1M3', 
string_: c'E1M3: Toxin Refinery'
}
, Bex_string_t {
macro: c'HUSTR_E1M4', 
string_: c'E1M4: Command Control'
}
, Bex_string_t {
macro: c'HUSTR_E1M5', 
string_: c'E1M5: Phobos Lab'
}
, Bex_string_t {
macro: c'HUSTR_E1M6', 
string_: c'E1M6: Central Processing'
}
, Bex_string_t {
macro: c'HUSTR_E1M7', 
string_: c'E1M7: Computer Station'
}
, Bex_string_t {
macro: c'HUSTR_E1M8', 
string_: c'E1M8: Phobos Anomaly'
}
, Bex_string_t {
macro: c'HUSTR_E1M9', 
string_: c'E1M9: Military Base'
}
, Bex_string_t {
macro: c'HUSTR_E2M1', 
string_: c'E2M1: Deimos Anomaly'
}
, Bex_string_t {
macro: c'HUSTR_E2M2', 
string_: c'E2M2: Containment Area'
}
, Bex_string_t {
macro: c'HUSTR_E2M3', 
string_: c'E2M3: Refinery'
}
, Bex_string_t {
macro: c'HUSTR_E2M4', 
string_: c'E2M4: Deimos Lab'
}
, Bex_string_t {
macro: c'HUSTR_E2M5', 
string_: c'E2M5: Command Center'
}
, Bex_string_t {
macro: c'HUSTR_E2M6', 
string_: c'E2M6: Halls of the Damned'
}
, Bex_string_t {
macro: c'HUSTR_E2M7', 
string_: c'E2M7: Spawning Vats'
}
, Bex_string_t {
macro: c'HUSTR_E2M8', 
string_: c'E2M8: Tower of Babel'
}
, Bex_string_t {
macro: c'HUSTR_E2M9', 
string_: c'E2M9: Fortress of Mystery'
}
, Bex_string_t {
macro: c'HUSTR_E3M1', 
string_: c'E3M1: Hell Keep'
}
, Bex_string_t {
macro: c'HUSTR_E3M2', 
string_: c'E3M2: Slough of Despair'
}
, Bex_string_t {
macro: c'HUSTR_E3M3', 
string_: c'E3M3: Pandemonium'
}
, Bex_string_t {
macro: c'HUSTR_E3M4', 
string_: c'E3M4: House of Pain'
}
, Bex_string_t {
macro: c'HUSTR_E3M5', 
string_: c'E3M5: Unholy Cathedral'
}
, Bex_string_t {
macro: c'HUSTR_E3M6', 
string_: c'E3M6: Mt. Erebus'
}
, Bex_string_t {
macro: c'HUSTR_E3M7', 
string_: c'E3M7: Limbo'
}
, Bex_string_t {
macro: c'HUSTR_E3M8', 
string_: c'E3M8: Dis'
}
, Bex_string_t {
macro: c'HUSTR_E3M9', 
string_: c'E3M9: Warrens'
}
, Bex_string_t {
macro: c'HUSTR_E4M1', 
string_: c'E4M1: Hell Beneath'
}
, Bex_string_t {
macro: c'HUSTR_E4M2', 
string_: c'E4M2: Perfect Hatred'
}
, Bex_string_t {
macro: c'HUSTR_E4M3', 
string_: c'E4M3: Sever The Wicked'
}
, Bex_string_t {
macro: c'HUSTR_E4M4', 
string_: c'E4M4: Unruly Evil'
}
, Bex_string_t {
macro: c'HUSTR_E4M5', 
string_: c'E4M5: They Will Repent'
}
, Bex_string_t {
macro: c'HUSTR_E4M6', 
string_: c'E4M6: Against Thee Wickedly'
}
, Bex_string_t {
macro: c'HUSTR_E4M7', 
string_: c'E4M7: And Hell Followed'
}
, Bex_string_t {
macro: c'HUSTR_E4M8', 
string_: c'E4M8: Unto The Cruel'
}
, Bex_string_t {
macro: c'HUSTR_E4M9', 
string_: c'E4M9: Fear'
}
, Bex_string_t {
macro: c'HUSTR_1', 
string_: c'level 1: entryway'
}
, Bex_string_t {
macro: c'HUSTR_2', 
string_: c'level 2: underhalls'
}
, Bex_string_t {
macro: c'HUSTR_3', 
string_: c'level 3: the gantlet'
}
, Bex_string_t {
macro: c'HUSTR_4', 
string_: c'level 4: the focus'
}
, Bex_string_t {
macro: c'HUSTR_5', 
string_: c'level 5: the waste tunnels'
}
, Bex_string_t {
macro: c'HUSTR_6', 
string_: c'level 6: the crusher'
}
, Bex_string_t {
macro: c'HUSTR_7', 
string_: c'level 7: dead simple'
}
, Bex_string_t {
macro: c'HUSTR_8', 
string_: c'level 8: tricks and traps'
}
, Bex_string_t {
macro: c'HUSTR_9', 
string_: c'level 9: the pit'
}
, Bex_string_t {
macro: c'HUSTR_10', 
string_: c'level 10: refueling base'
}
, Bex_string_t {
macro: c'HUSTR_11', 
string_: c"level 11: 'o' of destruction!"
}
, Bex_string_t {
macro: c'HUSTR_12', 
string_: c'level 12: the factory'
}
, Bex_string_t {
macro: c'HUSTR_13', 
string_: c'level 13: downtown'
}
, Bex_string_t {
macro: c'HUSTR_14', 
string_: c'level 14: the inmost dens'
}
, Bex_string_t {
macro: c'HUSTR_15', 
string_: c'level 15: industrial zone'
}
, Bex_string_t {
macro: c'HUSTR_16', 
string_: c'level 16: suburbs'
}
, Bex_string_t {
macro: c'HUSTR_17', 
string_: c'level 17: tenements'
}
, Bex_string_t {
macro: c'HUSTR_18', 
string_: c'level 18: the courtyard'
}
, Bex_string_t {
macro: c'HUSTR_19', 
string_: c'level 19: the citadel'
}
, Bex_string_t {
macro: c'HUSTR_20', 
string_: c'level 20: gotcha!'
}
, Bex_string_t {
macro: c'HUSTR_21', 
string_: c'level 21: nirvana'
}
, Bex_string_t {
macro: c'HUSTR_22', 
string_: c'level 22: the catacombs'
}
, Bex_string_t {
macro: c'HUSTR_23', 
string_: c"level 23: barrels o' fun"
}
, Bex_string_t {
macro: c'HUSTR_24', 
string_: c'level 24: the chasm'
}
, Bex_string_t {
macro: c'HUSTR_25', 
string_: c'level 25: bloodfalls'
}
, Bex_string_t {
macro: c'HUSTR_26', 
string_: c'level 26: the abandoned mines'
}
, Bex_string_t {
macro: c'HUSTR_27', 
string_: c'level 27: monster condo'
}
, Bex_string_t {
macro: c'HUSTR_28', 
string_: c'level 28: the spirit world'
}
, Bex_string_t {
macro: c'HUSTR_29', 
string_: c'level 29: the living end'
}
, Bex_string_t {
macro: c'HUSTR_30', 
string_: c'level 30: icon of sin'
}
, Bex_string_t {
macro: c'HUSTR_31', 
string_: c'level 31: wolfenstein'
}
, Bex_string_t {
macro: c'HUSTR_32', 
string_: c'level 32: grosse'
}
, Bex_string_t {
macro: c'PHUSTR_1', 
string_: c'level 1: congo'
}
, Bex_string_t {
macro: c'PHUSTR_2', 
string_: c'level 2: well of souls'
}
, Bex_string_t {
macro: c'PHUSTR_3', 
string_: c'level 3: aztec'
}
, Bex_string_t {
macro: c'PHUSTR_4', 
string_: c'level 4: caged'
}
, Bex_string_t {
macro: c'PHUSTR_5', 
string_: c'level 5: ghost town'
}
, Bex_string_t {
macro: c'PHUSTR_6', 
string_: c"level 6: baron's lair"
}
, Bex_string_t {
macro: c'PHUSTR_7', 
string_: c'level 7: caughtyard'
}
, Bex_string_t {
macro: c'PHUSTR_8', 
string_: c'level 8: realm'
}
, Bex_string_t {
macro: c'PHUSTR_9', 
string_: c'level 9: abattoire'
}
, Bex_string_t {
macro: c'PHUSTR_10', 
string_: c'level 10: onslaught'
}
, Bex_string_t {
macro: c'PHUSTR_11', 
string_: c'level 11: hunted'
}
, Bex_string_t {
macro: c'PHUSTR_12', 
string_: c'level 12: speed'
}
, Bex_string_t {
macro: c'PHUSTR_13', 
string_: c'level 13: the crypt'
}
, Bex_string_t {
macro: c'PHUSTR_14', 
string_: c'level 14: genesis'
}
, Bex_string_t {
macro: c'PHUSTR_15', 
string_: c'level 15: the twilight'
}
, Bex_string_t {
macro: c'PHUSTR_16', 
string_: c'level 16: the omen'
}
, Bex_string_t {
macro: c'PHUSTR_17', 
string_: c'level 17: compound'
}
, Bex_string_t {
macro: c'PHUSTR_18', 
string_: c'level 18: neurosphere'
}
, Bex_string_t {
macro: c'PHUSTR_19', 
string_: c'level 19: nme'
}
, Bex_string_t {
macro: c'PHUSTR_20', 
string_: c'level 20: the death domain'
}
, Bex_string_t {
macro: c'PHUSTR_21', 
string_: c'level 21: slayer'
}
, Bex_string_t {
macro: c'PHUSTR_22', 
string_: c'level 22: impossible mission'
}
, Bex_string_t {
macro: c'PHUSTR_23', 
string_: c'level 23: tombstone'
}
, Bex_string_t {
macro: c'PHUSTR_24', 
string_: c'level 24: the final frontier'
}
, Bex_string_t {
macro: c'PHUSTR_25', 
string_: c'level 25: the temple of darkness'
}
, Bex_string_t {
macro: c'PHUSTR_26', 
string_: c'level 26: bunker'
}
, Bex_string_t {
macro: c'PHUSTR_27', 
string_: c'level 27: anti-christ'
}
, Bex_string_t {
macro: c'PHUSTR_28', 
string_: c'level 28: the sewers'
}
, Bex_string_t {
macro: c'PHUSTR_29', 
string_: c'level 29: odyssey of noises'
}
, Bex_string_t {
macro: c'PHUSTR_30', 
string_: c'level 30: the gateway of hell'
}
, Bex_string_t {
macro: c'PHUSTR_31', 
string_: c'level 31: cyberden'
}
, Bex_string_t {
macro: c'PHUSTR_32', 
string_: c'level 32: go 2 it'
}
, Bex_string_t {
macro: c'THUSTR_1', 
string_: c'level 1: system control'
}
, Bex_string_t {
macro: c'THUSTR_2', 
string_: c'level 2: human bbq'
}
, Bex_string_t {
macro: c'THUSTR_3', 
string_: c'level 3: power control'
}
, Bex_string_t {
macro: c'THUSTR_4', 
string_: c'level 4: wormhole'
}
, Bex_string_t {
macro: c'THUSTR_5', 
string_: c'level 5: hanger'
}
, Bex_string_t {
macro: c'THUSTR_6', 
string_: c'level 6: open season'
}
, Bex_string_t {
macro: c'THUSTR_7', 
string_: c'level 7: prison'
}
, Bex_string_t {
macro: c'THUSTR_8', 
string_: c'level 8: metal'
}
, Bex_string_t {
macro: c'THUSTR_9', 
string_: c'level 9: stronghold'
}
, Bex_string_t {
macro: c'THUSTR_10', 
string_: c'level 10: redemption'
}
, Bex_string_t {
macro: c'THUSTR_11', 
string_: c'level 11: storage facility'
}
, Bex_string_t {
macro: c'THUSTR_12', 
string_: c'level 12: crater'
}
, Bex_string_t {
macro: c'THUSTR_13', 
string_: c'level 13: nukage processing'
}
, Bex_string_t {
macro: c'THUSTR_14', 
string_: c'level 14: steel works'
}
, Bex_string_t {
macro: c'THUSTR_15', 
string_: c'level 15: dead zone'
}
, Bex_string_t {
macro: c'THUSTR_16', 
string_: c'level 16: deepest reaches'
}
, Bex_string_t {
macro: c'THUSTR_17', 
string_: c'level 17: processing area'
}
, Bex_string_t {
macro: c'THUSTR_18', 
string_: c'level 18: mill'
}
, Bex_string_t {
macro: c'THUSTR_19', 
string_: c'level 19: shipping/respawning'
}
, Bex_string_t {
macro: c'THUSTR_20', 
string_: c'level 20: central processing'
}
, Bex_string_t {
macro: c'THUSTR_21', 
string_: c'level 21: administration center'
}
, Bex_string_t {
macro: c'THUSTR_22', 
string_: c'level 22: habitat'
}
, Bex_string_t {
macro: c'THUSTR_23', 
string_: c'level 23: lunar mining project'
}
, Bex_string_t {
macro: c'THUSTR_24', 
string_: c'level 24: quarry'
}
, Bex_string_t {
macro: c'THUSTR_25', 
string_: c"level 25: baron's den"
}
, Bex_string_t {
macro: c'THUSTR_26', 
string_: c'level 26: ballistyx'
}
, Bex_string_t {
macro: c'THUSTR_27', 
string_: c'level 27: mount pain'
}
, Bex_string_t {
macro: c'THUSTR_28', 
string_: c'level 28: heck'
}
, Bex_string_t {
macro: c'THUSTR_29', 
string_: c'level 29: river styx'
}
, Bex_string_t {
macro: c'THUSTR_30', 
string_: c'level 30: last call'
}
, Bex_string_t {
macro: c'THUSTR_31', 
string_: c'level 31: pharaoh'
}
, Bex_string_t {
macro: c'THUSTR_32', 
string_: c'level 32: caribbean'
}
, // part 6 - messages as a result of toggling states
Bex_string_t {
macro: c'AMSTR_FOLLOWON', 
string_: c'Follow Mode ON'
}
, Bex_string_t {
macro: c'AMSTR_FOLLOWOFF', 
string_: c'Follow Mode OFF'
}
, Bex_string_t {
macro: c'AMSTR_GRIDON', 
string_: c'Grid ON'
}
, Bex_string_t {
macro: c'AMSTR_GRIDOFF', 
string_: c'Grid OFF'
}
, Bex_string_t {
macro: c'AMSTR_MARKEDSPOT', 
string_: c'Marked Spot'
}
, Bex_string_t {
macro: c'AMSTR_MARKSCLEARED', 
string_: c'All Marks Cleared'
}
, Bex_string_t {
macro: c'STSTR_MUS', 
string_: c'Music Change'
}
, Bex_string_t {
macro: c'STSTR_NOMUS', 
string_: c'IMPOSSIBLE SELECTION'
}
, Bex_string_t {
macro: c'STSTR_DQDON', 
string_: c'Degreelessness Mode On'
}
, Bex_string_t {
macro: c'STSTR_DQDOFF', 
string_: c'Degreelessness Mode Off'
}
, Bex_string_t {
macro: c'STSTR_KFAADDED', 
string_: c'Very Happy Ammo Added'
}
, Bex_string_t {
macro: c'STSTR_FAADDED', 
string_: c'Ammo (no keys) Added'
}
, Bex_string_t {
macro: c'STSTR_NCON', 
string_: c'No Clipping Mode ON'
}
, Bex_string_t {
macro: c'STSTR_NCOFF', 
string_: c'No Clipping Mode OFF'
}
, Bex_string_t {
macro: c'STSTR_BEHOLD', 
string_: c'inVuln, Str, Inviso, Rad, Allmap, or Lite-amp'
}
, Bex_string_t {
macro: c'STSTR_BEHOLDX', 
string_: c'Power-up Toggled'
}
, Bex_string_t {
macro: c'STSTR_CHOPPERS', 
string_: c"... doesn't suck - GM"
}
, Bex_string_t {
macro: c'STSTR_CLEV', 
string_: c'Changing Level...'
}
, // part 7 - episode intermission texts
Bex_string_t {
macro: c'E1TEXT', 
string_: c"Once you beat the big badasses and\nclean out the moon base you're supposed\nto win, aren't you? Aren't you? Where's\nyour fat reward and ticket home? What\nthe hell is this? It's not supposed to\nend this way!\n\nIt stinks like rotten meat, but looks\nlike the lost Deimos base.  Looks like\nyou're stuck on The Shores of Hell.\nThe only way out is through.\n\nTo continue the DOOM experience, play\nThe Shores of Hell and its amazing\nsequel, Inferno!\n"
}
, Bex_string_t {
macro: c'E2TEXT', 
string_: c"You've done it! The hideous cyber-\ndemon lord that ruled the lost Deimos\nmoon base has been slain and you\nare triumphant! But ... where are\nyou? You clamber to the edge of the\nmoon and look down to see the awful\ntruth.\n\nDeimos floats above Hell itself!\nYou've never heard of anyone escaping\nfrom Hell, but you'll make the bastards\nsorry they ever heard of you! Quickly,\nyou rappel down to  the surface of\nHell.\n\nNow, it's on to the final chapter of\nDOOM! -- Inferno."
}
, Bex_string_t {
macro: c'E3TEXT', 
string_: c"The loathsome spiderdemon that\nmasterminded the invasion of the moon\nbases and caused so much death has had\nits ass kicked for all time.\n\nA hidden doorway opens and you enter.\nYou've proven too tough for Hell to\ncontain, and now Hell at last plays\nfair -- for you emerge from the door\nto see the green fields of Earth!\nHome at last.\n\nYou wonder what's been happening on\nEarth while you were battling evil\nunleashed. It's good that no Hell-\nspawn could have come through that\ndoor with you ..."
}
, Bex_string_t {
macro: c'E4TEXT', 
string_: c'the spider mastermind must have sent forth\nits legions of hellspawn before your\nfinal confrontation with that terrible\nbeast from hell.  but you stepped forward\nand brought forth eternal damnation and\nsuffering upon the horde as a true hero\nwould in the face of something so evil.\n\nbesides, someone was gonna pay for what\nhappened to daisy, your pet rabbit.\n\nbut now, you see spread before you more\npotential pain and gibbitude as a nation\nof demons run amok among our cities.\n\nnext stop, hell on earth!'
}
, Bex_string_t {
macro: c'C1TEXT', 
string_: c"YOU HAVE ENTERED DEEPLY INTO THE INFESTED\nSTARPORT. BUT SOMETHING IS WRONG. THE\nMONSTERS HAVE BROUGHT THEIR OWN REALITY\nWITH THEM, AND THE STARPORT'S TECHNOLOGY\nIS BEING SUBVERTED BY THEIR PRESENCE.\n\nAHEAD, YOU SEE AN OUTPOST OF HELL, A\nFORTIFIED ZONE. IF YOU CAN GET PAST IT,\nYOU CAN PENETRATE INTO THE HAUNTED HEART\nOF THE STARBASE AND FIND THE CONTROLLING\nSWITCH WHICH HOLDS EARTH'S POPULATION\nHOSTAGE."
}
, Bex_string_t {
macro: c'C2TEXT', 
string_: c'YOU HAVE WON! YOUR VICTORY HAS ENABLED\nHUMANKIND TO EVACUATE EARTH AND ESCAPE\nTHE NIGHTMARE.  NOW YOU ARE THE ONLY\nHUMAN LEFT ON THE FACE OF THE PLANET.\nCANNIBAL MUTATIONS, CARNIVOROUS ALIENS,\nAND EVIL SPIRITS ARE YOUR ONLY NEIGHBORS.\nYOU SIT BACK AND WAIT FOR DEATH, CONTENT\nTHAT YOU HAVE SAVED YOUR SPECIES.\n\nBUT THEN, EARTH CONTROL BEAMS DOWN A\nMESSAGE FROM SPACE: \"SENSORS HAVE LOCATED\nTHE SOURCE OF THE ALIEN INVASION. IF YOU\nGO THERE, YOU MAY BE ABLE TO BLOCK THEIR\nENTRY.  THE ALIEN BASE IS IN THE HEART OF\nYOUR OWN HOME CITY, NOT FAR FROM THE\nSTARPORT.\" SLOWLY AND PAINFULLY YOU GET\nUP AND RETURN TO THE FRAY.'
}
, Bex_string_t {
macro: c'C3TEXT', 
string_: c"YOU ARE AT THE CORRUPT HEART OF THE CITY,\nSURROUNDED BY THE CORPSES OF YOUR ENEMIES.\nYOU SEE NO WAY TO DESTROY THE CREATURES'\nENTRYWAY ON THIS SIDE, SO YOU CLENCH YOUR\nTEETH AND PLUNGE THROUGH IT.\n\nTHERE MUST BE A WAY TO CLOSE IT ON THE\nOTHER SIDE. WHAT DO YOU CARE IF YOU'VE\nGOT TO GO THROUGH HELL TO GET TO IT?"
}
, Bex_string_t {
macro: c'C4TEXT', 
string_: c"THE HORRENDOUS VISAGE OF THE BIGGEST\nDEMON YOU'VE EVER SEEN CRUMBLES BEFORE\nYOU, AFTER YOU PUMP YOUR ROCKETS INTO\nHIS EXPOSED BRAIN. THE MONSTER SHRIVELS\nUP AND DIES, ITS THRASHING LIMBS\nDEVASTATING UNTOLD MILES OF HELL'S\nSURFACE.\n\nYOU'VE DONE IT. THE INVASION IS OVER.\nEARTH IS SAVED. HELL IS A WRECK. YOU\nWONDER WHERE BAD FOLKS WILL GO WHEN THEY\nDIE, NOW. WIPING THE SWEAT FROM YOUR\nFOREHEAD YOU BEGIN THE LONG TREK BACK\nHOME. REBUILDING EARTH OUGHT TO BE A\nLOT MORE FUN THAN RUINING IT WAS.\n"
}
, Bex_string_t {
macro: c'C5TEXT', 
string_: c"CONGRATULATIONS, YOU'VE FOUND THE SECRET\nLEVEL! LOOKS LIKE IT'S BEEN BUILT BY\nHUMANS, RATHER THAN DEMONS. YOU WONDER\nWHO THE INMATES OF THIS CORNER OF HELL\nWILL BE."
}
, Bex_string_t {
macro: c'C6TEXT', 
string_: c"CONGRATULATIONS, YOU'VE FOUND THE\nSUPER SECRET LEVEL!  YOU'D BETTER\nBLAZE THROUGH THIS ONE!\n"
}
, Bex_string_t {
macro: c'P1TEXT', 
string_: c"You gloat over the steaming carcass of the\nGuardian.  With its death, you've wrested\nthe Accelerator from the stinking claws\nof Hell.  You relax and glance around the\nroom.  Damn!  There was supposed to be at\nleast one working prototype, but you can't\nsee it. The demons must have taken it.\n\nYou must find the prototype, or all your\nstruggles will have been wasted. Keep\nmoving, keep fighting, keep killing.\nOh yes, keep living, too."
}
, Bex_string_t {
macro: c'P2TEXT', 
string_: c"Even the deadly Arch-Vile labyrinth could\nnot stop you, and you've gotten to the\nprototype Accelerator which is soon\nefficiently and permanently deactivated.\n\nYou're good at that kind of thing."
}
, Bex_string_t {
macro: c'P3TEXT', 
string_: c"You've bashed and battered your way into\nthe heart of the devil-hive.  Time for a\nSearch-and-Destroy mission, aimed at the\nGatekeeper, whose foul offspring is\ncascading to Earth.  Yeah, he's bad. But\nyou know who's worse!\n\nGrinning evilly, you check your gear, and\nget ready to give the bastard a little Hell\nof your own making!"
}
, Bex_string_t {
macro: c'P4TEXT', 
string_: c"The Gatekeeper's evil face is splattered\nall over the place.  As its tattered corpse\ncollapses, an inverted Gate forms and\nsucks down the shards of the last\nprototype Accelerator, not to mention the\nfew remaining demons.  You're done. Hell\nhas gone back to pounding bad dead folks \ninstead of good live ones.  Remember to\ntell your grandkids to put a rocket\nlauncher in your coffin. If you go to Hell\nwhen you die, you'll need it for some\nfinal cleaning-up ..."
}
, Bex_string_t {
macro: c'P5TEXT', 
string_: c"You've found the second-hardest level we\ngot. Hope you have a saved game a level or\ntwo previous.  If not, be prepared to die\naplenty. For master marines only."
}
, Bex_string_t {
macro: c'P6TEXT', 
string_: c'Betcha wondered just what WAS the hardest\nlevel we had ready for ya?  Now you know.\nNo one gets out alive.'
}
, Bex_string_t {
macro: c'T1TEXT', 
string_: c"You've fought your way out of the infested\nexperimental labs.   It seems that UAC has\nonce again gulped it down.  With their\nhigh turnover, it must be hard for poor\nold UAC to buy corporate health insurance\nnowadays..\n\nAhead lies the military complex, now\nswarming with diseased horrors hot to get\ntheir teeth into you. With luck, the\ncomplex still has some warlike ordnance\nlaying around."
}
, Bex_string_t {
macro: c'T2TEXT', 
string_: c"You hear the grinding of heavy machinery\nahead.  You sure hope they're not stamping\nout new hellspawn, but you're ready to\nream out a whole herd if you have to.\nThey might be planning a blood feast, but\nyou feel about as mean as two thousand\nmaniacs packed into one mad killer.\n\nYou don't plan to go down easy."
}
, Bex_string_t {
macro: c'T3TEXT', 
string_: c"The vista opening ahead looks real damn\nfamiliar. Smells familiar, too -- like\nfried excrement. You didn't like this\nplace before, and you sure as hell ain't\nplanning to like it now. The more you\nbrood on it, the madder you get.\nHefting your gun, an evil grin trickles\nonto your face. Time to take some names."
}
, Bex_string_t {
macro: c'T4TEXT', 
string_: c"Suddenly, all is silent, from one horizon\nto the other. The agonizing echo of Hell\nfades away, the nightmare sky turns to\nblue, the heaps of monster corpses start \nto evaporate along with the evil stench \nthat filled the air. Jeeze, maybe you've\ndone it. Have you really won?\n\nSomething rumbles in the distance.\nA blue light begins to glow inside the\nruined skull of the demon-spitter."
}
, Bex_string_t {
macro: c'T5TEXT', 
string_: c"What now? Looks totally different. Kind\nof like King Tut's condo. Well,\nwhatever's here can't be any worse\nthan usual. Can it?  Or maybe it's best\nto let sleeping gods lie.."
}
, Bex_string_t {
macro: c'T6TEXT', 
string_: c"Time for a vacation. You've burst the\nbowels of hell and by golly you're ready\nfor a break. You mutter to yourself,\nMaybe someone else can kick Hell's ass\nnext time around. Ahead lies a quiet town,\nwith peaceful flowing water, quaint\nbuildings, and presumably no Hellspawn.\n\nAs you step off the transport, you hear\nthe stomp of a cyberdemon's iron shoe."
}
, // part 8 - creature names for the finale
Bex_string_t {
macro: c'CC_ZOMBIE', 
string_: c'ZOMBIEMAN'
}
, Bex_string_t {
macro: c'CC_SHOTGUN', 
string_: c'SHOTGUN GUY'
}
, Bex_string_t {
macro: c'CC_HEAVY', 
string_: c'HEAVY WEAPON DUDE'
}
, Bex_string_t {
macro: c'CC_IMP', 
string_: c'IMP'
}
, Bex_string_t {
macro: c'CC_DEMON', 
string_: c'DEMON'
}
, Bex_string_t {
macro: c'CC_LOST', 
string_: c'LOST SOUL'
}
, Bex_string_t {
macro: c'CC_CACO', 
string_: c'CACODEMON'
}
, Bex_string_t {
macro: c'CC_HELL', 
string_: c'HELL KNIGHT'
}
, Bex_string_t {
macro: c'CC_BARON', 
string_: c'BARON OF HELL'
}
, Bex_string_t {
macro: c'CC_ARACH', 
string_: c'ARACHNOTRON'
}
, Bex_string_t {
macro: c'CC_PAIN', 
string_: c'PAIN ELEMENTAL'
}
, Bex_string_t {
macro: c'CC_REVEN', 
string_: c'REVENANT'
}
, Bex_string_t {
macro: c'CC_MANCU', 
string_: c'MANCUBUS'
}
, Bex_string_t {
macro: c'CC_ARCH', 
string_: c'ARCH-VILE'
}
, Bex_string_t {
macro: c'CC_SPIDER', 
string_: c'THE SPIDER MASTERMIND'
}
, Bex_string_t {
macro: c'CC_CYBER', 
string_: c'THE CYBERDEMON'
}
, Bex_string_t {
macro: c'CC_HERO', 
string_: c'OUR HERO'
}
, // part 9 - intermission tiled backgrounds
Bex_string_t {
macro: c'BGFLATE1', 
string_: c'FLOOR4_8'
}
, Bex_string_t {
macro: c'BGFLATE2', 
string_: c'SFLR6_1'
}
, Bex_string_t {
macro: c'BGFLATE3', 
string_: c'MFLR8_4'
}
, Bex_string_t {
macro: c'BGFLATE4', 
string_: c'MFLR8_3'
}
, Bex_string_t {
macro: c'BGFLAT06', 
string_: c'SLIME16'
}
, Bex_string_t {
macro: c'BGFLAT11', 
string_: c'RROCK14'
}
, Bex_string_t {
macro: c'BGFLAT20', 
string_: c'RROCK07'
}
, Bex_string_t {
macro: c'BGFLAT30', 
string_: c'RROCK17'
}
, Bex_string_t {
macro: c'BGFLAT15', 
string_: c'RROCK13'
}
, Bex_string_t {
macro: c'BGFLAT31', 
string_: c'RROCK19'
}
, Bex_string_t {
macro: c'BGCASTCALL', 
string_: c'BOSSBACK'
}
]!

)


@[weak] __global ( deh_weapon__deh_mapping_base Weaponinfo_t 

)


@[weak] __global ( weapon_mapping  = Deh_mapping_t {
//FAILED TO FIND STRUCT Deh_mapping_t
&deh_weapon__deh_mapping_base, [Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Ammo type', &deh_weapon__deh_mapping_base.ammo, sizeof(deh_weapon__deh_mapping_base.ammo), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Deselect frame', &deh_weapon__deh_mapping_base.upstate, sizeof(deh_weapon__deh_mapping_base.upstate), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Select frame', &deh_weapon__deh_mapping_base.downstate, sizeof(deh_weapon__deh_mapping_base.downstate), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Bobbing frame', &deh_weapon__deh_mapping_base.readystate, sizeof(deh_weapon__deh_mapping_base.readystate), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Shooting frame', &deh_weapon__deh_mapping_base.atkstate, sizeof(deh_weapon__deh_mapping_base.atkstate), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Firing frame', &deh_weapon__deh_mapping_base.flashstate, sizeof(deh_weapon__deh_mapping_base.flashstate), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
(voidptr(0)), (voidptr(0)), -1, }
]!
}

)


const (
S_sfx   = [// S_sfx[0] needs to be a dummy for odd reasons.
Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'none', 0, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'pistol', 64, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'shotgn', 64, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'sgcock', 64, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'dshtgn', 64, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'dbopn', 64, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'dbcls', 64, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'dbload', 64, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'plasma', 64, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bfg', 64, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'sawup', 64, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'sawidl', 118, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'sawful', 64, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'sawhit', 64, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'rlaunc', 64, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'rxplod', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'firsht', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'firxpl', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'pstart', 100, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'pstop', 100, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'doropn', 100, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'dorcls', 100, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'stnmov', 119, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'swtchn', 78, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'swtchx', 78, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'plpain', 96, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'dmpain', 96, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'popain', 96, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'vipain', 96, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'mnpain', 96, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'pepain', 96, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'slop', 78, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'itemup', 78, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'wpnup', 78, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'oof', 96, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'telept', 32, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'posit1', 98, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'posit2', 98, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'posit3', 98, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bgsit1', 98, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bgsit2', 98, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'sgtsit', 98, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'cacsit', 98, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'brssit', 94, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'cybsit', 92, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'spisit', 90, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bspsit', 90, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'kntsit', 90, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'vilsit', 90, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'mansit', 90, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'pesit', 90, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'sklatk', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'sgtatk', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'skepch', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'vilatk', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'claw', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'skeswg', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'pldeth', 32, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'pdiehi', 32, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'podth1', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'podth2', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'podth3', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bgdth1', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bgdth2', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'sgtdth', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'cacdth', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'skldth', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'brsdth', 32, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'cybdth', 32, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'spidth', 32, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bspdth', 32, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'vildth', 32, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'kntdth', 32, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'pedth', 32, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'skedth', 32, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'posact', 120, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bgact', 120, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'dmact', 120, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bspact', 100, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bspwlk', 100, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'vilact', 100, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'noway', 78, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'barexp', 60, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'punch', 64, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'hoof', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'metal', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'chgun', 64, &S_sfx [int(Sfxenum_t.sfx_pistol)] , 150, 0, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'tink', 60, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bdopn', 100, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bdcls', 100, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'itmbk', 100, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'flame', 32, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'flamst', 32, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'getpow', 60, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bospit', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'boscub', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bossit', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bospn', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'bosdth', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'manatk', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'mandth', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'sssit', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'ssdth', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'keenpn', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'keendt', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'skeact', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'skesit', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'skeatk', 70, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
, Sfxinfo_t {
//FAILED TO FIND STRUCT Sfxinfo_t
(voidptr(0)), c'radio', 60, (voidptr(0)), -1, -1, 0, 0, -1, (voidptr(0))}
]!

)


@[weak] __global ( deh_sound__deh_mapping_base Sfxinfo_t 

)


@[weak] __global ( sound_mapping  = Deh_mapping_t {
//FAILED TO FIND STRUCT Deh_mapping_t
&deh_sound__deh_mapping_base, [Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Offset', (voidptr(0)), -1, false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Zero/One', (voidptr(0)), -1, false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Value', &deh_sound__deh_mapping_base.priority, sizeof(deh_sound__deh_mapping_base.priority), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Zero 1', &deh_sound__deh_mapping_base.link, sizeof(deh_sound__deh_mapping_base.link), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Zero 2', &deh_sound__deh_mapping_base.pitch, sizeof(deh_sound__deh_mapping_base.pitch), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Zero 3', &deh_sound__deh_mapping_base.volume, sizeof(deh_sound__deh_mapping_base.volume), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Zero 4', (voidptr(0)), -1, false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Neg. One 1', &deh_sound__deh_mapping_base.usefulness, sizeof(deh_sound__deh_mapping_base.usefulness), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Neg. One 2', &deh_sound__deh_mapping_base.lumpnum, sizeof(deh_sound__deh_mapping_base.lumpnum), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
(voidptr(0)), (voidptr(0)), -1, }
]!
}

)


@[weak] __global ( validcount  = int (1)
)


@[weak] __global ( opentop int 

)


@[weak] __global ( openbottom int 

)


@[weak] __global ( sightzstart int 

)


@[weak] __global ( topslope int 

)


@[weak] __global ( bottomslope int 

)


@[weak] __global ( strace Divline_t 

)


@[weak] __global ( t2x int 

)


@[weak] __global ( t2y int 

)


@[weak] __global ( sightcounts [2]int 

)


@[weak] __global ( viewwidth int 

)


@[weak] __global ( viewx int 

)


@[weak] __global ( viewy int 

)


@[weak] __global ( viewz int 

)


@[weak] __global ( viewangle Angle_t 

)


@[weak] __global ( clipangle Angle_t 

)


@[weak] __global ( viewangletox [4096]int 

)


@[weak] __global ( rw_angle1 int 

)


@[weak] __global ( sscount int 

)


@[weak] __global ( floorplane &Visplane_t 

)


@[weak] __global ( ceilingplane &Visplane_t 

)


@[weak] __global ( curline &Seg_t 

)


@[weak] __global ( sidedef &Side_t 

)


@[weak] __global ( frontsector &Sector_t 

)


@[weak] __global ( backsector &Sector_t 

)


@[weak] __global ( drawsegs [256]Drawseg_t 

)


@[weak] __global ( ds_p &Drawseg_t 

)


@[weak] __global ( newend &Cliprange_t 

)


@[weak] __global ( solidsegs [161]Cliprange_t 

)


const (
checkcoord   = [[3, 0, 2, 1]!
, [3, 0, 2, 0]!
, [3, 1, 2, 0]!
, [0, 0, 0, 0]!
, [2, 0, 2, 1]!
, [0, 0, 0, 0]!
, [3, 1, 3, 0]!
, [0, 0, 0, 0]!
, [2, 0, 3, 1]!
, [2, 1, 3, 1]!
, [2, 1, 3, 0]!
, [0, 0, 0, 0]!
]!

)


@[weak] __global ( vanilla_keyboard_mapping int 

)


@[weak] __global ( usegamma int 

)


@[weak] __global ( key_menu_activate int 

)


@[weak] __global ( key_menu_up int 

)


@[weak] __global ( key_menu_down int 

)


@[weak] __global ( key_menu_left int 

)


@[weak] __global ( key_menu_right int 

)


@[weak] __global ( key_menu_back int 

)


@[weak] __global ( key_menu_forward int 

)


@[weak] __global ( key_menu_confirm int 

)


@[weak] __global ( key_menu_abort int 

)


@[weak] __global ( key_menu_help int 

)


@[weak] __global ( key_menu_save int 

)


@[weak] __global ( key_menu_load int 

)


@[weak] __global ( key_menu_volume int 

)


@[weak] __global ( key_menu_detail int 

)


@[weak] __global ( key_menu_qsave int 

)


@[weak] __global ( key_menu_endgame int 

)


@[weak] __global ( key_menu_messages int 

)


@[weak] __global ( key_menu_qload int 

)


@[weak] __global ( key_menu_quit int 

)


@[weak] __global ( key_menu_gamma int 

)


@[weak] __global ( key_menu_incscreen int 

)


@[weak] __global ( key_menu_decscreen int 

)


@[weak] __global ( key_menu_screenshot int 

)


@[weak] __global ( joybfire int 

)


@[weak] __global ( joybuse int 

)


@[weak] __global ( joybmenu int 

)


@[weak] __global ( hu_font [63]&Patch_t 

)


@[weak] __global ( message_dontfuckwithme bool 

)


@[weak] __global ( chat_on bool 

)


@[weak] __global ( screenSize int 

)


@[weak] __global ( quickSaveSlot int 

)


@[weak] __global ( messageToPrint int 

)


@[weak] __global ( messageString &i8 

)


@[weak] __global ( messx int 

)


@[weak] __global ( messy int 

)


@[weak] __global ( messageLastMenuActive int 

)


@[weak] __global ( messageNeedsInput bool 

)


@[weak] __global ( messageRoutine fn (int) 

)


const (
gammamsg   = [c'Gamma correction OFF', c'Gamma correction level 1', c'Gamma correction level 2', c'Gamma correction level 3', c'Gamma correction level 4']!

)


@[weak] __global ( saveStringEnter int 

)


@[weak] __global ( saveSlot int 

)


@[weak] __global ( saveCharIndex int 

)


@[weak] __global ( joypadSave  = bool (false)
)


@[weak] __global ( saveOldString [24]i8 

)


@[weak] __global ( sendpause bool 

)


@[weak] __global ( savegamestrings [10][24]i8 

)


@[weak] __global ( endstring [160]i8 

)


@[weak] __global ( opldev bool 

)


@[weak] __global ( itemOn i16 

)


@[weak] __global ( skullAnimCounter i16 

)


@[weak] __global ( whichSkull i16 

)


const (
skullName   = [c'M_SKULL1', c'M_SKULL2']!

)


@[weak] __global ( currentMenu &Menu_t 

)


@[weak] __global ( main_e MenuEnum 

)


const (
MainMenu   = [Menuitem_t {
status: 1, 
name: c'M_NGAME', 
routine: m_new_game, 
alphaKey: `n`
}
, Menuitem_t {
status: 1, 
name: c'M_OPTION', 
routine: m_options, 
alphaKey: `o`
}
, Menuitem_t {
status: 1, 
name: c'M_LOADG', 
routine: m_load_game, 
alphaKey: `l`
}
, Menuitem_t {
status: 1, 
name: c'M_SAVEG', 
routine: m_save_game, 
alphaKey: `s`
}
, // Another hickup with Special edition.
Menuitem_t {
status: 1, 
name: c'M_RDTHIS', 
routine: m_read_this, 
alphaKey: `r`
}
, Menuitem_t {
status: 1, 
name: c'M_QUITG', 
routine: m_quit_doom, 
alphaKey: `q`
}
]!

)


@[weak] __global ( MainDef  = Menu_t {
numitems: MenuEnum.main_end, 
prevMenu: (voidptr(0)), 
menuitems: &MainMenu, 
routine: m_draw_main_menu, 
x: 97, 
y: 64, 
lastOn: 0
}

)


const (
EpisodeMenu   = [Menuitem_t {
status: 1, 
name: c'M_EPI1', 
routine: m_episode, 
alphaKey: `k`
}
, Menuitem_t {
status: 1, 
name: c'M_EPI2', 
routine: m_episode, 
alphaKey: `t`
}
, Menuitem_t {
status: 1, 
name: c'M_EPI3', 
routine: m_episode, 
alphaKey: `i`
}
, Menuitem_t {
status: 1, 
name: c'M_EPI4', 
routine: m_episode, 
alphaKey: `t`
}
]!

)


@[weak] __global ( EpiDef  = Menu_t {
numitems: ep_end, 
// # of menu items
prevMenu: &MainDef, 
// previous menu
menuitems: &EpisodeMenu, 
// menuitem_t ->
routine: m_draw_episode, 
// drawing routine ->
x: 48, 
y: 63, 
// x,y
lastOn: ep1, 
// lastOn
}

)


const (
NewGameMenu   = [Menuitem_t {
status: 1, 
name: c'M_JKILL', 
routine: m_choose_skill, 
alphaKey: `i`
}
, Menuitem_t {
status: 1, 
name: c'M_ROUGH', 
routine: m_choose_skill, 
alphaKey: `h`
}
, Menuitem_t {
status: 1, 
name: c'M_HURT', 
routine: m_choose_skill, 
alphaKey: `h`
}
, Menuitem_t {
status: 1, 
name: c'M_ULTRA', 
routine: m_choose_skill, 
alphaKey: `u`
}
, Menuitem_t {
status: 1, 
name: c'M_NMARE', 
routine: m_choose_skill, 
alphaKey: `n`
}
]!

)


@[weak] __global ( NewDef  = Menu_t {
numitems: newg_end, 
// # of menu items
prevMenu: &EpiDef, 
// previous menu
menuitems: &NewGameMenu, 
// menuitem_t ->
routine: m_draw_new_game, 
// drawing routine ->
x: 48, 
y: 63, 
// x,y
lastOn: hurtme, 
// lastOn
}

)


const (
OptionsMenu   = [Menuitem_t {
status: 1, 
name: c'M_ENDGAM', 
routine: m_end_game, 
alphaKey: `e`
}
, Menuitem_t {
status: 1, 
name: c'M_MESSG', 
routine: m_change_messages, 
alphaKey: `m`
}
, Menuitem_t {
status: 1, 
name: c'M_DETAIL', 
routine: m_change_detail, 
alphaKey: `g`
}
, Menuitem_t {
status: 2, 
name: c'M_SCRNSZ', 
routine: m_size_display, 
alphaKey: `s`
}
, Menuitem_t {
status: -1, 
name: c'', 
routine: voidptr(0), 
alphaKey: `\0`
}
, Menuitem_t {
status: 2, 
name: c'M_MSENS', 
routine: m_change_sensitivity, 
alphaKey: `m`
}
, Menuitem_t {
status: -1, 
name: c'', 
routine: voidptr(0), 
alphaKey: `\0`
}
, Menuitem_t {
status: 1, 
name: c'M_SVOL', 
routine: m_sound, 
alphaKey: `s`
}
]!

)


@[weak] __global ( OptionsDef  = Menu_t {
numitems: opt_end, 
prevMenu: &MainDef, 
menuitems: &OptionsMenu, 
routine: m_draw_options, 
x: 60, 
y: 37, 
lastOn: 0
}

)


const (
ReadMenu1   = [Menuitem_t {
status: 1, 
name: c'', 
routine: m_read_this2, 
alphaKey: 0
}
]!

)


@[weak] __global ( ReadDef1  = Menu_t {
numitems: read1_end, 
prevMenu: &MainDef, 
menuitems: &ReadMenu1, 
routine: m_draw_read_this1, 
x: 280, 
y: 185, 
lastOn: 0
}

)


const (
ReadMenu2   = [Menuitem_t {
status: 1, 
name: c'', 
routine: m_finish_read_this, 
alphaKey: 0
}
]!

)


@[weak] __global ( ReadDef2  = Menu_t {
numitems: read2_end, 
prevMenu: &ReadDef1, 
menuitems: &ReadMenu2, 
routine: m_draw_read_this2, 
x: 330, 
y: 175, 
lastOn: 0
}

)


const (
SoundMenu   = [Menuitem_t {
status: 2, 
name: c'M_SFXVOL', 
routine: m_sfx_vol, 
alphaKey: `s`
}
, Menuitem_t {
status: -1, 
name: c'', 
routine: voidptr(0), 
alphaKey: `\0`
}
, Menuitem_t {
status: 2, 
name: c'M_MUSVOL', 
routine: m_music_vol, 
alphaKey: `m`
}
, Menuitem_t {
status: -1, 
name: c'', 
routine: voidptr(0), 
alphaKey: `\0`
}
]!

)


@[weak] __global ( SoundDef  = Menu_t {
numitems: sound_end, 
prevMenu: &OptionsDef, 
menuitems: &SoundMenu, 
routine: m_draw_sound, 
x: 80, 
y: 64, 
lastOn: 0
}

)


const (
LoadMenu   = [Menuitem_t {
status: 1, 
name: c'', 
routine: m_load_select, 
alphaKey: `1`
}
, Menuitem_t {
status: 1, 
name: c'', 
routine: m_load_select, 
alphaKey: `2`
}
, Menuitem_t {
status: 1, 
name: c'', 
routine: m_load_select, 
alphaKey: `3`
}
, Menuitem_t {
status: 1, 
name: c'', 
routine: m_load_select, 
alphaKey: `4`
}
, Menuitem_t {
status: 1, 
name: c'', 
routine: m_load_select, 
alphaKey: `5`
}
, Menuitem_t {
status: 1, 
name: c'', 
routine: m_load_select, 
alphaKey: `6`
}
]!

)


@[weak] __global ( LoadDef  = Menu_t {
numitems: load_end, 
prevMenu: &MainDef, 
menuitems: &LoadMenu, 
routine: m_draw_load, 
x: 80, 
y: 54, 
lastOn: 0
}

)


const (
SaveMenu   = [Menuitem_t {
status: 1, 
name: c'', 
routine: m_save_select, 
alphaKey: `1`
}
, Menuitem_t {
status: 1, 
name: c'', 
routine: m_save_select, 
alphaKey: `2`
}
, Menuitem_t {
status: 1, 
name: c'', 
routine: m_save_select, 
alphaKey: `3`
}
, Menuitem_t {
status: 1, 
name: c'', 
routine: m_save_select, 
alphaKey: `4`
}
, Menuitem_t {
status: 1, 
name: c'', 
routine: m_save_select, 
alphaKey: `5`
}
, Menuitem_t {
status: 1, 
name: c'', 
routine: m_save_select, 
alphaKey: `6`
}
]!

)


@[weak] __global ( SaveDef  = Menu_t {
numitems: load_end, 
prevMenu: &MainDef, 
menuitems: &SaveMenu, 
routine: m_draw_save, 
x: 80, 
y: 54, 
lastOn: 0
}

)


@[weak] __global ( tempstring [90]i8 

)


@[weak] __global ( epi int 

)


const (
detailNames   = [c'M_GDHIGH', c'M_GDLOW']!

)


const (
msgNames   = [c'M_MSGOFF', c'M_MSGON']!

)


const (
quitsounds   = [Sfxenum_t.sfx_pldeth, Sfxenum_t.sfx_dmpain, Sfxenum_t.sfx_popain, Sfxenum_t.sfx_slop, Sfxenum_t.sfx_telept, Sfxenum_t.sfx_posit1, Sfxenum_t.sfx_posit3, Sfxenum_t.sfx_sgtatk]!

)


const (
quitsounds2   = [Sfxenum_t.sfx_vilact, Sfxenum_t.sfx_getpow, Sfxenum_t.sfx_boscub, Sfxenum_t.sfx_slop, Sfxenum_t.sfx_skeswg, Sfxenum_t.sfx_kntdth, Sfxenum_t.sfx_bspact, Sfxenum_t.sfx_sgtatk]!

)


@[c_extern] __global ( finetangent [4096]int 

)


@[weak] __global ( textureheight &int 

)


@[weak] __global ( xtoviewangle [321]Angle_t 

)


@[weak] __global ( rw_distance int 

)


@[weak] __global ( rw_normalangle Angle_t 

)


@[weak] __global ( centeryfrac int 

)


@[weak] __global ( scalelight [16][48]&Lighttable_t 

)


@[weak] __global ( extralight int 

)


@[weak] __global ( fixedcolormap &Lighttable_t 

)


@[weak] __global ( colfunc fn () 

)


@[weak] __global ( rw_x int 

)


@[weak] __global ( rw_stopx int 

)


@[weak] __global ( segtextured bool 

)


@[weak] __global ( markfloor bool 

)


@[weak] __global ( markceiling bool 

)


@[weak] __global ( lastopening &i16 

)


@[weak] __global ( floorclip [320]i16 

)


@[weak] __global ( ceilingclip [320]i16 

)


@[weak] __global ( negonearray [320]i16 

)


@[weak] __global ( screenheightarray [320]i16 

)


@[weak] __global ( mfloorclip &i16 

)


@[weak] __global ( mceilingclip &i16 

)


@[weak] __global ( spryscale int 

)


@[weak] __global ( sprtopscreen int 

)


@[weak] __global ( dc_colormap &Lighttable_t 

)


@[weak] __global ( dc_x int 

)


@[weak] __global ( dc_yl int 

)


@[weak] __global ( dc_yh int 

)


@[weak] __global ( dc_iscale int 

)


@[weak] __global ( dc_texturemid int 

)


@[weak] __global ( dc_source &u8 

)


@[weak] __global ( maskedtexture bool 

)


@[weak] __global ( toptexture int 

)


@[weak] __global ( bottomtexture int 

)


@[weak] __global ( midtexture int 

)


@[weak] __global ( rw_centerangle Angle_t 

)


@[weak] __global ( rw_offset int 

)


@[weak] __global ( rw_scale int 

)


@[weak] __global ( rw_scalestep int 

)


@[weak] __global ( rw_midtexturemid int 

)


@[weak] __global ( rw_toptexturemid int 

)


@[weak] __global ( rw_bottomtexturemid int 

)


@[weak] __global ( worldtop int 

)


@[weak] __global ( worldbottom int 

)


@[weak] __global ( worldhigh int 

)


@[weak] __global ( worldlow int 

)


@[weak] __global ( pixhigh int 

)


@[weak] __global ( pixlow int 

)


@[weak] __global ( pixhighstep int 

)


@[weak] __global ( pixlowstep int 

)


@[weak] __global ( topfrac int 

)


@[weak] __global ( topstep int 

)


@[weak] __global ( bottomfrac int 

)


@[weak] __global ( bottomstep int 

)


@[weak] __global ( walllights &&Lighttable_t 

)


@[weak] __global ( maskedtexturecol &i16 

)


@[weak] __global ( firstspritelump int 

)


@[weak] __global ( sprites &Spritedef_t 

)


@[weak] __global ( finalestage Finalestage_t 

)


@[weak] __global ( finalecount u32 

)


const (
textscreens   = [Textscreen_t {
mission: GameMission_t.doom, 
episode: 1, 
level: 8, 
background: c'FLOOR4_8', 
text: c"Once you beat the big badasses and\nclean out the moon base you're supposed\nto win, aren't you? Aren't you? Where's\nyour fat reward and ticket home? What\nthe hell is this? It's not supposed to\nend this way!\n\nIt stinks like rotten meat, but looks\nlike the lost Deimos base.  Looks like\nyou're stuck on The Shores of Hell.\nThe only way out is through.\n\nTo continue the DOOM experience, play\nThe Shores of Hell and its amazing\nsequel, Inferno!\n"
}
, Textscreen_t {
mission: GameMission_t.doom, 
episode: 2, 
level: 8, 
background: c'SFLR6_1', 
text: c"You've done it! The hideous cyber-\ndemon lord that ruled the lost Deimos\nmoon base has been slain and you\nare triumphant! But ... where are\nyou? You clamber to the edge of the\nmoon and look down to see the awful\ntruth.\n\nDeimos floats above Hell itself!\nYou've never heard of anyone escaping\nfrom Hell, but you'll make the bastards\nsorry they ever heard of you! Quickly,\nyou rappel down to  the surface of\nHell.\n\nNow, it's on to the final chapter of\nDOOM! -- Inferno."
}
, Textscreen_t {
mission: GameMission_t.doom, 
episode: 3, 
level: 8, 
background: c'MFLR8_4', 
text: c"The loathsome spiderdemon that\nmasterminded the invasion of the moon\nbases and caused so much death has had\nits ass kicked for all time.\n\nA hidden doorway opens and you enter.\nYou've proven too tough for Hell to\ncontain, and now Hell at last plays\nfair -- for you emerge from the door\nto see the green fields of Earth!\nHome at last.\n\nYou wonder what's been happening on\nEarth while you were battling evil\nunleashed. It's good that no Hell-\nspawn could have come through that\ndoor with you ..."
}
, Textscreen_t {
mission: GameMission_t.doom, 
episode: 4, 
level: 8, 
background: c'MFLR8_3', 
text: c'the spider mastermind must have sent forth\nits legions of hellspawn before your\nfinal confrontation with that terrible\nbeast from hell.  but you stepped forward\nand brought forth eternal damnation and\nsuffering upon the horde as a true hero\nwould in the face of something so evil.\n\nbesides, someone was gonna pay for what\nhappened to daisy, your pet rabbit.\n\nbut now, you see spread before you more\npotential pain and gibbitude as a nation\nof demons run amok among our cities.\n\nnext stop, hell on earth!'
}
, Textscreen_t {
mission: GameMission_t.doom2, 
episode: 1, 
level: 6, 
background: c'SLIME16', 
text: c"YOU HAVE ENTERED DEEPLY INTO THE INFESTED\nSTARPORT. BUT SOMETHING IS WRONG. THE\nMONSTERS HAVE BROUGHT THEIR OWN REALITY\nWITH THEM, AND THE STARPORT'S TECHNOLOGY\nIS BEING SUBVERTED BY THEIR PRESENCE.\n\nAHEAD, YOU SEE AN OUTPOST OF HELL, A\nFORTIFIED ZONE. IF YOU CAN GET PAST IT,\nYOU CAN PENETRATE INTO THE HAUNTED HEART\nOF THE STARBASE AND FIND THE CONTROLLING\nSWITCH WHICH HOLDS EARTH'S POPULATION\nHOSTAGE."
}
, Textscreen_t {
mission: GameMission_t.doom2, 
episode: 1, 
level: 11, 
background: c'RROCK14', 
text: c'YOU HAVE WON! YOUR VICTORY HAS ENABLED\nHUMANKIND TO EVACUATE EARTH AND ESCAPE\nTHE NIGHTMARE.  NOW YOU ARE THE ONLY\nHUMAN LEFT ON THE FACE OF THE PLANET.\nCANNIBAL MUTATIONS, CARNIVOROUS ALIENS,\nAND EVIL SPIRITS ARE YOUR ONLY NEIGHBORS.\nYOU SIT BACK AND WAIT FOR DEATH, CONTENT\nTHAT YOU HAVE SAVED YOUR SPECIES.\n\nBUT THEN, EARTH CONTROL BEAMS DOWN A\nMESSAGE FROM SPACE: \"SENSORS HAVE LOCATED\nTHE SOURCE OF THE ALIEN INVASION. IF YOU\nGO THERE, YOU MAY BE ABLE TO BLOCK THEIR\nENTRY.  THE ALIEN BASE IS IN THE HEART OF\nYOUR OWN HOME CITY, NOT FAR FROM THE\nSTARPORT.\" SLOWLY AND PAINFULLY YOU GET\nUP AND RETURN TO THE FRAY.'
}
, Textscreen_t {
mission: GameMission_t.doom2, 
episode: 1, 
level: 20, 
background: c'RROCK07', 
text: c"YOU ARE AT THE CORRUPT HEART OF THE CITY,\nSURROUNDED BY THE CORPSES OF YOUR ENEMIES.\nYOU SEE NO WAY TO DESTROY THE CREATURES'\nENTRYWAY ON THIS SIDE, SO YOU CLENCH YOUR\nTEETH AND PLUNGE THROUGH IT.\n\nTHERE MUST BE A WAY TO CLOSE IT ON THE\nOTHER SIDE. WHAT DO YOU CARE IF YOU'VE\nGOT TO GO THROUGH HELL TO GET TO IT?"
}
, Textscreen_t {
mission: GameMission_t.doom2, 
episode: 1, 
level: 30, 
background: c'RROCK17', 
text: c"THE HORRENDOUS VISAGE OF THE BIGGEST\nDEMON YOU'VE EVER SEEN CRUMBLES BEFORE\nYOU, AFTER YOU PUMP YOUR ROCKETS INTO\nHIS EXPOSED BRAIN. THE MONSTER SHRIVELS\nUP AND DIES, ITS THRASHING LIMBS\nDEVASTATING UNTOLD MILES OF HELL'S\nSURFACE.\n\nYOU'VE DONE IT. THE INVASION IS OVER.\nEARTH IS SAVED. HELL IS A WRECK. YOU\nWONDER WHERE BAD FOLKS WILL GO WHEN THEY\nDIE, NOW. WIPING THE SWEAT FROM YOUR\nFOREHEAD YOU BEGIN THE LONG TREK BACK\nHOME. REBUILDING EARTH OUGHT TO BE A\nLOT MORE FUN THAN RUINING IT WAS.\n"
}
, Textscreen_t {
mission: GameMission_t.doom2, 
episode: 1, 
level: 15, 
background: c'RROCK13', 
text: c"CONGRATULATIONS, YOU'VE FOUND THE SECRET\nLEVEL! LOOKS LIKE IT'S BEEN BUILT BY\nHUMANS, RATHER THAN DEMONS. YOU WONDER\nWHO THE INMATES OF THIS CORNER OF HELL\nWILL BE."
}
, Textscreen_t {
mission: GameMission_t.doom2, 
episode: 1, 
level: 31, 
background: c'RROCK19', 
text: c"CONGRATULATIONS, YOU'VE FOUND THE\nSUPER SECRET LEVEL!  YOU'D BETTER\nBLAZE THROUGH THIS ONE!\n"
}
, Textscreen_t {
mission: GameMission_t.pack_tnt, 
episode: 1, 
level: 6, 
background: c'SLIME16', 
text: c"You've fought your way out of the infested\nexperimental labs.   It seems that UAC has\nonce again gulped it down.  With their\nhigh turnover, it must be hard for poor\nold UAC to buy corporate health insurance\nnowadays..\n\nAhead lies the military complex, now\nswarming with diseased horrors hot to get\ntheir teeth into you. With luck, the\ncomplex still has some warlike ordnance\nlaying around."
}
, Textscreen_t {
mission: GameMission_t.pack_tnt, 
episode: 1, 
level: 11, 
background: c'RROCK14', 
text: c"You hear the grinding of heavy machinery\nahead.  You sure hope they're not stamping\nout new hellspawn, but you're ready to\nream out a whole herd if you have to.\nThey might be planning a blood feast, but\nyou feel about as mean as two thousand\nmaniacs packed into one mad killer.\n\nYou don't plan to go down easy."
}
, Textscreen_t {
mission: GameMission_t.pack_tnt, 
episode: 1, 
level: 20, 
background: c'RROCK07', 
text: c"The vista opening ahead looks real damn\nfamiliar. Smells familiar, too -- like\nfried excrement. You didn't like this\nplace before, and you sure as hell ain't\nplanning to like it now. The more you\nbrood on it, the madder you get.\nHefting your gun, an evil grin trickles\nonto your face. Time to take some names."
}
, Textscreen_t {
mission: GameMission_t.pack_tnt, 
episode: 1, 
level: 30, 
background: c'RROCK17', 
text: c"Suddenly, all is silent, from one horizon\nto the other. The agonizing echo of Hell\nfades away, the nightmare sky turns to\nblue, the heaps of monster corpses start \nto evaporate along with the evil stench \nthat filled the air. Jeeze, maybe you've\ndone it. Have you really won?\n\nSomething rumbles in the distance.\nA blue light begins to glow inside the\nruined skull of the demon-spitter."
}
, Textscreen_t {
mission: GameMission_t.pack_tnt, 
episode: 1, 
level: 15, 
background: c'RROCK13', 
text: c"What now? Looks totally different. Kind\nof like King Tut's condo. Well,\nwhatever's here can't be any worse\nthan usual. Can it?  Or maybe it's best\nto let sleeping gods lie.."
}
, Textscreen_t {
mission: GameMission_t.pack_tnt, 
episode: 1, 
level: 31, 
background: c'RROCK19', 
text: c"Time for a vacation. You've burst the\nbowels of hell and by golly you're ready\nfor a break. You mutter to yourself,\nMaybe someone else can kick Hell's ass\nnext time around. Ahead lies a quiet town,\nwith peaceful flowing water, quaint\nbuildings, and presumably no Hellspawn.\n\nAs you step off the transport, you hear\nthe stomp of a cyberdemon's iron shoe."
}
, Textscreen_t {
mission: GameMission_t.pack_plut, 
episode: 1, 
level: 6, 
background: c'SLIME16', 
text: c"You gloat over the steaming carcass of the\nGuardian.  With its death, you've wrested\nthe Accelerator from the stinking claws\nof Hell.  You relax and glance around the\nroom.  Damn!  There was supposed to be at\nleast one working prototype, but you can't\nsee it. The demons must have taken it.\n\nYou must find the prototype, or all your\nstruggles will have been wasted. Keep\nmoving, keep fighting, keep killing.\nOh yes, keep living, too."
}
, Textscreen_t {
mission: GameMission_t.pack_plut, 
episode: 1, 
level: 11, 
background: c'RROCK14', 
text: c"Even the deadly Arch-Vile labyrinth could\nnot stop you, and you've gotten to the\nprototype Accelerator which is soon\nefficiently and permanently deactivated.\n\nYou're good at that kind of thing."
}
, Textscreen_t {
mission: GameMission_t.pack_plut, 
episode: 1, 
level: 20, 
background: c'RROCK07', 
text: c"You've bashed and battered your way into\nthe heart of the devil-hive.  Time for a\nSearch-and-Destroy mission, aimed at the\nGatekeeper, whose foul offspring is\ncascading to Earth.  Yeah, he's bad. But\nyou know who's worse!\n\nGrinning evilly, you check your gear, and\nget ready to give the bastard a little Hell\nof your own making!"
}
, Textscreen_t {
mission: GameMission_t.pack_plut, 
episode: 1, 
level: 30, 
background: c'RROCK17', 
text: c"The Gatekeeper's evil face is splattered\nall over the place.  As its tattered corpse\ncollapses, an inverted Gate forms and\nsucks down the shards of the last\nprototype Accelerator, not to mention the\nfew remaining demons.  You're done. Hell\nhas gone back to pounding bad dead folks \ninstead of good live ones.  Remember to\ntell your grandkids to put a rocket\nlauncher in your coffin. If you go to Hell\nwhen you die, you'll need it for some\nfinal cleaning-up ..."
}
, Textscreen_t {
mission: GameMission_t.pack_plut, 
episode: 1, 
level: 15, 
background: c'RROCK13', 
text: c"You've found the second-hardest level we\ngot. Hope you have a saved game a level or\ntwo previous.  If not, be prepared to die\naplenty. For master marines only."
}
, Textscreen_t {
mission: GameMission_t.pack_plut, 
episode: 1, 
level: 31, 
background: c'RROCK19', 
text: c'Betcha wondered just what WAS the hardest\nlevel we had ready for ya?  Now you know.\nNo one gets out alive.'
}
]!

)


@[weak] __global ( finaletext &i8 

)


@[weak] __global ( finaleflat &i8 

)


const (
castorder   = [Castinfo_t {
name: c'ZOMBIEMAN', 
type_: Mobjtype_t.mt_possessed
}
, Castinfo_t {
name: c'SHOTGUN GUY', 
type_: Mobjtype_t.mt_shotguy
}
, Castinfo_t {
name: c'HEAVY WEAPON DUDE', 
type_: Mobjtype_t.mt_chainguy
}
, Castinfo_t {
name: c'IMP', 
type_: Mobjtype_t.mt_troop
}
, Castinfo_t {
name: c'DEMON', 
type_: Mobjtype_t.mt_sergeant
}
, Castinfo_t {
name: c'LOST SOUL', 
type_: Mobjtype_t.mt_skull
}
, Castinfo_t {
name: c'CACODEMON', 
type_: Mobjtype_t.mt_head
}
, Castinfo_t {
name: c'HELL KNIGHT', 
type_: Mobjtype_t.mt_knight
}
, Castinfo_t {
name: c'BARON OF HELL', 
type_: Mobjtype_t.mt_bruiser
}
, Castinfo_t {
name: c'ARACHNOTRON', 
type_: Mobjtype_t.mt_baby
}
, Castinfo_t {
name: c'PAIN ELEMENTAL', 
type_: Mobjtype_t.mt_pain
}
, Castinfo_t {
name: c'REVENANT', 
type_: Mobjtype_t.mt_undead
}
, Castinfo_t {
name: c'MANCUBUS', 
type_: Mobjtype_t.mt_fatso
}
, Castinfo_t {
name: c'ARCH-VILE', 
type_: Mobjtype_t.mt_vile
}
, Castinfo_t {
name: c'THE SPIDER MASTERMIND', 
type_: Mobjtype_t.mt_spider
}
, Castinfo_t {
name: c'THE CYBERDEMON', 
type_: Mobjtype_t.mt_cyborg
}
, Castinfo_t {
name: c'OUR HERO', 
type_: Mobjtype_t.mt_player
}
, Castinfo_t {
name: (voidptr(0)), 
type_: 0
}
]!

)


@[weak] __global ( castnum int 

)


@[weak] __global ( casttics int 

)


@[weak] __global ( caststate &State_t 

)


@[weak] __global ( castdeath bool 

)


@[weak] __global ( castframes int 

)


@[weak] __global ( castonmelee int 

)


@[weak] __global ( castattacking bool 

)


const (
maxammo   = [200, 50, 300, 50]!

)


const (
clipammo   = [10, 4, 20, 1]!

)


@[weak] __global ( onground bool 

)


@[weak] __global ( openrange int 

)


@[weak] __global ( lowfloor int 

)


@[weak] __global ( trace Divline_t 

)


@[weak] __global ( floatok bool 

)


@[weak] __global ( tmfloorz int 

)


@[weak] __global ( tmceilingz int 

)


@[weak] __global ( spechit [20]&Line_t 

)


@[weak] __global ( numspechit int 

)


@[weak] __global ( tmbbox [4]int 

)


@[weak] __global ( tmthing &Mobj_t 

)


@[weak] __global ( tmflags int 

)


@[weak] __global ( tmx int 

)


@[weak] __global ( tmy int 

)


@[weak] __global ( tmdropoffz int 

)


@[weak] __global ( bestslidefrac int 

)


@[weak] __global ( secondslidefrac int 

)


@[weak] __global ( bestslideline &Line_t 

)


@[weak] __global ( secondslideline &Line_t 

)


@[weak] __global ( slidemo &Mobj_t 

)


@[weak] __global ( tmxmove int 

)


@[weak] __global ( tmymove int 

)


@[weak] __global ( shootthing &Mobj_t 

)


@[weak] __global ( shootz int 

)


@[weak] __global ( la_damage int 

)


@[weak] __global ( aimslope int 

)


@[weak] __global ( usething &Mobj_t 

)


@[weak] __global ( bombsource &Mobj_t 

)


@[weak] __global ( bombspot &Mobj_t 

)


@[weak] __global ( bombdamage int 

)


@[weak] __global ( crushchange bool 

)


@[weak] __global ( nofit bool 

)


const (
S_music   = [Musicinfo_t {
name: (voidptr(0)), 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e1m1', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e1m2', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e1m3', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e1m4', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e1m5', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e1m6', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e1m7', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e1m8', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e1m9', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e2m1', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e2m2', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e2m3', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e2m4', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e2m5', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e2m6', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e2m7', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e2m8', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e2m9', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e3m1', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e3m2', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e3m3', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e3m4', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e3m5', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e3m6', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e3m7', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e3m8', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'e3m9', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'inter', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'intro', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'bunny', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'victor', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'introa', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'runnin', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'stalks', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'countd', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'betwee', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'doom', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'the_da', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'shawn', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'ddtblu', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'in_cit', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'dead', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'stlks2', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'theda2', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'doom2', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'ddtbl2', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'runni2', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'dead2', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'stlks3', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'romero', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'shawn2', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'messag', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'count2', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'ddtbl3', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'ampie', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'theda3', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'adrian', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'messg2', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'romer2', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'tense', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'shawn3', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'openin', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'evil', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'ultima', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'read_m', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'dm2ttl', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
, Musicinfo_t {
name: c'dm2int', 
lumpnum: 0, 
data: (voidptr(0)), 
handle: (voidptr(0))
}
]!

)


const (
doom1_par_times   = [30, 75, 120, 90, 165, 180, 180, 30, 165]!

)


const (
doom2_par_times   = [30, 90, 120, 120, 90, 150, 120, 120, 270]!

)


const (
player_colors   = [c'Green', c'Indigo', c'Brown', c'Red']!

)


@[weak] __global ( captured_stats [32]Wbstartstruct_t 

)


@[weak] __global ( num_captured_stats  = int (0)
)


@[weak] __global ( discovered_gamemission  = GameMission_t (GameMission_t.none_)
)


const (
rndtable   = [0, 8, 109, 220, 222, 241, 149, 107, 75, 248, 254, 140, 16, 66, 74, 21, 211, 47, 80, 242, 154, 27, 205, 128, 161, 89, 77, 36, 95, 110, 85, 48, 212, 140, 211, 249, 22, 79, 200, 50, 28, 188, 52, 140, 202, 120, 68, 145, 62, 70, 184, 190, 91, 197, 152, 224, 149, 104, 25, 178, 252, 182, 202, 182, 141, 197, 4, 81, 181, 242, 145, 42, 39, 227, 156, 198, 225, 193, 219, 93, 122, 175, 249, 0, 175, 143, 70, 239, 46, 246, 163, 53, 163, 109, 168, 135, 2, 235, 25, 92, 20, 145, 138, 77, 69, 166, 78, 176, 173, 212, 166, 113, 94, 161, 41, 50, 239, 49, 111, 164, 70, 60, 2, 37, 171, 75, 136, 156, 11, 56, 42, 146, 138, 229, 73, 146, 77, 61, 98, 196, 135, 106, 63, 197, 195, 86, 96, 203, 113, 101, 170, 247, 181, 113, 80, 250, 108, 7, 255, 237, 129, 226, 79, 107, 112, 166, 103, 241, 24, 223, 239, 120, 198, 58, 60, 82, 128, 3, 184, 66, 143, 224, 145, 224, 81, 206, 163, 45, 63, 90, 168, 114, 59, 33, 159, 95, 28, 139, 123, 98, 125, 196, 15, 70, 194, 253, 54, 14, 109, 226, 71, 17, 161, 93, 186, 87, 244, 138, 20, 52, 123, 251, 26, 36, 17, 46, 52, 231, 232, 76, 31, 221, 84, 37, 216, 165, 212, 106, 197, 242, 98, 43, 39, 175, 254, 145, 190, 84, 118, 222, 187, 136, 120, 163, 236, 249]!

)


@[weak] __global ( rndindex  = int (0)
)


@[weak] __global ( prndindex  = int (0)
)


@[weak] __global ( singletics bool 

)


@[weak] __global ( ticdup int 

)


@[weak] __global ( levelstarttic int 

)


@[weak] __global ( key_right int 

)


@[weak] __global ( key_left int 

)


@[weak] __global ( key_up int 

)


@[weak] __global ( key_down int 

)


@[weak] __global ( key_strafeleft int 

)


@[weak] __global ( key_straferight int 

)


@[weak] __global ( key_fire int 

)


@[weak] __global ( key_use int 

)


@[weak] __global ( key_strafe int 

)


@[weak] __global ( key_speed int 

)


@[weak] __global ( key_pause int 

)


@[weak] __global ( key_weapon1 int 

)


@[weak] __global ( key_weapon2 int 

)


@[weak] __global ( key_weapon3 int 

)


@[weak] __global ( key_weapon4 int 

)


@[weak] __global ( key_weapon5 int 

)


@[weak] __global ( key_weapon6 int 

)


@[weak] __global ( key_weapon7 int 

)


@[weak] __global ( key_weapon8 int 

)


@[weak] __global ( key_demo_quit int 

)


@[weak] __global ( key_spy int 

)


@[weak] __global ( key_prevweapon int 

)


@[weak] __global ( key_nextweapon int 

)


@[weak] __global ( mousebfire int 

)


@[weak] __global ( mousebstrafe int 

)


@[weak] __global ( mousebforward int 

)


@[weak] __global ( mousebstrafeleft int 

)


@[weak] __global ( mousebstraferight int 

)


@[weak] __global ( mousebbackward int 

)


@[weak] __global ( mousebuse int 

)


@[weak] __global ( mousebprevweapon int 

)


@[weak] __global ( mousebnextweapon int 

)


@[weak] __global ( joybstrafe int 

)


@[weak] __global ( joybspeed int 

)


@[weak] __global ( joybstrafeleft int 

)


@[weak] __global ( joybstraferight int 

)


@[weak] __global ( joybprevweapon int 

)


@[weak] __global ( joybnextweapon int 

)


@[weak] __global ( dclick_use int 

)


@[weak] __global ( save_stream &C.FILE 

)


@[weak] __global ( savegame_error bool 

)


@[weak] __global ( oldgamestate Gamestate_t 

)


@[weak] __global ( sendsave bool 

)


@[weak] __global ( timingdemo bool 

)


@[weak] __global ( starttime int 

)


@[weak] __global ( turbodetected [4]bool 

)


@[weak] __global ( demoname &i8 

)


@[weak] __global ( longtics bool 

)


@[weak] __global ( netdemo bool 

)


@[weak] __global ( demobuffer &u8 

)


@[weak] __global ( demo_p &u8 

)


@[weak] __global ( demoend &u8 

)


@[weak] __global ( consistancy [4][128]u8 

)


const (
angleturn   = [640, 1280, 320]!

)


const (
weapon_keys   = [&key_weapon1, &key_weapon2, &key_weapon3, &key_weapon4, &key_weapon5, &key_weapon6, &key_weapon7, &key_weapon8]!

)


@[weak] __global ( next_weapon  = int (0)
)


const (
weapon_order_table   = [Weapon {
weapon: Weapontype_t.wp_fist, 
weapon_num: Weapontype_t.wp_fist
}
, Weapon {
weapon: Weapontype_t.wp_chainsaw, 
weapon_num: Weapontype_t.wp_fist
}
, Weapon {
weapon: Weapontype_t.wp_pistol, 
weapon_num: Weapontype_t.wp_pistol
}
, Weapon {
weapon: Weapontype_t.wp_shotgun, 
weapon_num: Weapontype_t.wp_shotgun
}
, Weapon {
weapon: Weapontype_t.wp_supershotgun, 
weapon_num: Weapontype_t.wp_shotgun
}
, Weapon {
weapon: Weapontype_t.wp_chaingun, 
weapon_num: Weapontype_t.wp_chaingun
}
, Weapon {
weapon: Weapontype_t.wp_missile, 
weapon_num: Weapontype_t.wp_missile
}
, Weapon {
weapon: Weapontype_t.wp_plasma, 
weapon_num: Weapontype_t.wp_plasma
}
, Weapon {
weapon: Weapontype_t.wp_bfg, 
weapon_num: Weapontype_t.wp_bfg
}
]!

)


@[weak] __global ( gamekeydown [256]bool 

)


@[weak] __global ( turnheld int 

)


@[weak] __global ( mousearray [9]bool 

)


@[weak] __global ( mousebuttons  = &bool (&mousearray [1] )
)


@[weak] __global ( mousex int 

)


@[weak] __global ( mousey int 

)


@[weak] __global ( dclicktime int 

)


@[weak] __global ( dclickstate bool 

)


@[weak] __global ( dclicks int 

)


@[weak] __global ( dclicktime2 int 

)


@[weak] __global ( dclickstate2 bool 

)


@[weak] __global ( dclicks2 int 

)


@[weak] __global ( joyxmove int 

)


@[weak] __global ( joyymove int 

)


@[weak] __global ( joystrafemove int 

)


@[weak] __global ( joyarray [21]bool 

)


@[weak] __global ( joybuttons  = &bool (&joyarray [1] )
)


@[weak] __global ( savegameslot int 

)


@[weak] __global ( savedescription [32]i8 

)


@[weak] __global ( bodyque [32]&Mobj_t 

)


const (
player_names   = [c'Green: ', c'Indigo: ', c'Brown: ', c'Red: ']!

)


const (
pars   = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]!
, [0, 30, 75, 120, 90, 165, 180, 180, 30, 165]!
, [0, 90, 90, 90, 120, 90, 360, 240, 30, 170]!
, [0, 90, 45, 90, 150, 90, 90, 165, 30, 135]!
]!

)


const (
cpars   = [30, 90, 120, 120, 90, 150, 120, 120, 270, 90, //  1-10
210, 150, 150, 150, 210, 150, 420, 150, 210, 150, // 11-20
240, 150, 180, 150, 150, 300, 330, 420, 300, 180, // 21-30
120, 30, // 31-32
]!

)


@[weak] __global ( secretexit bool 

)


@[weak] __global ( savename [256]i8 

)


@[weak] __global ( d_skill Skill_t 

)


@[weak] __global ( d_episode int 

)


@[weak] __global ( d_map int 

)


@[weak] __global ( defdemoname &i8 

)


@[weak] __global ( spritewidth &int 

)


@[weak] __global ( spriteoffset &int 

)


@[weak] __global ( spritetopoffset &int 

)


@[weak] __global ( colormaps &Lighttable_t 

)


@[weak] __global ( firstflat int 

)


@[weak] __global ( lastspritelump int 

)


@[weak] __global ( numspritelumps int 

)


@[weak] __global ( numsprites int 

)


@[weak] __global ( lastflat int 

)


@[weak] __global ( firstpatch int 

)


@[weak] __global ( lastpatch int 

)


@[weak] __global ( numpatches int 

)


@[weak] __global ( numtextures int 

)


@[weak] __global ( textures &&Texture_t 

)


@[weak] __global ( textures_hashtable &&Texture_t 

)


@[weak] __global ( texturewidthmask &int 

)


@[weak] __global ( texturecompositesize &int 

)


@[weak] __global ( texturecolumnlump &&i16 

)


@[weak] __global ( texturecolumnofs &&u16 

)


@[weak] __global ( texturecomposite &&u8 

)


@[weak] __global ( flatmemory int 

)


@[weak] __global ( texturememory int 

)


@[weak] __global ( spritememory int 

)


@[weak] __global ( deh_thing__deh_mapping_base Mobjinfo_t 

)


@[weak] __global ( thing_mapping  = Deh_mapping_t {
//FAILED TO FIND STRUCT Deh_mapping_t
&deh_thing__deh_mapping_base, [Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'ID #', &deh_thing__deh_mapping_base.doomednum, sizeof(deh_thing__deh_mapping_base.doomednum), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Initial frame', &deh_thing__deh_mapping_base.spawnstate, sizeof(deh_thing__deh_mapping_base.spawnstate), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Hit points', &deh_thing__deh_mapping_base.spawnhealth, sizeof(deh_thing__deh_mapping_base.spawnhealth), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'First moving frame', &deh_thing__deh_mapping_base.seestate, sizeof(deh_thing__deh_mapping_base.seestate), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Alert sound', &deh_thing__deh_mapping_base.seesound, sizeof(deh_thing__deh_mapping_base.seesound), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Reaction time', &deh_thing__deh_mapping_base.reactiontime, sizeof(deh_thing__deh_mapping_base.reactiontime), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Attack sound', &deh_thing__deh_mapping_base.attacksound, sizeof(deh_thing__deh_mapping_base.attacksound), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Injury frame', &deh_thing__deh_mapping_base.painstate, sizeof(deh_thing__deh_mapping_base.painstate), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Pain chance', &deh_thing__deh_mapping_base.painchance, sizeof(deh_thing__deh_mapping_base.painchance), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Pain sound', &deh_thing__deh_mapping_base.painsound, sizeof(deh_thing__deh_mapping_base.painsound), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Close attack frame', &deh_thing__deh_mapping_base.meleestate, sizeof(deh_thing__deh_mapping_base.meleestate), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Far attack frame', &deh_thing__deh_mapping_base.missilestate, sizeof(deh_thing__deh_mapping_base.missilestate), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Death frame', &deh_thing__deh_mapping_base.deathstate, sizeof(deh_thing__deh_mapping_base.deathstate), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Exploding frame', &deh_thing__deh_mapping_base.xdeathstate, sizeof(deh_thing__deh_mapping_base.xdeathstate), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Death sound', &deh_thing__deh_mapping_base.deathsound, sizeof(deh_thing__deh_mapping_base.deathsound), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Speed', &deh_thing__deh_mapping_base.speed, sizeof(deh_thing__deh_mapping_base.speed), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Width', &deh_thing__deh_mapping_base.radius, sizeof(deh_thing__deh_mapping_base.radius), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Height', &deh_thing__deh_mapping_base.height, sizeof(deh_thing__deh_mapping_base.height), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Mass', &deh_thing__deh_mapping_base.mass, sizeof(deh_thing__deh_mapping_base.mass), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Missile damage', &deh_thing__deh_mapping_base.damage, sizeof(deh_thing__deh_mapping_base.damage), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Action sound', &deh_thing__deh_mapping_base.activesound, sizeof(deh_thing__deh_mapping_base.activesound), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Bits', &deh_thing__deh_mapping_base.flags, sizeof(deh_thing__deh_mapping_base.flags), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Respawn frame', &deh_thing__deh_mapping_base.raisestate, sizeof(deh_thing__deh_mapping_base.raisestate), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
(voidptr(0)), (voidptr(0)), -1, }
]!
}

)


@[weak] __global ( codeptrs [967]Actionf_t 

)


@[weak] __global ( centerxfrac int 

)


@[weak] __global ( zlight [16][128]&Lighttable_t 

)


@[weak] __global ( detailshift int 

)


@[weak] __global ( spanfunc fn () 

)


@[weak] __global ( floorfunc Planefunction_t 

)


@[weak] __global ( yslope [200]int 

)


@[weak] __global ( distscale [320]int 

)


@[weak] __global ( pspriteiscale int 

)


@[weak] __global ( ds_y int 

)


@[weak] __global ( ds_x1 int 

)


@[weak] __global ( ds_x2 int 

)


@[weak] __global ( ds_colormap &Lighttable_t 

)


@[weak] __global ( ds_xfrac int 

)


@[weak] __global ( ds_yfrac int 

)


@[weak] __global ( ds_xstep int 

)


@[weak] __global ( ds_ystep int 

)


@[weak] __global ( ds_source &u8 

)


@[weak] __global ( ceilingfunc Planefunction_t 

)


@[weak] __global ( visplanes [128]Visplane_t 

)


@[weak] __global ( lastvisplane &Visplane_t 

)


@[weak] __global ( openings [20480]i16 

)


@[weak] __global ( spanstart [200]int 

)


@[weak] __global ( spanstop [200]int 

)


@[weak] __global ( planezlight &&Lighttable_t 

)


@[weak] __global ( planeheight int 

)


@[weak] __global ( basexscale int 

)


@[weak] __global ( baseyscale int 

)


@[weak] __global ( cachedheight [200]int 

)


@[weak] __global ( cacheddistance [200]int 

)


@[weak] __global ( cachedxstep [200]int 

)


@[weak] __global ( cachedystep [200]int 

)


@[weak] __global ( viewplayer &Player_t 

)


@[weak] __global ( viewcos int 

)


@[weak] __global ( viewsin int 

)


@[weak] __global ( projection int 

)


@[weak] __global ( transcolfunc fn () 

)


@[weak] __global ( basecolfunc fn () 

)


@[weak] __global ( fuzzcolfunc fn () 

)


@[weak] __global ( vissprites [128]Vissprite_t 

)


@[weak] __global ( vissprite_p &Vissprite_t 

)


@[weak] __global ( vsprsortedhead Vissprite_t 

)


@[weak] __global ( pspritescale int 

)


@[weak] __global ( translationtables &u8 

)


@[weak] __global ( dc_translation &u8 

)


@[weak] __global ( spritelights &&Lighttable_t 

)


@[weak] __global ( sprtemp [29]Spriteframe_t 

)


@[weak] __global ( maxframe int 

)


@[weak] __global ( spritename &i8 

)


@[weak] __global ( newvissprite int 

)


@[weak] __global ( overflowsprite Vissprite_t 

)


@[weak] __global ( snd_musicdevice int 

)


@[weak] __global ( snd_pitchshift int 

)


@[weak] __global ( channels &Channel_t 

)


@[weak] __global ( snd_SfxVolume int 

)


@[weak] __global ( mus_paused bool 

)


@[weak] __global ( mus_playing  = &Musicinfo_t ((voidptr(0)))
)


const (
opposite   = [Dirtype_t.di_west, Dirtype_t.di_southwest, Dirtype_t.di_south, Dirtype_t.di_southeast, Dirtype_t.di_east, Dirtype_t.di_northeast, Dirtype_t.di_north, Dirtype_t.di_northwest, Dirtype_t.di_nodir]!

)


const (
diags   = [Dirtype_t.di_northwest, Dirtype_t.di_northeast, Dirtype_t.di_southwest, Dirtype_t.di_southeast]!

)


@[weak] __global ( soundtarget &Mobj_t 

)


const (
xspeed   = [(1 << 16), 47000, 0, -47000, -(1 << 16), -47000, 0, 47000]!

)


const (
yspeed   = [0, 47000, (1 << 16), 47000, 0, -47000, -(1 << 16), -47000]!

)


@[weak] __global ( TRACEANGLE  = int (201326592)
)


@[weak] __global ( corpsehit &Mobj_t 

)


@[weak] __global ( vileobj &Mobj_t 

)


@[weak] __global ( viletryx int 

)


@[weak] __global ( viletryy int 

)


@[weak] __global ( braintargets [32]&Mobj_t 

)


@[weak] __global ( numbraintargets int 

)


@[weak] __global ( braintargeton  = int (0)
)


@[weak] __global ( swingx int 

)


@[weak] __global ( swingy int 

)


@[weak] __global ( bulletslope int 

)


@[c_extern] __global ( tantoangle [2049]Angle_t 

)


@[weak] __global ( centerx int 

)


@[weak] __global ( centery int 

)


@[weak] __global ( linecount int 

)


@[weak] __global ( loopcount int 

)


@[weak] __global ( scalelightfixed [48]&Lighttable_t 

)


@[weak] __global ( framecount int 

)


@[weak] __global ( setblocks int 

)


@[weak] __global ( setdetail int 

)


@[weak] __global ( viewimage &u8 

)


@[weak] __global ( ylookup [832]&Pixel_t 

)


@[weak] __global ( columnofs [1120]int 

)


@[weak] __global ( translations [3][256]u8 

)


@[weak] __global ( background_buffer  = &Pixel_t ((voidptr(0)))
)


@[weak] __global ( dccount int 

)


const (
fuzzoffset   = [(320), -(320), (320), -(320), (320), (320), -(320), (320), (320), -(320), (320), (320), (320), -(320), (320), (320), (320), -(320), -(320), -(320), -(320), (320), -(320), -(320), (320), (320), (320), (320), -(320), (320), -(320), (320), (320), -(320), -(320), (320), (320), -(320), -(320), -(320), -(320), (320), (320), (320), (320), -(320), (320), (320), -(320), (320)]!

)


@[weak] __global ( fuzzpos  = int (0)
)


@[weak] __global ( dscount int 

)


@[weak] __global ( plyr &Player_t 

)


@[weak] __global ( st_firsttime bool 

)


@[weak] __global ( lu_palette int 

)


@[weak] __global ( st_clock u32 

)


@[weak] __global ( st_msgcounter  = int (0)
)


@[weak] __global ( st_chatstate St_chatstateenum_t 

)


@[weak] __global ( st_gamestate St_stateenum_t 

)


@[weak] __global ( st_statusbaron bool 

)


@[weak] __global ( st_chat bool 

)


@[weak] __global ( st_oldchat bool 

)


@[weak] __global ( st_cursoron bool 

)


@[weak] __global ( st_notdeathmatch bool 

)


@[weak] __global ( st_armson bool 

)


@[weak] __global ( st_fragson bool 

)


@[weak] __global ( sbar &Patch_t 

)


@[weak] __global ( sbarr &Patch_t 

)


@[weak] __global ( tallnum [10]&Patch_t 

)


@[weak] __global ( tallpercent &Patch_t 

)


@[weak] __global ( shortnum [10]&Patch_t 

)


@[weak] __global ( keys [6]&Patch_t 

)


@[weak] __global ( faces [42]&Patch_t 

)


@[weak] __global ( faceback &Patch_t 

)


@[weak] __global ( armsbg &Patch_t 

)


@[weak] __global ( arms [6][2]&Patch_t 

)


@[weak] __global ( w_ready St_number_t 

)


@[weak] __global ( w_frags St_number_t 

)


@[weak] __global ( w_health St_percent_t 

)


@[weak] __global ( w_armsbg St_binicon_t 

)


@[weak] __global ( w_arms [6]St_multicon_t 

)


@[weak] __global ( w_faces St_multicon_t 

)


@[weak] __global ( w_keyboxes [3]St_multicon_t 

)


@[weak] __global ( w_armor St_percent_t 

)


@[weak] __global ( w_ammo [4]St_number_t 

)


@[weak] __global ( w_maxammo [4]St_number_t 

)


@[weak] __global ( st_fragscount int 

)


@[weak] __global ( st_oldhealth  = int (-1)
)


@[weak] __global ( oldweaponsowned [9]bool 

)


@[weak] __global ( st_facecount  = int (0)
)


@[weak] __global ( st_faceindex  = int (0)
)


@[weak] __global ( keyboxes [3]int 

)


@[weak] __global ( st_randomnumber int 

)


@[weak] __global ( st_palette  = int (0)
)


@[weak] __global ( st_stopped  = bool (true)
)


@[weak] __global ( deh_frame__deh_mapping_base State_t 

)


@[weak] __global ( state_mapping  = Deh_mapping_t {
//FAILED TO FIND STRUCT Deh_mapping_t
&deh_frame__deh_mapping_base, [Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Sprite number', &deh_frame__deh_mapping_base.sprite, sizeof(deh_frame__deh_mapping_base.sprite), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Sprite subnumber', &deh_frame__deh_mapping_base.frame, sizeof(deh_frame__deh_mapping_base.frame), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Duration', &deh_frame__deh_mapping_base.tics, sizeof(deh_frame__deh_mapping_base.tics), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Next frame', &deh_frame__deh_mapping_base.nextstate, sizeof(deh_frame__deh_mapping_base.nextstate), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Unknown 1', &deh_frame__deh_mapping_base.misc1, sizeof(deh_frame__deh_mapping_base.misc1), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Unknown 2', &deh_frame__deh_mapping_base.misc2, sizeof(deh_frame__deh_mapping_base.misc2), false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
c'Codep frame', (voidptr(0)), -1, false}
, Deh_mapping_entry_t {
//FAILED TO FIND STRUCT Deh_mapping_entry_t
(voidptr(0)), (voidptr(0)), -1, }
]!
}

)


@[weak] __global ( intercepts [189]Intercept_t 

)


@[weak] __global ( intercept_p &Intercept_t 

)


@[weak] __global ( earlyout bool 

)


@[weak] __global ( ptflags int 

)


const (
intercepts_overrun   = [Intercepts_overrun_t {
len: 4, 
addr: (voidptr(0)), 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: (voidptr(0)), 
// &earlyout, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: (voidptr(0)), 
// &intercept_p, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: &lowfloor, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: &openbottom, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: &opentop, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: &openrange, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: (voidptr(0)), 
int16_array: false
}
, Intercepts_overrun_t {
len: 120, 
addr: (voidptr(0)), 
// &activeplats, 
int16_array: false
}
, Intercepts_overrun_t {
len: 8, 
addr: (voidptr(0)), 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: &bulletslope, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: (voidptr(0)), 
// &swingx, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: (voidptr(0)), 
// &swingy, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: (voidptr(0)), 
int16_array: false
}
, Intercepts_overrun_t {
len: 40, 
addr: &playerstarts, 
int16_array: true
}
, Intercepts_overrun_t {
len: 4, 
addr: (voidptr(0)), 
// &blocklinks, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: &bmapwidth, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: (voidptr(0)), 
// &blockmap, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: &bmaporgx, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: &bmaporgy, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: (voidptr(0)), 
// &blockmaplump, 
int16_array: false
}
, Intercepts_overrun_t {
len: 4, 
addr: &bmapheight, 
int16_array: false
}
, Intercepts_overrun_t {
len: 0, 
addr: (voidptr(0)), 
int16_array: false
}
]!

)


@[weak] __global ( savegamelength int 

)


@[weak] __global ( specials_e Specials 

)


@[weak] __global ( key_message_refresh int 

)


@[weak] __global ( key_multi_msg int 

)


@[weak] __global ( chat_char i8 

)


@[weak] __global ( w_title Hu_textline_t 

)


@[weak] __global ( w_chat Hu_itext_t 

)


@[weak] __global ( always_off  = bool (false)
)


@[weak] __global ( chat_dest [4]i8 

)


@[weak] __global ( w_inputbuffer [4]Hu_itext_t 

)


@[weak] __global ( message_on bool 

)


@[weak] __global ( message_nottobefuckedwith bool 

)


@[weak] __global ( w_message Hu_stext_t 

)


@[weak] __global ( message_counter int 

)


@[weak] __global ( headsupactive  = bool (false)
)


const (
mapnames   = // DOOM shareware/registered/retail (Ultimate) names.
[c'E1M1: Hangar', c'E1M2: Nuclear Plant', c'E1M3: Toxin Refinery', c'E1M4: Command Control', c'E1M5: Phobos Lab', c'E1M6: Central Processing', c'E1M7: Computer Station', c'E1M8: Phobos Anomaly', c'E1M9: Military Base', c'E2M1: Deimos Anomaly', c'E2M2: Containment Area', c'E2M3: Refinery', c'E2M4: Deimos Lab', c'E2M5: Command Center', c'E2M6: Halls of the Damned', c'E2M7: Spawning Vats', c'E2M8: Tower of Babel', c'E2M9: Fortress of Mystery', c'E3M1: Hell Keep', c'E3M2: Slough of Despair', c'E3M3: Pandemonium', c'E3M4: House of Pain', c'E3M5: Unholy Cathedral', c'E3M6: Mt. Erebus', c'E3M7: Limbo', c'E3M8: Dis', c'E3M9: Warrens', c'E4M1: Hell Beneath', c'E4M2: Perfect Hatred', c'E4M3: Sever The Wicked', c'E4M4: Unruly Evil', c'E4M5: They Will Repent', c'E4M6: Against Thee Wickedly', c'E4M7: And Hell Followed', c'E4M8: Unto The Cruel', c'E4M9: Fear', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL']!

)


const (
mapnames_chex   = // Chex Quest names.
[c'E1M1: Hangar', c'E1M2: Nuclear Plant', c'E1M3: Toxin Refinery', c'E1M4: Command Control', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'E1M5: Phobos Lab', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL', c'NEWLEVEL']!

)


const (
mapnames_commercial   = [// DOOM 2 map names.
c'level 1: entryway', c'level 2: underhalls', c'level 3: the gantlet', c'level 4: the focus', c'level 5: the waste tunnels', c'level 6: the crusher', c'level 7: dead simple', c'level 8: tricks and traps', c'level 9: the pit', c'level 10: refueling base', c"level 11: 'o' of destruction!", c'level 12: the factory', c'level 13: downtown', c'level 14: the inmost dens', c'level 15: industrial zone', c'level 16: suburbs', c'level 17: tenements', c'level 18: the courtyard', c'level 19: the citadel', c'level 20: gotcha!', c'level 21: nirvana', c'level 22: the catacombs', c"level 23: barrels o' fun", c'level 24: the chasm', c'level 25: bloodfalls', c'level 26: the abandoned mines', c'level 27: monster condo', c'level 28: the spirit world', c'level 29: the living end', c'level 30: icon of sin', c'level 31: wolfenstein', c'level 32: grosse', // Plutonia WAD map names.
c'level 1: congo', c'level 2: well of souls', c'level 3: aztec', c'level 4: caged', c'level 5: ghost town', c"level 6: baron's lair", c'level 7: caughtyard', c'level 8: realm', c'level 9: abattoire', c'level 10: onslaught', c'level 11: hunted', c'level 12: speed', c'level 13: the crypt', c'level 14: genesis', c'level 15: the twilight', c'level 16: the omen', c'level 17: compound', c'level 18: neurosphere', c'level 19: nme', c'level 20: the death domain', c'level 21: slayer', c'level 22: impossible mission', c'level 23: tombstone', c'level 24: the final frontier', c'level 25: the temple of darkness', c'level 26: bunker', c'level 27: anti-christ', c'level 28: the sewers', c'level 29: odyssey of noises', c'level 30: the gateway of hell', c'level 31: cyberden', c'level 32: go 2 it', // TNT WAD map names.
c'level 1: system control', c'level 2: human bbq', c'level 3: power control', c'level 4: wormhole', c'level 5: hanger', c'level 6: open season', c'level 7: prison', c'level 8: metal', c'level 9: stronghold', c'level 10: redemption', c'level 11: storage facility', c'level 12: crater', c'level 13: nukage processing', c'level 14: steel works', c'level 15: dead zone', c'level 16: deepest reaches', c'level 17: processing area', c'level 18: mill', c'level 19: shipping/respawning', c'level 20: central processing', c'level 21: administration center', c'level 22: habitat', c'level 23: lunar mining project', c'level 24: quarry', c"level 25: baron's den", c'level 26: ballistyx', c'level 27: mount pain', c'level 28: heck', c'level 29: river styx', c'level 30: last call', c'level 31: pharaoh', c'level 32: caribbean', // Emulation: TNT maps 33-35 can be warped to and played if they exist
// so include blank names instead of spilling over
c'', c'', c'']!

)


@[weak] __global ( chatchars [128]i8 

)


@[weak] __global ( head  = int (0)
)


@[weak] __global ( tail  = int (0)
)


