[translated]
module main

[typedef]
struct C.FILE {}

// vstart

fn rand() int

fn system(&i8) int

fn random() int

type Sfxinfo_t = Sfxinfo_struct

struct Sfxinfo_struct {
	tagname     &i8
	name        [9]i8
	priority    int
	link        &Sfxinfo_t
	pitch       int
	volume      int
	usefulness  int
	lumpnum     int
	numchannels int
	driver_data voidptr
}

struct Musicinfo_t {
	name    &i8
	lumpnum int
	data    voidptr
	handle  voidptr
}

enum Snddevice_t {
	snddevice_none = 0
	snddevice_pcspeaker = 1
	snddevice_adlib = 2
	snddevice_sb = 3
	snddevice_pas = 4
	snddevice_gus = 5
	snddevice_waveblaster = 6
	snddevice_soundcanvas = 7
	snddevice_genmidi = 8
	snddevice_awe32 = 9
	snddevice_cd = 10
}

struct Sound_module_t {
	sound_devices     &Snddevice_t
	num_sound_devices int
	Init              fn (bool) bool
	Shutdown          fn ()
	GetSfxLumpNum     fn (&Sfxinfo_t) int
	Update            fn ()
	UpdateSoundParams fn (int, int, int)
	StartSound        fn (&Sfxinfo_t, int, int, int, int) int
	StopSound         fn (int)
	SoundIsPlaying    fn (int) bool
	CacheSounds       fn (&Sfxinfo_t, int)
}

[c: 'I_ShutdownSound']
fn i_shutdownsound()

[c: 'I_GetSfxLumpNum']
fn i_getsfxlumpnum(sfxinfo &Sfxinfo_t) int

[c: 'I_UpdateSound']
fn i_updatesound()

[c: 'I_UpdateSoundParams']
fn i_updatesoundparams(channel int, vol int, sep int)

[c: 'I_StartSound']
fn i_startsound(sfxinfo &Sfxinfo_t, channel int, vol int, sep int, pitch int) int

[c: 'I_StopSound']
fn i_stopsound(channel int)

[c: 'I_SoundIsPlaying']
fn i_soundisplaying(channel int) bool

[c: 'I_PrecacheSounds']
fn i_precachesounds(sounds &Sfxinfo_t, num_sounds int)

struct Music_module_t {
	sound_devices     &Snddevice_t
	num_sound_devices int
	Init              fn () bool
	Shutdown          fn ()
	SetMusicVolume    fn (int)
	PauseMusic        fn ()
	ResumeMusic       fn ()
	RegisterSong      fn (voidptr, int) voidptr
	UnRegisterSong    fn (voidptr)
	PlaySong          fn (voidptr, bool)
	StopSong          fn ()
	MusicIsPlaying    fn () bool
	Poll              fn ()
}

[c: 'I_ShutdownMusic']
fn i_shutdownmusic()

[c: 'I_SetMusicVolume']
fn i_setmusicvolume(volume int)

[c: 'I_PauseSong']
fn i_pausesong()

[c: 'I_ResumeSong']
fn i_resumesong()

[c: 'I_RegisterSong']
fn i_registersong(data voidptr, len int) voidptr

[c: 'I_UnRegisterSong']
fn i_unregistersong(handle voidptr)

[c: 'I_PlaySong']
fn i_playsong(handle voidptr, looping bool)

[c: 'I_StopSong']
fn i_stopsong()

[c: 'I_MusicIsPlaying']
fn i_musicisplaying() bool

[weak]
__global (
	snd_musicdevice int
)

[weak]
__global (
	snd_pitchshift int
)

enum Opl_driver_ver_t {
	opl_doom1_1_666
	opl_doom2_1_666
	opl_doom_1_9
}

[c: 'I_SetOPLDriverVer']
fn i_setopldriverver(ver Opl_driver_ver_t)

[c: 'I_Error']
[c2v_variadic]
fn i_error(error ...&i8)

[c: 'I_AtExit']
fn i_atexit(func Atexit_func_t, run_if_error bool)

[c: 'DEH_String']
fn deh_string(s &i8) &i8

const ( // empty enum
)

[c: 'FixedMul']
fn fixedmul(a int, b int) int

[c_extern]
__global (
	finesine [10240]int
)

[weak]
__global (
	gameepisode int
)

[weak]
__global (
	gamemap int
)

// skipped extern global sfxVolume
// skipped extern global musicVolume
[weak]
__global (
	paused bool
)

[c_extern]
__global (
	S_sfx [109]Sfxinfo_t
)

[c_extern]
__global (
	S_music [68]Musicinfo_t
)

enum Musicenum_t {
	mus_none
	mus_e1m1
	mus_e1m2
	mus_e1m3
	mus_e1m4
	mus_e1m5
	mus_e1m6
	mus_e1m7
	mus_e1m8
	mus_e1m9
	mus_e2m1
	mus_e2m2
	mus_e2m3
	mus_e2m4
	mus_e2m5
	mus_e2m6
	mus_e2m7
	mus_e2m8
	mus_e2m9
	mus_e3m1
	mus_e3m2
	mus_e3m3
	mus_e3m4
	mus_e3m5
	mus_e3m6
	mus_e3m7
	mus_e3m8
	mus_e3m9
	mus_inter
	mus_intro
	mus_bunny
	mus_victor
	mus_introa
	mus_runnin
	mus_stalks
	mus_countd
	mus_betwee
	mus_doom
	mus_the_da
	mus_shawn
	mus_ddtblu
	mus_in_cit
	mus_dead
	mus_stlks2
	mus_theda2
	mus_doom2
	mus_ddtbl2
	mus_runni2
	mus_dead2
	mus_stlks3
	mus_romero
	mus_shawn2
	mus_messag
	mus_count2
	mus_ddtbl3
	mus_ampie
	mus_theda3
	mus_adrian
	mus_messg2
	mus_romer2
	mus_tense
	mus_shawn3
	mus_openin
	mus_evil
	mus_ultima
	mus_read_m
	mus_dm2ttl
	mus_dm2int
	nummusic
}

enum Sfxenum_t {
	sfx_none
	sfx_pistol
	sfx_shotgn
	sfx_sgcock
	sfx_dshtgn
	sfx_dbopn
	sfx_dbcls
	sfx_dbload
	sfx_plasma
	sfx_bfg
	sfx_sawup
	sfx_sawidl
	sfx_sawful
	sfx_sawhit
	sfx_rlaunc
	sfx_rxplod
	sfx_firsht
	sfx_firxpl
	sfx_pstart
	sfx_pstop
	sfx_doropn
	sfx_dorcls
	sfx_stnmov
	sfx_swtchn
	sfx_swtchx
	sfx_plpain
	sfx_dmpain
	sfx_popain
	sfx_vipain
	sfx_mnpain
	sfx_pepain
	sfx_slop
	sfx_itemup
	sfx_wpnup
	sfx_oof
	sfx_telept
	sfx_posit1
	sfx_posit2
	sfx_posit3
	sfx_bgsit1
	sfx_bgsit2
	sfx_sgtsit
	sfx_cacsit
	sfx_brssit
	sfx_cybsit
	sfx_spisit
	sfx_bspsit
	sfx_kntsit
	sfx_vilsit
	sfx_mansit
	sfx_pesit
	sfx_sklatk
	sfx_sgtatk
	sfx_skepch
	sfx_vilatk
	sfx_claw
	sfx_skeswg
	sfx_pldeth
	sfx_pdiehi
	sfx_podth1
	sfx_podth2
	sfx_podth3
	sfx_bgdth1
	sfx_bgdth2
	sfx_sgtdth
	sfx_cacdth
	sfx_skldth
	sfx_brsdth
	sfx_cybdth
	sfx_spidth
	sfx_bspdth
	sfx_vildth
	sfx_kntdth
	sfx_pedth
	sfx_skedth
	sfx_posact
	sfx_bgact
	sfx_dmact
	sfx_bspact
	sfx_bspwlk
	sfx_vilact
	sfx_noway
	sfx_barexp
	sfx_punch
	sfx_hoof
	sfx_metal
	sfx_chgun
	sfx_tink
	sfx_bdopn
	sfx_bdcls
	sfx_itmbk
	sfx_flame
	sfx_flamst
	sfx_getpow
	sfx_bospit
	sfx_boscub
	sfx_bossit
	sfx_bospn
	sfx_bosdth
	sfx_manatk
	sfx_mandth
	sfx_sssit
	sfx_ssdth
	sfx_keenpn
	sfx_keendt
	sfx_skeact
	sfx_skesit
	sfx_skeatk
	sfx_radio
	numsfx
}

[c: 'S_Init']
fn s_init(sfxvolume int, musicvolume int)

[c: 'S_Shutdown']
fn s_shutdown()

[c: 'S_Start']
fn s_start()

[c: 'S_StartSound']
fn s_startsound(origin voidptr, sound_id int)

[c: 'S_StopSound']
fn s_stopsound(origin &Mobj_t)

[c: 'S_StartMusic']
fn s_startmusic(music_id int)

[c: 'S_ChangeMusic']
fn s_changemusic(music_id int, looping int)

[c: 'S_MusicPlaying']
fn s_musicplaying() bool

[c: 'S_StopMusic']
fn s_stopmusic()

[c: 'S_PauseSound']
fn s_pausesound()

[c: 'S_ResumeSound']
fn s_resumesound()

[c: 'S_UpdateSounds']
fn s_updatesounds(listener &Mobj_t)

[c: 'S_SetMusicVolume']
fn s_setmusicvolume(volume int)

[c: 'S_SetSfxVolume']
fn s_setsfxvolume(volume int)

// skipped extern global snd_channels
[c: 'M_snprintf']
[c2v_variadic]
fn m_snprintf(buf &i8, buf_len usize, s ...&i8) int

[c: 'M_Random']
fn m_random() int

[c: 'R_PointToAngle']
fn r_pointtoangle(x int, y int) Angle_t

[c: 'R_PointToAngle2']
fn r_pointtoangle2(x1 int, y1 int, x2 int, y2 int) Angle_t

type Drawfunc_t = fn (int, int)

type Planefunction_t = fn (int, int)

struct Divline_t {
	x  int
	y  int
	dx int
	dy int
}

union Ddunion {
	thing &Mobj_t
	line  &Line_t
	a     int
}

struct Intercept_t {
	frac    int
	isaline bool
	d       Ddunion
}

type Traverser_t = fn (&Intercept_t) bool

struct Fireflicker_t {
	thinker  Thinker_t
	sector   &Sector_t
	count    int
	maxlight int
	minlight int
}

struct Lightflash_t {
	thinker  Thinker_t
	sector   &Sector_t
	count    int
	maxlight int
	minlight int
	maxtime  int
	mintime  int
}

struct Strobe_t {
	thinker    Thinker_t
	sector     &Sector_t
	count      int
	minlight   int
	maxlight   int
	darktime   int
	brighttime int
}

struct Glow_t {
	thinker   Thinker_t
	sector    &Sector_t
	minlight  int
	maxlight  int
	direction int
}

struct Switchlist_t {
	name1   [9]i8
	name2   [9]i8
	episode i16
}

enum Bwhere_e {
	top
	middle
	bottom
}

struct Button_t {
	line     &Line_t
	where    Bwhere_e
	btexture int
	btimer   int
	soundorg &Degenmobj_t
}

enum Plat_e {
	up
	down
	waiting
	in_stasis
}

enum Plattype_e {
	perpetualraise
	downwaitupstay
	raiseandchange
	raisetonearestandchange
	blazedwus
}

struct Plat_t {
	thinker   Thinker_t
	sector    &Sector_t
	speed     int
	low       int
	high      int
	wait      int
	count     int
	status    Plat_e
	oldstatus Plat_e
	crush     bool
	tag       int
	type_     Plattype_e
}

enum Vldoor_e {
	vld_normal
	vld_close30thenopen
	vld_close
	vld_open
	vld_raisein5mins
	vld_blazeraise
	vld_blazeopen
	vld_blazeclose
}

struct Vldoor_t {
	thinker      Thinker_t
	type_        Vldoor_e
	sector       &Sector_t
	topheight    int
	speed        int
	direction    int
	topwait      int
	topcountdown int
}

enum Ceiling_e {
	lowertofloor
	raisetohighest
	lowerandcrush
	crushandraise
	fastcrushandraise
	silentcrushandraise
}

struct Ceiling_t {
	thinker      Thinker_t
	type_        Ceiling_e
	sector       &Sector_t
	bottomheight int
	topheight    int
	speed        int
	crush        bool
	direction    int
	tag          int
	olddirection int
}

enum Floor_e {
	lowerfloor
	lowerfloortolowest
	turbolower
	raisefloor
	raisefloortonearest
	raisetotexture
	lowerandchange
	raisefloor24
	raisefloor24andchange
	raisefloorcrush
	raisefloorturbo
	donutraise
	raisefloor512
}

enum Stair_e {
	build8
	turbo16
}

struct Floormove_t {
	thinker         Thinker_t
	type_           Floor_e
	crush           bool
	sector          &Sector_t
	direction       int
	newspecial      int
	texture         i16
	floordestheight int
	speed           int
}

enum Result_e {
	ok
	crushed
	pastdest
}

[c: 'W_CheckNumForName']
fn w_checknumforname(name &i8) Lumpindex_t

[c: 'W_GetNumForName']
fn w_getnumforname(name &i8) Lumpindex_t

[c: 'W_LumpLength']
fn w_lumplength(lump Lumpindex_t) int

[c: 'W_CacheLumpNum']
fn w_cachelumpnum(lump Lumpindex_t, tag int) voidptr

[c: 'W_ReleaseLumpNum']
fn w_releaselumpnum(lump Lumpindex_t)

[c: 'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

struct Channel_t {
	sfxinfo &Sfxinfo_t
	origin  &Mobj_t
	handle  int
	pitch   int
}

[weak]
__global (
	channels &Channel_t
)

//!
[weak]
__global (
	sfxVolume = int(8)
)

//!
[weak]
__global (
	musicVolume = int(8)
)

[weak]
__global (
	snd_SfxVolume int
)

[weak]
__global (
	mus_paused bool
)

//!
[weak]
__global (
	mus_playing = &Musicinfo_t((voidptr(0)))
)

//!
[weak]
__global (
	snd_channels = int(8)
)

[c: 'S_Init']
fn s_init(sfxvolume int, musicvolume int) {
	i := 0
	if gameversion == GameVersion_t.exe_doom_1_666 {
		if GameMission_t.doom == GameMission_t.doom {
			i_setopldriverver(Opl_driver_ver_t.opl_doom1_1_666)
		} else {
			i_setopldriverver(Opl_driver_ver_t.opl_doom2_1_666)
		}
	} else {
		i_setopldriverver(Opl_driver_ver_t.opl_doom_1_9)
	}
	i_precachesounds(S_sfx, Sfxenum_t.numsfx)
	s_setsfxvolume(sfxVolume)
	s_setmusicvolume(musicVolume)
	channels = z_malloc(snd_channels * sizeof(Channel_t), 1, 0)
	for i = 0; i < snd_channels; i++ {
		channels[i].sfxinfo = 0
	}
	mus_paused = 0
	for i = 1; i < Sfxenum_t.numsfx; i++ {
		S_sfx[i].lumpnum = -1
		S_sfx[i].usefulness = -1
	}
	if snd_pitchshift == -1 {
		snd_pitchshift = 0
	}
	i_atexit(s_shutdown, true)
}

[c: 'S_Shutdown']
fn s_shutdown() {
	i_shutdownsound()
	i_shutdownmusic()
}

[c: 'S_StopChannel']
fn s_stopchannel(cnum int) {
	i := 0
	c := &Channel_t(0)
	c = &channels[cnum]
	if c.sfxinfo {
		if i_soundisplaying(c.handle) {
			i_stopsound(c.handle)
		}
		for i = 0; i < snd_channels; i++ {
			if cnum != i && c.sfxinfo == channels[i].sfxinfo {
				break
			}
		}
		c.sfxinfo.usefulness--
		c.sfxinfo = (voidptr(0))
		c.origin = (voidptr(0))
	}
}

[c: 'S_Start']
fn s_start() {
	cnum := 0
	mnum := 0
	for cnum = 0; cnum < snd_channels; cnum++ {
		if channels[cnum].sfxinfo {
			s_stopchannel(cnum)
		}
	}
	mus_paused = 0
	if gamemode == GameMode_t.commercial {
		mnum = Musicenum_t.mus_runnin + gamemap - 1
	} else {
		spmus := [Musicenum_t.mus_e3m4, Musicenum_t.mus_e3m2, Musicenum_t.mus_e3m3,
			Musicenum_t.mus_e1m5, Musicenum_t.mus_e2m7, Musicenum_t.mus_e2m4, Musicenum_t.mus_e2m6,
			Musicenum_t.mus_e2m5, Musicenum_t.mus_e1m9]!

		if gameepisode < 4 {
			mnum = Musicenum_t.mus_e1m1 + (gameepisode - 1) * 9 + gamemap - 1
		} else {
			mnum = spmus[gamemap - 1]
		}
	}
	s_changemusic(mnum, true)
}

[c: 'S_StopSound']
fn s_stopsound(origin &Mobj_t) {
	cnum := 0
	for cnum = 0; cnum < snd_channels; cnum++ {
		if channels[cnum].sfxinfo && channels[cnum].origin == origin {
			s_stopchannel(cnum)
			break
		}
	}
}

[c: 'S_GetChannel']
fn s_getchannel(origin &Mobj_t, sfxinfo &Sfxinfo_t) int {
	cnum := 0
	c := &Channel_t(0)
	for cnum = 0; cnum < snd_channels; cnum++ {
		if !channels[cnum].sfxinfo {
			break
		} else if origin && channels[cnum].origin == origin {
			s_stopchannel(cnum)
			break
		}
	}
	if cnum == snd_channels {
		for cnum = 0; cnum < snd_channels; cnum++ {
			if channels[cnum].sfxinfo.priority >= sfxinfo.priority {
				break
			}
		}
		if cnum == snd_channels {
			return -1
		} else {
			s_stopchannel(cnum)
		}
	}
	c = &channels[cnum]
	c.sfxinfo = sfxinfo
	c.origin = origin
	return cnum
}

[c: 'S_AdjustSoundParams']
fn s_adjustsoundparams(listener &Mobj_t, source &Mobj_t, vol &int, sep &int) int {
	approx_dist := 0
	adx := 0
	ady := 0
	angle := u32(0)
	adx = C.abs(listener.x - source.x)
	ady = C.abs(listener.y - source.y)
	approx_dist = adx + ady - ((if adx < ady { adx } else { ady }) >> 1)
	if gamemap != 8 && approx_dist > (1200 * (1 << 16)) {
		return 0
	}
	angle = r_pointtoangle2(listener.x, listener.y, source.x, source.y)
	if angle > listener.angle {
		angle = angle - listener.angle
	} else {
		angle = angle + (4294967295 - listener.angle)
	}
	angle >>= 19
	*sep = 128 - (fixedmul((96 * (1 << 16)), finesine[angle]) >> 16)
	if approx_dist < (200 * (1 << 16)) {
		*vol = snd_SfxVolume
	} else if gamemap == 8 {
		if approx_dist > (1200 * (1 << 16)) {
			approx_dist = (1200 * (1 << 16))
		}
		*vol = 15 +((snd_SfxVolume - 15) * (((1200 * (1 << 16)) - approx_dist) >> 16)) / (((1200 * (1 << 16)) - (200 * (1 << 16))) >> 16)
	} else {
		*vol = (snd_SfxVolume * (((1200 * (1 << 16)) - approx_dist) >> 16)) / (((1200 * (1 << 16)) - (200 * (1 << 16))) >> 16)
	}
	return *vol > 0
}

[c: 'Clamp']
fn clamp(x int) int {
	if x < 0 {
		return 0
	} else if x > 255 {
		return 255
	}
	return x
}

[c: 'S_StartSound']
fn s_startsound(origin_p voidptr, sfx_id int) {
	sfx := &Sfxinfo_t(0)
	origin := &Mobj_t(0)
	rc := 0
	sep := 0
	pitch := 0
	cnum := 0
	volume := 0
	origin = &Mobj_t(origin_p)
	volume = snd_SfxVolume
	if sfx_id < 1 || sfx_id > Sfxenum_t.numsfx {
		i_error(c'Bad sfx #: %d', sfx_id)
	}
	sfx = &S_sfx[sfx_id]
	pitch = 127
	if sfx.link {
		volume += sfx.volume
		pitch = sfx.pitch
		if volume < 1 {
			return
		}
		if volume > snd_SfxVolume {
			volume = snd_SfxVolume
		}
	}
	if origin && origin != players[consoleplayer].mo {
		rc = s_adjustsoundparams(players[consoleplayer].mo, origin, &volume, &sep)
		if origin.x == players[consoleplayer].mo.x && origin.y == players[consoleplayer].mo.y {
			sep = 128
		}
		if !rc {
			return
		}
	} else {
		sep = 128
	}
	if sfx_id >= Sfxenum_t.sfx_sawup && sfx_id <= Sfxenum_t.sfx_sawhit {
		pitch += 8 - (m_random() & 15)
	} else if sfx_id != Sfxenum_t.sfx_itemup && sfx_id != Sfxenum_t.sfx_tink {
		pitch += 16 - (m_random() & 31)
	}
	pitch = clamp(pitch)
	s_stopsound(origin)
	cnum = s_getchannel(origin, sfx)
	if cnum < 0 {
		return
	}
	if sfx.usefulness++ < 0 {
		sfx.usefulness = 1
	}
	if sfx.lumpnum < 0 {
		sfx.lumpnum = i_getsfxlumpnum(sfx)
	}
	channels[cnum].pitch = pitch
	channels[cnum].handle = i_startsound(sfx, cnum, volume, sep, channels[cnum].pitch)
}

[c: 'S_PauseSound']
fn s_pausesound() {
	if mus_playing && !mus_paused {
		i_pausesong()
		mus_paused = true
	}
}

[c: 'S_ResumeSound']
fn s_resumesound() {
	if mus_playing && mus_paused {
		i_resumesong()
		mus_paused = false
	}
}

[c: 'S_UpdateSounds']
fn s_updatesounds(listener &Mobj_t) {
	audible := 0
	cnum := 0
	volume := 0
	sep := 0
	sfx := &Sfxinfo_t(0)
	c := &Channel_t(0)
	i_updatesound()
	for cnum = 0; cnum < snd_channels; cnum++ {
		c = &channels[cnum]
		sfx = c.sfxinfo
		if c.sfxinfo {
			if i_soundisplaying(c.handle) {
				volume = snd_SfxVolume
				sep = 128
				if sfx.link {
					volume += sfx.volume
					if volume < 1 {
						s_stopchannel(cnum)
						continue
					} else if volume > snd_SfxVolume {
						volume = snd_SfxVolume
					}
				}
				if c.origin && listener != c.origin {
					audible = s_adjustsoundparams(listener, c.origin, &volume, &sep)
					if !audible {
						s_stopchannel(cnum)
					} else {
						i_updatesoundparams(c.handle, volume, sep)
					}
				}
			} else {
				s_stopchannel(cnum)
			}
		}
	}
}

[c: 'S_SetMusicVolume']
fn s_setmusicvolume(volume int) {
	if volume < 0 || volume > 127 {
		i_error(c'Attempt to set music volume at %d', volume)
	}
	i_setmusicvolume(volume)
}

[c: 'S_SetSfxVolume']
fn s_setsfxvolume(volume int) {
	if volume < 0 || volume > 127 {
		i_error(c'Attempt to set sfx volume at %d', volume)
	}
	snd_SfxVolume = volume
}

[c: 'S_StartMusic']
fn s_startmusic(m_id int) {
	s_changemusic(m_id, false)
}

[c: 'S_ChangeMusic']
fn s_changemusic(musicnum int, looping int) {
	music := &Musicinfo_t(0)
	namebuf := [9]i8{}
	handle := &voidptr(0)
	if musicnum == Musicenum_t.mus_intro && (snd_musicdevice == Snddevice_t.snddevice_adlib
		|| snd_musicdevice == Snddevice_t.snddevice_sb) && w_checknumforname(c'D_INTROA') >= 0 {
		musicnum = Musicenum_t.mus_introa
	}
	if musicnum <= Musicenum_t.mus_none || musicnum >= Musicenum_t.nummusic {
		i_error(c'Bad music number %d', musicnum)
	} else {
		music = &S_music[musicnum]
	}
	if mus_playing == music {
		return
	}
	s_stopmusic()
	if !music.lumpnum {
		m_snprintf(namebuf, sizeof(namebuf), c'd_%s', deh_string(music.name))
		music.lumpnum = w_getnumforname(namebuf)
	}
	music.data = w_cachelumpnum(music.lumpnum, 1)
	handle = i_registersong(music.data, w_lumplength(music.lumpnum))
	music.handle = handle
	i_playsong(handle, looping)
	mus_playing = music
}

[c: 'S_MusicPlaying']
fn s_musicplaying() bool {
	return i_musicisplaying()
}

[c: 'S_StopMusic']
fn s_stopmusic() {
	if mus_playing {
		if mus_paused {
			i_resumesong()
		}
		i_stopsong()
		i_unregistersong(mus_playing.handle)
		w_releaselumpnum(mus_playing.lumpnum)
		mus_playing.data = (voidptr(0))
		mus_playing = (voidptr(0))
	}
}
