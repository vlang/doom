[translated]
module main

[typedef]
struct C.FILE {}

// vstart

fn system(&i8) int

fn ffs(int) int

[c: 'DEH_snprintf']
[c2v_variadic]
fn deh_snprintf(buffer &i8, len usize, fmt ...&i8)

[c: 'I_Error']
[c2v_variadic]
fn i_error(error ...&i8)

[c: 'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

[c: 'Z_Free']
fn z_free(ptr voidptr)

const ( // empty enum
)

[c: 'P_InitThinkers']
fn p_initthinkers()

[c: 'P_AddThinker']
fn p_addthinker(thinker &Thinker_t)

[c: 'P_RemoveMobj']
fn p_removemobj(th &Mobj_t)

[c: 'P_MobjThinker']
fn p_mobjthinker(mobj &Mobj_t)

[c: 'P_SetThingPosition']
fn p_setthingposition(thing &Mobj_t)

[c: 'T_LightFlash']
fn t_lightflash(flash &Lightflash_t)

[c: 'T_StrobeFlash']
fn t_strobeflash(flash &Strobe_t)

[c: 'T_Glow']
fn t_glow(g &Glow_t)

[c: 'T_PlatRaise']
fn t_platraise(plat &Plat_t)

[c: 'P_AddActivePlat']
fn p_addactiveplat(plat &Plat_t)

[c: 'T_VerticalDoor']
fn t_verticaldoor(door &Vldoor_t)

[c: 'T_MoveCeiling']
fn t_moveceiling(ceiling &Ceiling_t)

[c: 'P_AddActiveCeiling']
fn p_addactiveceiling(c &Ceiling_t)

[c: 'T_MoveFloor']
fn t_movefloor(floor &Floormove_t)

[c: 'P_TempSaveGameFile']
fn p_tempsavegamefile() &i8

[c: 'P_SaveGameFile']
fn p_savegamefile(slot int) &i8

[c: 'P_ReadSaveGameHeader']
fn p_readsavegameheader() bool

[c: 'P_WriteSaveGameHeader']
fn p_writesavegameheader(description &i8)

[c: 'P_ReadSaveGameEOF']
fn p_readsavegameeof() bool

[c: 'P_WriteSaveGameEOF']
fn p_writesavegameeof()

[c: 'P_ArchivePlayers']
fn p_archiveplayers()

[c: 'P_UnArchivePlayers']
fn p_unarchiveplayers()

[c: 'P_ArchiveWorld']
fn p_archiveworld()

[c: 'P_UnArchiveWorld']
fn p_unarchiveworld()

[c: 'P_ArchiveThinkers']
fn p_archivethinkers()

[c: 'P_UnArchiveThinkers']
fn p_unarchivethinkers()

[c: 'P_ArchiveSpecials']
fn p_archivespecials()

[c: 'P_UnArchiveSpecials']
fn p_unarchivespecials()

[c: 'G_VanillaVersionCode']
fn g_vanillaversioncode() int

[c: 'M_StringJoin']
[c2v_variadic]
fn m_stringjoin(s ...&i8) &i8

[c: 'M_snprintf']
[c2v_variadic]
fn m_snprintf(buf &i8, buf_len usize, s ...&i8) int

[weak]
__global (
	savegamelength int
)

[c: 'P_TempSaveGameFile']
fn p_tempsavegamefile() &i8 {
	filename := (voidptr(0))
	if filename == (voidptr(0)) {
		filename = m_stringjoin(savegamedir, c'temp.dsg', (voidptr(0)))
	}
	return filename
}

[c: 'P_SaveGameFile']
fn p_savegamefile(slot int) &i8 {
	filename := (voidptr(0))
	filename_size := 0
	basename := [32]i8{}
	if filename == (voidptr(0)) {
		filename_size = C.strlen(savegamedir) + 32
		filename = C.malloc(filename_size)
	}
	deh_snprintf(basename, 32, c'doomsav%d.dsg', slot)
	m_snprintf(filename, filename_size, c'%s%s', savegamedir, basename)
	return filename
}

fn saveg_read8() u8 {
	result := -1
	if C.fread(&result, 1, 1, save_stream) < 1 {
		if !savegame_error {
			C.fprintf(C.__stderrp, c'saveg_read8: Unexpected end of file while reading save game\n')
			savegame_error = true
		}
	}
	return result
}

fn saveg_write8(value u8) {
	if C.fwrite(&value, 1, 1, save_stream) < 1 {
		if !savegame_error {
			C.fprintf(C.__stderrp, c'saveg_write8: Error while writing save game\n')
			savegame_error = true
		}
	}
}

fn saveg_read16() i16 {
	result := 0
	result = saveg_read8()
	result |= saveg_read8() << 8
	return result
}

fn saveg_write16(value i16) {
	saveg_write8(value & 255)
	saveg_write8((value >> 8) & 255)
}

fn saveg_read32() int {
	result := 0
	result = saveg_read8()
	result |= saveg_read8() << 8
	result |= saveg_read8() << 16
	result |= saveg_read8() << 24
	return result
}

fn saveg_write32(value int) {
	saveg_write8(value & 255)
	saveg_write8((value >> 8) & 255)
	saveg_write8((value >> 16) & 255)
	saveg_write8((value >> 24) & 255)
}

fn saveg_read_pad() {
	pos := u32(0)
	padding := 0
	i := 0
	pos = C.ftell(save_stream)
	padding = (4 - (pos & 3)) & 3
	for i = 0; i < padding; i++ {
		saveg_read8()
	}
}

fn saveg_write_pad() {
	pos := u32(0)
	padding := 0
	i := 0
	pos = C.ftell(save_stream)
	padding = (4 - (pos & 3)) & 3
	for i = 0; i < padding; i++ {
		saveg_write8(0)
	}
}

fn saveg_readp() voidptr {
	return voidptr(C.intptr_t(saveg_read32()))
}

fn saveg_writep(p voidptr) {
	saveg_write32(int((C.intptr_t(p))))
}

fn saveg_read_mapthing_t(str &Mapthing_t) {
	str.x = saveg_read16()
	str.y = saveg_read16()
	str.angle = saveg_read16()
	str.type_ = saveg_read16()
	str.options = saveg_read16()
}

fn saveg_write_mapthing_t(str &Mapthing_t) {
	saveg_write16(str.x)
	saveg_write16(str.y)
	saveg_write16(str.angle)
	saveg_write16(str.type_)
	saveg_write16(str.options)
}

fn saveg_read_actionf_t(str &Actionf_t) {
	str.acp1 = saveg_readp()
}

fn saveg_write_actionf_t(str &Actionf_t) {
	saveg_writep(str.acp1)
}

fn saveg_read_thinker_t(str &Thinker_t) {
	str.prev = saveg_readp()
	str.next = saveg_readp()
	saveg_read_actionf_t(&str.function)
}

fn saveg_write_thinker_t(str &Thinker_t) {
	saveg_writep(str.prev)
	saveg_writep(str.next)
	saveg_write_actionf_t(&str.function)
}

fn saveg_read_mobj_t(str &Mobj_t) {
	pl := 0
	saveg_read_thinker_t(&str.thinker)
	str.x = saveg_read32()
	str.y = saveg_read32()
	str.z = saveg_read32()
	str.snext = saveg_readp()
	str.sprev = saveg_readp()
	str.angle = saveg_read32()
	str.sprite = saveg_read32()
	str.frame = saveg_read32()
	str.bnext = saveg_readp()
	str.bprev = saveg_readp()
	str.subsector = saveg_readp()
	str.floorz = saveg_read32()
	str.ceilingz = saveg_read32()
	str.radius = saveg_read32()
	str.height = saveg_read32()
	str.momx = saveg_read32()
	str.momy = saveg_read32()
	str.momz = saveg_read32()
	str.validcount = saveg_read32()
	str.type_ = saveg_read32()
	str.info = saveg_readp()
	str.tics = saveg_read32()
	str.state = &states[saveg_read32()]
	str.flags = saveg_read32()
	str.health = saveg_read32()
	str.movedir = saveg_read32()
	str.movecount = saveg_read32()
	str.target = saveg_readp()
	str.reactiontime = saveg_read32()
	str.threshold = saveg_read32()
	pl = saveg_read32()
	if pl > 0 {
		str.player = &players[pl - 1]
		str.player.mo = str
	} else {
		str.player = (voidptr(0))
	}
	str.lastlook = saveg_read32()
	saveg_read_mapthing_t(&str.spawnpoint)
	str.tracer = saveg_readp()
}

fn saveg_write_mobj_t(str &Mobj_t) {
	saveg_write_thinker_t(&str.thinker)
	saveg_write32(str.x)
	saveg_write32(str.y)
	saveg_write32(str.z)
	saveg_writep(str.snext)
	saveg_writep(str.sprev)
	saveg_write32(str.angle)
	saveg_write32(str.sprite)
	saveg_write32(str.frame)
	saveg_writep(str.bnext)
	saveg_writep(str.bprev)
	saveg_writep(str.subsector)
	saveg_write32(str.floorz)
	saveg_write32(str.ceilingz)
	saveg_write32(str.radius)
	saveg_write32(str.height)
	saveg_write32(str.momx)
	saveg_write32(str.momy)
	saveg_write32(str.momz)
	saveg_write32(str.validcount)
	saveg_write32(str.type_)
	saveg_writep(str.info)
	saveg_write32(str.tics)
	saveg_write32(str.state - states)
	saveg_write32(str.flags)
	saveg_write32(str.health)
	saveg_write32(str.movedir)
	saveg_write32(str.movecount)
	saveg_writep(str.target)
	saveg_write32(str.reactiontime)
	saveg_write32(str.threshold)
	if str.player {
		saveg_write32(str.player - players + 1)
	} else {
		saveg_write32(0)
	}
	saveg_write32(str.lastlook)
	saveg_write_mapthing_t(&str.spawnpoint)
	saveg_writep(str.tracer)
}

fn saveg_read_ticcmd_t(str &Ticcmd_t) {
	str.forwardmove = saveg_read8()
	str.sidemove = saveg_read8()
	str.angleturn = saveg_read16()
	str.consistancy = saveg_read16()
	str.chatchar = saveg_read8()
	str.buttons = saveg_read8()
}

fn saveg_write_ticcmd_t(str &Ticcmd_t) {
	saveg_write8(str.forwardmove)
	saveg_write8(str.sidemove)
	saveg_write16(str.angleturn)
	saveg_write16(str.consistancy)
	saveg_write8(str.chatchar)
	saveg_write8(str.buttons)
}

fn saveg_read_pspdef_t(str &Pspdef_t) {
	state := 0
	state = saveg_read32()
	if state > 0 {
		str.state = &states[state]
	} else {
		str.state = (voidptr(0))
	}
	str.tics = saveg_read32()
	str.sx = saveg_read32()
	str.sy = saveg_read32()
}

fn saveg_write_pspdef_t(str &Pspdef_t) {
	if str.state {
		saveg_write32(str.state - states)
	} else {
		saveg_write32(0)
	}
	saveg_write32(str.tics)
	saveg_write32(str.sx)
	saveg_write32(str.sy)
}

fn saveg_read_player_t(str &Player_t) {
	i := 0
	str.mo = saveg_readp()
	str.playerstate = saveg_read32()
	saveg_read_ticcmd_t(&str.cmd)
	str.viewz = saveg_read32()
	str.viewheight = saveg_read32()
	str.deltaviewheight = saveg_read32()
	str.bob = saveg_read32()
	str.health = saveg_read32()
	str.armorpoints = saveg_read32()
	str.armortype = saveg_read32()
	for i = 0; i < Powertype_t.numpowers; i++ {
		str.powers[i] = saveg_read32()
	}
	for i = 0; i < Card_t.numcards; i++ {
		str.cards[i] = saveg_read32()
	}
	str.backpack = saveg_read32()
	for i = 0; i < 4; i++ {
		str.frags[i] = saveg_read32()
	}
	str.readyweapon = saveg_read32()
	str.pendingweapon = saveg_read32()
	for i = 0; i < Weapontype_t.numweapons; i++ {
		str.weaponowned[i] = saveg_read32()
	}
	for i = 0; i < Ammotype_t.numammo; i++ {
		str.ammo[i] = saveg_read32()
	}
	for i = 0; i < Ammotype_t.numammo; i++ {
		str.maxammo[i] = saveg_read32()
	}
	str.attackdown = saveg_read32()
	str.usedown = saveg_read32()
	str.cheats = saveg_read32()
	str.refire = saveg_read32()
	str.killcount = saveg_read32()
	str.itemcount = saveg_read32()
	str.secretcount = saveg_read32()
	str.message = saveg_readp()
	str.damagecount = saveg_read32()
	str.bonuscount = saveg_read32()
	str.attacker = saveg_readp()
	str.extralight = saveg_read32()
	str.fixedcolormap = saveg_read32()
	str.colormap = saveg_read32()
	for i = 0; i < Psprnum_t.numpsprites; i++ {
		saveg_read_pspdef_t(&str.psprites[i])
	}
	str.didsecret = saveg_read32()
}

fn saveg_write_player_t(str &Player_t) {
	i := 0
	saveg_writep(str.mo)
	saveg_write32(str.playerstate)
	saveg_write_ticcmd_t(&str.cmd)
	saveg_write32(str.viewz)
	saveg_write32(str.viewheight)
	saveg_write32(str.deltaviewheight)
	saveg_write32(str.bob)
	saveg_write32(str.health)
	saveg_write32(str.armorpoints)
	saveg_write32(str.armortype)
	for i = 0; i < Powertype_t.numpowers; i++ {
		saveg_write32(str.powers[i])
	}
	for i = 0; i < Card_t.numcards; i++ {
		saveg_write32(str.cards[i])
	}
	saveg_write32(str.backpack)
	for i = 0; i < 4; i++ {
		saveg_write32(str.frags[i])
	}
	saveg_write32(str.readyweapon)
	saveg_write32(str.pendingweapon)
	for i = 0; i < Weapontype_t.numweapons; i++ {
		saveg_write32(str.weaponowned[i])
	}
	for i = 0; i < Ammotype_t.numammo; i++ {
		saveg_write32(str.ammo[i])
	}
	for i = 0; i < Ammotype_t.numammo; i++ {
		saveg_write32(str.maxammo[i])
	}
	saveg_write32(str.attackdown)
	saveg_write32(str.usedown)
	saveg_write32(str.cheats)
	saveg_write32(str.refire)
	saveg_write32(str.killcount)
	saveg_write32(str.itemcount)
	saveg_write32(str.secretcount)
	saveg_writep(str.message)
	saveg_write32(str.damagecount)
	saveg_write32(str.bonuscount)
	saveg_writep(str.attacker)
	saveg_write32(str.extralight)
	saveg_write32(str.fixedcolormap)
	saveg_write32(str.colormap)
	for i = 0; i < Psprnum_t.numpsprites; i++ {
		saveg_write_pspdef_t(&str.psprites[i])
	}
	saveg_write32(str.didsecret)
}

fn saveg_read_ceiling_t(str &Ceiling_t) {
	sector := 0
	saveg_read_thinker_t(&str.thinker)
	str.type_ = saveg_read32()
	sector = saveg_read32()
	str.sector = &sectors[sector]
	str.bottomheight = saveg_read32()
	str.topheight = saveg_read32()
	str.speed = saveg_read32()
	str.crush = saveg_read32()
	str.direction = saveg_read32()
	str.tag = saveg_read32()
	str.olddirection = saveg_read32()
}

fn saveg_write_ceiling_t(str &Ceiling_t) {
	saveg_write_thinker_t(&str.thinker)
	saveg_write32(str.type_)
	saveg_write32(str.sector - sectors)
	saveg_write32(str.bottomheight)
	saveg_write32(str.topheight)
	saveg_write32(str.speed)
	saveg_write32(str.crush)
	saveg_write32(str.direction)
	saveg_write32(str.tag)
	saveg_write32(str.olddirection)
}

fn saveg_read_vldoor_t(str &Vldoor_t) {
	sector := 0
	saveg_read_thinker_t(&str.thinker)
	str.type_ = saveg_read32()
	sector = saveg_read32()
	str.sector = &sectors[sector]
	str.topheight = saveg_read32()
	str.speed = saveg_read32()
	str.direction = saveg_read32()
	str.topwait = saveg_read32()
	str.topcountdown = saveg_read32()
}

fn saveg_write_vldoor_t(str &Vldoor_t) {
	saveg_write_thinker_t(&str.thinker)
	saveg_write32(str.type_)
	saveg_write32(str.sector - sectors)
	saveg_write32(str.topheight)
	saveg_write32(str.speed)
	saveg_write32(str.direction)
	saveg_write32(str.topwait)
	saveg_write32(str.topcountdown)
}

fn saveg_read_floormove_t(str &Floormove_t) {
	sector := 0
	saveg_read_thinker_t(&str.thinker)
	str.type_ = saveg_read32()
	str.crush = saveg_read32()
	sector = saveg_read32()
	str.sector = &sectors[sector]
	str.direction = saveg_read32()
	str.newspecial = saveg_read32()
	str.texture = saveg_read16()
	str.floordestheight = saveg_read32()
	str.speed = saveg_read32()
}

fn saveg_write_floormove_t(str &Floormove_t) {
	saveg_write_thinker_t(&str.thinker)
	saveg_write32(str.type_)
	saveg_write32(str.crush)
	saveg_write32(str.sector - sectors)
	saveg_write32(str.direction)
	saveg_write32(str.newspecial)
	saveg_write16(str.texture)
	saveg_write32(str.floordestheight)
	saveg_write32(str.speed)
}

fn saveg_read_plat_t(str &Plat_t) {
	sector := 0
	saveg_read_thinker_t(&str.thinker)
	sector = saveg_read32()
	str.sector = &sectors[sector]
	str.speed = saveg_read32()
	str.low = saveg_read32()
	str.high = saveg_read32()
	str.wait = saveg_read32()
	str.count = saveg_read32()
	str.status = saveg_read32()
	str.oldstatus = saveg_read32()
	str.crush = saveg_read32()
	str.tag = saveg_read32()
	str.type_ = saveg_read32()
}

fn saveg_write_plat_t(str &Plat_t) {
	saveg_write_thinker_t(&str.thinker)
	saveg_write32(str.sector - sectors)
	saveg_write32(str.speed)
	saveg_write32(str.low)
	saveg_write32(str.high)
	saveg_write32(str.wait)
	saveg_write32(str.count)
	saveg_write32(str.status)
	saveg_write32(str.oldstatus)
	saveg_write32(str.crush)
	saveg_write32(str.tag)
	saveg_write32(str.type_)
}

fn saveg_read_lightflash_t(str &Lightflash_t) {
	sector := 0
	saveg_read_thinker_t(&str.thinker)
	sector = saveg_read32()
	str.sector = &sectors[sector]
	str.count = saveg_read32()
	str.maxlight = saveg_read32()
	str.minlight = saveg_read32()
	str.maxtime = saveg_read32()
	str.mintime = saveg_read32()
}

fn saveg_write_lightflash_t(str &Lightflash_t) {
	saveg_write_thinker_t(&str.thinker)
	saveg_write32(str.sector - sectors)
	saveg_write32(str.count)
	saveg_write32(str.maxlight)
	saveg_write32(str.minlight)
	saveg_write32(str.maxtime)
	saveg_write32(str.mintime)
}

fn saveg_read_strobe_t(str &Strobe_t) {
	sector := 0
	saveg_read_thinker_t(&str.thinker)
	sector = saveg_read32()
	str.sector = &sectors[sector]
	str.count = saveg_read32()
	str.minlight = saveg_read32()
	str.maxlight = saveg_read32()
	str.darktime = saveg_read32()
	str.brighttime = saveg_read32()
}

fn saveg_write_strobe_t(str &Strobe_t) {
	saveg_write_thinker_t(&str.thinker)
	saveg_write32(str.sector - sectors)
	saveg_write32(str.count)
	saveg_write32(str.minlight)
	saveg_write32(str.maxlight)
	saveg_write32(str.darktime)
	saveg_write32(str.brighttime)
}

fn saveg_read_glow_t(str &Glow_t) {
	sector := 0
	saveg_read_thinker_t(&str.thinker)
	sector = saveg_read32()
	str.sector = &sectors[sector]
	str.minlight = saveg_read32()
	str.maxlight = saveg_read32()
	str.direction = saveg_read32()
}

fn saveg_write_glow_t(str &Glow_t) {
	saveg_write_thinker_t(&str.thinker)
	saveg_write32(str.sector - sectors)
	saveg_write32(str.minlight)
	saveg_write32(str.maxlight)
	saveg_write32(str.direction)
}

[c: 'P_WriteSaveGameHeader']
fn p_writesavegameheader(description &i8) {
	name := [16]i8{}
	i := 0
	for i = 0; description[i] != `\x00`; i++ {
		saveg_write8(description[i])
	}
	for ; i < 24; i++ {
		saveg_write8(0)
	}
	C.memset(name, 0, sizeof(name))
	m_snprintf(name, sizeof(name), c'version %i', g_vanillaversioncode())
	for i = 0; i < 16; i++ {
		saveg_write8(name[i])
	}
	saveg_write8(gameskill)
	saveg_write8(gameepisode)
	saveg_write8(gamemap)
	for i = 0; i < 4; i++ {
		saveg_write8(playeringame[i])
	}
	saveg_write8((leveltime >> 16) & 255)
	saveg_write8((leveltime >> 8) & 255)
	saveg_write8(leveltime & 255)
}

[c: 'P_ReadSaveGameHeader']
fn p_readsavegameheader() bool {
	i := 0
	a := u8(0)
	b := u8(0)
	c := u8(0)

	vcheck := [16]i8{}
	read_vcheck := [16]i8{}
	for i = 0; i < 24; i++ {
		saveg_read8()
	}
	for i = 0; i < 16; i++ {
		read_vcheck[i] = saveg_read8()
	}
	C.memset(vcheck, 0, sizeof(vcheck))
	m_snprintf(vcheck, sizeof(vcheck), c'version %i', g_vanillaversioncode())
	if C.strcmp(read_vcheck, vcheck) != 0 {
		return false
	}
	gameskill = saveg_read8()
	gameepisode = saveg_read8()
	gamemap = saveg_read8()
	for i = 0; i < 4; i++ {
		playeringame[i] = saveg_read8()
	}
	a = saveg_read8()
	b = saveg_read8()
	c = saveg_read8()
	leveltime = (a << 16) + (b << 8) + c
	return true
}

[c: 'P_ReadSaveGameEOF']
fn p_readsavegameeof() bool {
	value := 0
	value = saveg_read8()
	return value == 29
}

[c: 'P_WriteSaveGameEOF']
fn p_writesavegameeof() {
	saveg_write8(29)
}

[c: 'P_ArchivePlayers']
fn p_archiveplayers() {
	i := 0
	for i = 0; i < 4; i++ {
		if !playeringame[i] {
			continue
		}
		saveg_write_pad()
		saveg_write_player_t(&players[i])
	}
}

[c: 'P_UnArchivePlayers']
fn p_unarchiveplayers() {
	i := 0
	for i = 0; i < 4; i++ {
		if !playeringame[i] {
			continue
		}
		saveg_read_pad()
		saveg_read_player_t(&players[i])
		players[i].mo = (voidptr(0))
		players[i].message = (voidptr(0))
		players[i].attacker = (voidptr(0))
	}
}

[c: 'P_ArchiveWorld']
fn p_archiveworld() {
	i := 0
	j := 0
	sec := &Sector_t(0)
	li := &Line_t(0)
	si := &Side_t(0)
	for sec = sectors; i < numsectors; i++ {
		saveg_write16(sec.floorheight >> 16)
		saveg_write16(sec.ceilingheight >> 16)
		saveg_write16(sec.floorpic)
		saveg_write16(sec.ceilingpic)
		saveg_write16(sec.lightlevel)
		saveg_write16(sec.special)
		saveg_write16(sec.tag)
		sec++
	}
	i = 0
	for li = lines; i < numlines; i++ {
		saveg_write16(li.flags)
		saveg_write16(li.special)
		saveg_write16(li.tag)
		for j = 0; j < 2; j++ {
			if li.sidenum[j] == -1 {
				continue
			}
			si = &sides[li.sidenum[j]]
			saveg_write16(si.textureoffset >> 16)
			saveg_write16(si.rowoffset >> 16)
			saveg_write16(si.toptexture)
			saveg_write16(si.bottomtexture)
			saveg_write16(si.midtexture)
		}
		li++
	}
}

[c: 'P_UnArchiveWorld']
fn p_unarchiveworld() {
	i := 0
	j := 0
	sec := &Sector_t(0)
	li := &Line_t(0)
	si := &Side_t(0)
	for sec = sectors; i < numsectors; i++ {
		sec.floorheight = saveg_read16() << 16
		sec.ceilingheight = saveg_read16() << 16
		sec.floorpic = saveg_read16()
		sec.ceilingpic = saveg_read16()
		sec.lightlevel = saveg_read16()
		sec.special = saveg_read16()
		sec.tag = saveg_read16()
		sec.specialdata = 0
		sec.soundtarget = 0
		sec++
	}
	i = 0
	for li = lines; i < numlines; i++ {
		li.flags = saveg_read16()
		li.special = saveg_read16()
		li.tag = saveg_read16()
		for j = 0; j < 2; j++ {
			if li.sidenum[j] == -1 {
				continue
			}
			si = &sides[li.sidenum[j]]
			si.textureoffset = saveg_read16() << 16
			si.rowoffset = saveg_read16() << 16
			si.toptexture = saveg_read16()
			si.bottomtexture = saveg_read16()
			si.midtexture = saveg_read16()
		}
		li++
	}
}

enum Thinkerclass_t {
	tc_end
	tc_mobj
}

[c: 'P_ArchiveThinkers']
fn p_archivethinkers() {
	th := &Thinker_t(0)
	for th = thinkercap.next; th != &thinkercap; th = th.next {
		if th.function.acp1 == Actionf_p1(p_mobjthinker) {
			saveg_write8(Thinkerclass_t.tc_mobj)
			saveg_write_pad()
			saveg_write_mobj_t(&Mobj_t(th))
			continue
		}
	}
	saveg_write8(Thinkerclass_t.tc_end)
}

[c: 'P_UnArchiveThinkers']
fn p_unarchivethinkers() {
	tclass := u8(0)
	currentthinker := &Thinker_t(0)
	next := &Thinker_t(0)
	mobj := &Mobj_t(0)
	currentthinker = thinkercap.next
	for currentthinker != &thinkercap {
		next = currentthinker.next
		if currentthinker.function.acp1 == Actionf_p1(p_mobjthinker) {
			p_removemobj(&Mobj_t(currentthinker))
		} else { // 3
			z_free(currentthinker)
		}
		currentthinker = next
	}
	p_initthinkers()
	for 1 {
		tclass = saveg_read8()
		match Thinkerclass_t(tclass) {
			.tc_end /* case comp body kind=ReturnStmt is_enum=true */ {
				return
			}
			.tc_mobj /* case comp body kind=CallExpr is_enum=true */ {
				saveg_read_pad()
				mobj = z_malloc(sizeof(*mobj), 5, (voidptr(0)))
				saveg_read_mobj_t(mobj)
				mobj.target = (voidptr(0))
				mobj.tracer = (voidptr(0))
				p_setthingposition(mobj)
				mobj.info = &mobjinfo[mobj.type_]
				mobj.floorz = mobj.subsector.sector.floorheight
				mobj.ceilingz = mobj.subsector.sector.ceilingheight
				mobj.thinker.function.acp1 = Actionf_p1(p_mobjthinker)
				p_addthinker(&mobj.thinker)
			}
			else {
				i_error(c'Unknown tclass %i in savegame', tclass)
			}
		}
	}
}

enum Specials {
	tc_ceiling
	tc_door
	tc_floor
	tc_plat
	tc_flash
	tc_strobe
	tc_glow
	tc_endspecials
}

[weak]
__global (
	specials_e Specials
)

[c: 'P_ArchiveSpecials']
fn p_archivespecials() {
	th := &Thinker_t(0)
	i := 0
	for th = thinkercap.next; th != &thinkercap; th = th.next {
		if th.function.acv == Actionf_v((voidptr(0))) {
			for i = 0; i < 30; i++ {
				if activeceilings[i] == &Ceiling_t(th) {
					break
				}
			}
			if i < 30 {
				saveg_write8(Specials.tc_ceiling)
				saveg_write_pad()
				saveg_write_ceiling_t(&Ceiling_t(th))
			}
			continue
		}
		if th.function.acp1 == Actionf_p1(t_moveceiling) {
			saveg_write8(Specials.tc_ceiling)
			saveg_write_pad()
			saveg_write_ceiling_t(&Ceiling_t(th))
			continue
		}
		if th.function.acp1 == Actionf_p1(t_verticaldoor) {
			saveg_write8(Specials.tc_door)
			saveg_write_pad()
			saveg_write_vldoor_t(&Vldoor_t(th))
			continue
		}
		if th.function.acp1 == Actionf_p1(t_movefloor) {
			saveg_write8(Specials.tc_floor)
			saveg_write_pad()
			saveg_write_floormove_t(&Floormove_t(th))
			continue
		}
		if th.function.acp1 == Actionf_p1(t_platraise) {
			saveg_write8(Specials.tc_plat)
			saveg_write_pad()
			saveg_write_plat_t(&Plat_t(th))
			continue
		}
		if th.function.acp1 == Actionf_p1(t_lightflash) {
			saveg_write8(Specials.tc_flash)
			saveg_write_pad()
			saveg_write_lightflash_t(&Lightflash_t(th))
			continue
		}
		if th.function.acp1 == Actionf_p1(t_strobeflash) {
			saveg_write8(Specials.tc_strobe)
			saveg_write_pad()
			saveg_write_strobe_t(&Strobe_t(th))
			continue
		}
		if th.function.acp1 == Actionf_p1(t_glow) {
			saveg_write8(Specials.tc_glow)
			saveg_write_pad()
			saveg_write_glow_t(&Glow_t(th))
			continue
		}
	}
	saveg_write8(Specials.tc_endspecials)
}

[c: 'P_UnArchiveSpecials']
fn p_unarchivespecials() {
	tclass := u8(0)
	ceiling := &Ceiling_t(0)
	door := &Vldoor_t(0)
	floor := &Floormove_t(0)
	plat := &Plat_t(0)
	flash := &Lightflash_t(0)
	strobe := &Strobe_t(0)
	glow := &Glow_t(0)
	for 1 {
		tclass = saveg_read8()
		match Specials(tclass) {
			.tc_endspecials /* case comp body kind=ReturnStmt is_enum=true */ {
				return
			}
			.tc_ceiling /* case comp body kind=CallExpr is_enum=true */ {
				saveg_read_pad()
				ceiling = z_malloc(sizeof(*ceiling), 5, (voidptr(0)))
				saveg_read_ceiling_t(ceiling)
				ceiling.sector.specialdata = ceiling
				if ceiling.thinker.function.acp1 {
					ceiling.thinker.function.acp1 = Actionf_p1(t_moveceiling)
				}
				p_addthinker(&ceiling.thinker)
				p_addactiveceiling(ceiling)
			}
			.tc_door /* case comp body kind=CallExpr is_enum=true */ {
				saveg_read_pad()
				door = z_malloc(sizeof(*door), 5, (voidptr(0)))
				saveg_read_vldoor_t(door)
				door.sector.specialdata = door
				door.thinker.function.acp1 = Actionf_p1(t_verticaldoor)
				p_addthinker(&door.thinker)
			}
			.tc_floor /* case comp body kind=CallExpr is_enum=true */ {
				saveg_read_pad()
				floor = z_malloc(sizeof(*floor), 5, (voidptr(0)))
				saveg_read_floormove_t(floor)
				floor.sector.specialdata = floor
				floor.thinker.function.acp1 = Actionf_p1(t_movefloor)
				p_addthinker(&floor.thinker)
			}
			.tc_plat /* case comp body kind=CallExpr is_enum=true */ {
				saveg_read_pad()
				plat = z_malloc(sizeof(*plat), 5, (voidptr(0)))
				saveg_read_plat_t(plat)
				plat.sector.specialdata = plat
				if plat.thinker.function.acp1 {
					plat.thinker.function.acp1 = Actionf_p1(t_platraise)
				}
				p_addthinker(&plat.thinker)
				p_addactiveplat(plat)
			}
			.tc_flash /* case comp body kind=CallExpr is_enum=true */ {
				saveg_read_pad()
				flash = z_malloc(sizeof(*flash), 5, (voidptr(0)))
				saveg_read_lightflash_t(flash)
				flash.thinker.function.acp1 = Actionf_p1(t_lightflash)
				p_addthinker(&flash.thinker)
			}
			.tc_strobe /* case comp body kind=CallExpr is_enum=true */ {
				saveg_read_pad()
				strobe = z_malloc(sizeof(*strobe), 5, (voidptr(0)))
				saveg_read_strobe_t(strobe)
				strobe.thinker.function.acp1 = Actionf_p1(t_strobeflash)
				p_addthinker(&strobe.thinker)
			}
			.tc_glow /* case comp body kind=CallExpr is_enum=true */ {
				saveg_read_pad()
				glow = z_malloc(sizeof(*glow), 5, (voidptr(0)))
				saveg_read_glow_t(glow)
				glow.thinker.function.acp1 = Actionf_p1(t_glow)
				p_addthinker(&glow.thinker)
			}
			else {
				i_error(c'P_UnarchiveSpecials:Unknown tclass %i in savegame', tclass)
			}
		}
	}
}
