[translated]
module main

[typedef]
struct C.FILE {}

// vstart

type Double_t = f64

fn sin(f64) f64

fn sin(f64) f64

fn tan(f64) f64

fn tan(f64) f64

fn erf(f64) f64

fn erf(f64) f64

fn ceil(f64) f64

fn ceil(f64) f64

fn floor(f64) f64

fn floor(f64) f64

fn rintf(f32) f32

fn rintf(f32) f32

fn rint(f64) f64

fn rint(f64) f64

fn nan(&i8) f64

fn nan(&i8) f64

struct Float2 {
	__sinval f32
	__cosval f32
}

struct Double2 {
	__sinval f64
	__cosval f64
}

struct Int8_t {
	type_  int
	name   &i8
	arg1   f64
	arg2   f64
	retval f64
}

[c: 'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

[c: 'Z_Free']
fn z_free(ptr voidptr)

[c: 'Z_FreeTags']
fn z_freetags(lowtag int, hightag int)

[c: 'Z_FreeMemory']
fn z_freememory() int

fn index(&i8, int) &i8

fn index(&i8, int) &i8

fn ffs(int) int

[c: 'DEH_snprintf']
[c2v_variadic]
fn deh_snprintf(buffer &i8, len usize, fmt ...&i8)

[c: 'M_CheckParm']
fn m_checkparm(check &i8) int

[c: 'FixedDiv']
fn fixeddiv(a int, b int) int

const ( // empty enum
)

[c: 'M_ClearBox']
fn m_clearbox(box &int)

[c: 'M_AddToBox']
fn m_addtobox(box &int, x int, y int)

[c: 'G_DeathMatchSpawnPlayer']
fn g_deathmatchspawnplayer(playernum int)

[c: 'I_Error']
[c2v_variadic]
fn i_error(error ...&i8)

[c: 'I_GetMemoryValue']
fn i_getmemoryvalue(offset u32, value voidptr, size int) bool

[c: 'W_Read']
fn w_read(wad &Wad_file_t, offset u32, buffer voidptr, buffer_len usize) usize

[c: 'W_Reload']
fn w_reload()

[c: 'W_GetNumForName']
fn w_getnumforname(name &i8) Lumpindex_t

[c: 'W_LumpLength']
fn w_lumplength(lump Lumpindex_t) int

[c: 'W_ReadLump']
fn w_readlump(lump Lumpindex_t, dest voidptr)

[c: 'W_CacheLumpNum']
fn w_cachelumpnum(lump Lumpindex_t, tag int) voidptr

[c: 'W_ReleaseLumpNum']
fn w_releaselumpnum(lump Lumpindex_t)

const ( // empty enum
)

[c: 'R_PrecacheLevel']
fn r_precachelevel()

[c: 'R_FlatNumForName']
fn r_flatnumforname(name &i8) int

[c: 'R_TextureNumForName']
fn r_texturenumforname(name &i8) int

[c: 'R_Init']
fn r_init()

[c: 'R_InitSprites']
fn r_initsprites(namelist &&u8)

[c: 'P_InitThinkers']
fn p_initthinkers()

[c: 'P_InitPicAnims']
fn p_initpicanims()

[c: 'P_SpawnSpecials']
fn p_spawnspecials()

[c: 'P_InitSwitchList']
fn p_initswitchlist()

[c: 'S_Start']
fn s_start()

[weak]
__global (
	totalkills int
)

[weak]
__global (
	totalitems int
)

[weak]
__global (
	totalsecret int
)

[weak]
__global (
	deathmatchstarts [10]Mapthing_t
)

[weak]
__global (
	deathmatch_p &Mapthing_t
)

[weak]
__global (
	playerstarts [4]Mapthing_t
)

[weak]
__global (
	playerstartsingame [4]bool
)

[weak]
__global (
	wminfo Wbstartstruct_t
)

[weak]
__global (
	precache bool
)

[weak]
__global (
	bodyqueslot int
)

[c: 'P_SpawnMapThing']
fn p_spawnmapthing(mthing &Mapthing_t)

[weak]
__global (
	totallines int
)

[c: 'P_LoadVertexes']
fn p_loadvertexes(lump int) {
	data := &u8(0)
	i := 0
	ml := &Mapvertex_t(0)
	li := &Vertex_t(0)
	numvertexes = w_lumplength(lump) / sizeof(Mapvertex_t)
	vertexes = z_malloc(numvertexes * sizeof(Vertex_t), 5, 0)
	data = w_cachelumpnum(lump, 1)
	ml = &Mapvertex_t(data)
	li = vertexes
	for i = 0; i < numvertexes; i++ {
		li.x = (i16((ml.x))) << 16
		li.y = (i16((ml.y))) << 16
		li++
		ml++
	}
	w_releaselumpnum(lump)
}

[c: 'GetSectorAtNullAddress']
fn getsectoratnulladdress() &Sector_t {
	null_sector_is_initialized := false
	null_sector := Sector_t{}
	if !null_sector_is_initialized {
		C.memset(&null_sector, 0, sizeof(null_sector))
		i_getmemoryvalue(0, &null_sector.floorheight, 4)
		i_getmemoryvalue(4, &null_sector.ceilingheight, 4)
		null_sector_is_initialized = true
	}
	return &null_sector
}

[c: 'P_LoadSegs']
fn p_loadsegs(lump int) {
	data := &u8(0)
	i := 0
	ml := &Mapseg_t(0)
	li := &Seg_t(0)
	ldef := &Line_t(0)
	linedef := 0
	side := 0
	sidenum := 0
	numsegs = w_lumplength(lump) / sizeof(Mapseg_t)
	segs = z_malloc(numsegs * sizeof(Seg_t), 5, 0)
	C.memset(segs, 0, numsegs * sizeof(Seg_t))
	data = w_cachelumpnum(lump, 1)
	ml = &Mapseg_t(data)
	li = segs
	for i = 0; i < numsegs; i++ {
		li.v1 = &vertexes[(i16((ml.v1)))]
		li.v2 = &vertexes[(i16((ml.v2)))]
		li.angle = (i16((ml.angle))) << 16
		li.offset = (i16((ml.offset))) << 16
		linedef = (i16((ml.linedef)))
		ldef = &lines[linedef]
		li.linedef = ldef
		side = (i16((ml.side)))
		if u32(ldef.sidenum[side]) >= u32(numsides) {
			i_error(c'P_LoadSegs: linedef %d for seg %d references a non-existent sidedef %d',
				linedef, i, u32(ldef.sidenum[side]))
		}
		li.sidedef = &sides[ldef.sidenum[side]]
		li.frontsector = sides[ldef.sidenum[side]].sector
		if ldef.flags & 4 {
			sidenum = ldef.sidenum[side ^ 1]
			if sidenum < 0 || sidenum >= numsides {
				li.backsector = getsectoratnulladdress()
			} else {
				li.backsector = sides[sidenum].sector
			}
		} else {
			li.backsector = 0
		}
		li++
		ml++
	}
	w_releaselumpnum(lump)
}

[c: 'P_LoadSubsectors']
fn p_loadsubsectors(lump int) {
	data := &u8(0)
	i := 0
	ms := &Mapsubsector_t(0)
	ss := &Subsector_t(0)
	numsubsectors = w_lumplength(lump) / sizeof(Mapsubsector_t)
	subsectors = z_malloc(numsubsectors * sizeof(Subsector_t), 5, 0)
	data = w_cachelumpnum(lump, 1)
	ms = &Mapsubsector_t(data)
	C.memset(subsectors, 0, numsubsectors * sizeof(Subsector_t))
	ss = subsectors
	for i = 0; i < numsubsectors; i++ {
		ss.numlines = (i16((ms.numsegs)))
		ss.firstline = (i16((ms.firstseg)))
		ss++
		ms++
	}
	w_releaselumpnum(lump)
}

[c: 'P_LoadSectors']
fn p_loadsectors(lump int) {
	data := &u8(0)
	i := 0
	ms := &Mapsector_t(0)
	ss := &Sector_t(0)
	numsectors = w_lumplength(lump) / sizeof(Mapsector_t)
	sectors = z_malloc(numsectors * sizeof(Sector_t), 5, 0)
	C.memset(sectors, 0, numsectors * sizeof(Sector_t))
	data = w_cachelumpnum(lump, 1)
	ms = &Mapsector_t(data)
	ss = sectors
	for i = 0; i < numsectors; i++ {
		ss.floorheight = (i16((ms.floorheight))) << 16
		ss.ceilingheight = (i16((ms.ceilingheight))) << 16
		ss.floorpic = r_flatnumforname(ms.floorpic)
		ss.ceilingpic = r_flatnumforname(ms.ceilingpic)
		ss.lightlevel = (i16((ms.lightlevel)))
		ss.special = (i16((ms.special)))
		ss.tag = (i16((ms.tag)))
		ss.thinglist = (voidptr(0))
		ss++
		ms++
	}
	w_releaselumpnum(lump)
}

[c: 'P_LoadNodes']
fn p_loadnodes(lump int) {
	data := &u8(0)
	i := 0
	j := 0
	k := 0
	mn := &Mapnode_t(0)
	no := &Node_t(0)
	numnodes = w_lumplength(lump) / sizeof(Mapnode_t)
	nodes = z_malloc(numnodes * sizeof(Node_t), 5, 0)
	data = w_cachelumpnum(lump, 1)
	mn = &Mapnode_t(data)
	no = nodes
	for i = 0; i < numnodes; i++ {
		no.x = (i16((mn.x))) << 16
		no.y = (i16((mn.y))) << 16
		no.dx = (i16((mn.dx))) << 16
		no.dy = (i16((mn.dy))) << 16
		for j = 0; j < 2; j++ {
			no.children[j] = (i16((mn.children[j])))
			for k = 0; k < 4; k++ {
				no.bbox[j][k] = (i16((mn.bbox[j][k]))) << 16
			}
		}
		no++
		mn++
	}
	w_releaselumpnum(lump)
}

[c: 'P_LoadThings']
fn p_loadthings(lump int) {
	data := &u8(0)
	i := 0
	mt := &Mapthing_t(0)
	spawnthing := Mapthing_t{}
	numthings := 0
	spawn := false
	data = w_cachelumpnum(lump, 1)
	numthings = w_lumplength(lump) / sizeof(Mapthing_t)
	mt = &Mapthing_t(data)
	for i = 0; i < numthings; i++ {
		spawn = true
		if gamemode != GameMode_t.commercial {
			match (i16((mt.type_))) {
				68, 64, 88, 89, 69, 67, 71, 65, 66, 84 {
					spawn = false
				}
				else {}
			}
		}
		if spawn == false {
			break
		}
		spawnthing.x = (i16((mt.x)))
		spawnthing.y = (i16((mt.y)))
		spawnthing.angle = (i16((mt.angle)))
		spawnthing.type_ = (i16((mt.type_)))
		spawnthing.options = (i16((mt.options)))
		p_spawnmapthing(&spawnthing)
		mt++
	}
	if !deathmatch {
		for i = 0; i < 4; i++ {
			if playeringame[i] && !playerstartsingame[i] {
				i_error(c'P_LoadThings: Player %d start missing (vanilla crashes here)',
					i + 1)
			}
			playerstartsingame[i] = false
		}
	}
	w_releaselumpnum(lump)
}

[c: 'P_LoadLineDefs']
fn p_loadlinedefs(lump int) {
	data := &u8(0)
	i := 0
	mld := &Maplinedef_t(0)
	ld := &Line_t(0)
	v1 := &Vertex_t(0)
	v2 := &Vertex_t(0)
	numlines = w_lumplength(lump) / sizeof(Maplinedef_t)
	lines = z_malloc(numlines * sizeof(Line_t), 5, 0)
	C.memset(lines, 0, numlines * sizeof(Line_t))
	data = w_cachelumpnum(lump, 1)
	mld = &Maplinedef_t(data)
	ld = lines
	for i = 0; i < numlines; i++ {
		ld.flags = (i16((mld.flags)))
		ld.special = (i16((mld.special)))
		ld.tag = (i16((mld.tag)))
		v1 = &vertexes[(i16((mld.v1)))]
		ld.v1 = &vertexes[(i16((mld.v1)))]
		v2 = &vertexes[(i16((mld.v2)))]
		ld.v2 = &vertexes[(i16((mld.v2)))]
		ld.dx = v2.x - v1.x
		ld.dy = v2.y - v1.y
		if !ld.dx {
			ld.slopetype = Slopetype_t.st_vertical
		} else if !ld.dy {
			ld.slopetype = Slopetype_t.st_horizontal
		} else {
			if fixeddiv(ld.dy, ld.dx) > 0 {
				ld.slopetype = Slopetype_t.st_positive
			} else { // 3
				ld.slopetype = Slopetype_t.st_negative
			}
		}
		if v1.x < v2.x {
			ld.bbox[int(boxleft)] = v1.x
			ld.bbox[int(boxright)] = v2.x
		} else {
			ld.bbox[int(boxleft)] = v2.x
			ld.bbox[int(boxright)] = v1.x
		}
		if v1.y < v2.y {
			ld.bbox[int(boxbottom)] = v1.y
			ld.bbox[int(boxtop)] = v2.y
		} else {
			ld.bbox[int(boxbottom)] = v2.y
			ld.bbox[int(boxtop)] = v1.y
		}
		ld.sidenum[0] = (i16((mld.sidenum[0])))
		ld.sidenum[1] = (i16((mld.sidenum[1])))
		if ld.sidenum[0] != -1 {
			ld.frontsector = sides[ld.sidenum[0]].sector
		} else { // 3
			ld.frontsector = 0
		}
		if ld.sidenum[1] != -1 {
			ld.backsector = sides[ld.sidenum[1]].sector
		} else { // 3
			ld.backsector = 0
		}
		mld++
		ld++
	}
	w_releaselumpnum(lump)
}

[c: 'P_LoadSideDefs']
fn p_loadsidedefs(lump int) {
	data := &u8(0)
	i := 0
	msd := &Mapsidedef_t(0)
	sd := &Side_t(0)
	numsides = w_lumplength(lump) / sizeof(Mapsidedef_t)
	sides = z_malloc(numsides * sizeof(Side_t), 5, 0)
	C.memset(sides, 0, numsides * sizeof(Side_t))
	data = w_cachelumpnum(lump, 1)
	msd = &Mapsidedef_t(data)
	sd = sides
	for i = 0; i < numsides; i++ {
		sd.textureoffset = (i16((msd.textureoffset))) << 16
		sd.rowoffset = (i16((msd.rowoffset))) << 16
		sd.toptexture = r_texturenumforname(msd.toptexture)
		sd.bottomtexture = r_texturenumforname(msd.bottomtexture)
		sd.midtexture = r_texturenumforname(msd.midtexture)
		sd.sector = &sectors[(i16((msd.sector)))]
		msd++
		sd++
	}
	w_releaselumpnum(lump)
}

[c: 'P_LoadBlockMap']
fn p_loadblockmap(lump int) {
	i := 0
	count := 0
	lumplen := 0
	lumplen = w_lumplength(lump)
	count = lumplen / 2
	blockmaplump = z_malloc(lumplen, 5, (voidptr(0)))
	w_readlump(lump, blockmaplump)
	blockmap = blockmaplump + 4
	for i = 0; i < count; i++ {
		blockmaplump[i] = (i16((blockmaplump[i])))
	}
	bmaporgx = blockmaplump[0] << 16
	bmaporgy = blockmaplump[1] << 16
	bmapwidth = blockmaplump[2]
	bmapheight = blockmaplump[3]
	count = sizeof(*blocklinks) * bmapwidth * bmapheight
	blocklinks = z_malloc(count, 5, 0)
	C.memset(blocklinks, 0, count)
}

[c: 'P_GroupLines']
fn p_grouplines() {
	linebuffer := &&Line_t(0)
	i := 0
	j := 0
	li := &Line_t(0)
	sector := &Sector_t(0)
	ss := &Subsector_t(0)
	seg := &Seg_t(0)
	bbox := [4]int{}
	block := 0
	ss = subsectors
	for i = 0; i < numsubsectors; i++ {
		seg = &segs[ss.firstline]
		ss.sector = seg.sidedef.sector
		ss++
	}
	li = lines
	totallines = 0
	for i = 0; i < numlines; i++ {
		totallines++
		li.frontsector.linecount++
		if li.backsector && li.backsector != li.frontsector {
			li.backsector.linecount++
			totallines++
		}
		li++
	}
	linebuffer = z_malloc(totallines * sizeof(&Line_t), 5, 0)
	for i = 0; i < numsectors; i++ {
		sectors[i].lines = linebuffer
		linebuffer += sectors[i].linecount
		sectors[i].linecount = 0
	}
	for i = 0; i < numlines; i++ {
		li = &lines[i]
		if li.frontsector != (voidptr(0)) {
			sector = li.frontsector
			sector.lines[sector.linecount] = li
			sector.linecount++
		}
		if li.backsector != (voidptr(0)) && li.frontsector != li.backsector {
			sector = li.backsector
			sector.lines[sector.linecount] = li
			sector.linecount++
		}
	}
	sector = sectors
	for i = 0; i < numsectors; i++ {
		m_clearbox(bbox)
		for j = 0; j < sector.linecount; j++ {
			li = sector.lines[j]
			m_addtobox(bbox, li.v1.x, li.v1.y)
			m_addtobox(bbox, li.v2.x, li.v2.y)
		}
		sector.soundorg.x = (bbox[int(boxright)] + bbox[int(boxleft)]) / 2
		sector.soundorg.y = (bbox[int(boxtop)] + bbox[int(boxbottom)]) / 2
		block = (bbox[int(boxtop)] - bmaporgy + 32 * (1 << 16)) >> (16 + 7)
		block = if block >= bmapheight { bmapheight - 1 } else { block }
		sector.blockbox[int(boxtop)] = block
		block = (bbox[int(boxbottom)] - bmaporgy - 32 * (1 << 16)) >> (16 + 7)
		block = if block < 0 { 0 } else { block }
		sector.blockbox[int(boxbottom)] = block
		block = (bbox[int(boxright)] - bmaporgx + 32 * (1 << 16)) >> (16 + 7)
		block = if block >= bmapwidth { bmapwidth - 1 } else { block }
		sector.blockbox[int(boxright)] = block
		block = (bbox[int(boxleft)] - bmaporgx - 32 * (1 << 16)) >> (16 + 7)
		block = if block < 0 { 0 } else { block }
		sector.blockbox[int(boxleft)] = block
		sector++
	}
}

[c: 'PadRejectArray']
fn padrejectarray(array &u8, len u32) {
	i := u32(0)
	byte_num := u32(0)
	dest := &u8(0)
	padvalue := u32(0)
	rejectpad := [0, 0, 50, 1919505]!

	rejectpad[0] = ((totallines * 4 + 3) & ~3) + 24
	dest = array
	for i = 0; i < len && i < sizeof(rejectpad); i++ {
		byte_num = i % 4
		*dest = (rejectpad[i / 4] >> (byte_num * 8)) & 255
		dest++
	}
	if len > sizeof(rejectpad) {
		C.fprintf(C.__stderrp, c'PadRejectArray: REJECT lump too short to pad! (%i > %i)\n',
			len, int(sizeof(rejectpad)))
		if m_checkparm(c'-reject_pad_with_ff') {
			padvalue = 255
		} else {
			padvalue = 3840
		}
		C.memset(array + sizeof(rejectpad), padvalue, len - sizeof(rejectpad))
	}
}

[c: 'P_LoadReject']
fn p_loadreject(lumpnum int) {
	minlength := 0
	lumplen := 0
	minlength = (numsectors * numsectors + 7) / 8
	lumplen = w_lumplength(lumpnum)
	if lumplen >= minlength {
		rejectmatrix = w_cachelumpnum(lumpnum, 5)
	} else {
		rejectmatrix = z_malloc(minlength, 5, &rejectmatrix)
		w_readlump(lumpnum, rejectmatrix)
		padrejectarray(rejectmatrix + lumplen, minlength - lumplen)
	}
}

[c: 'P_SetupLevel']
fn p_setuplevel(episode int, map_ int, playermask int, skill Skill_t) {
	i := 0
	lumpname := [9]i8{}
	lumpnum := 0
	totalkills = 0
	totalitems = 0
	totalsecret = 0
	wminfo.maxfrags = 0
	wminfo.partime = 180
	for i = 0; i < 4; i++ {
		players[i].killcount = 0
		players[i].secretcount = 0
		players[i].itemcount = 0
	}
	players[consoleplayer].viewz = 1
	s_start()
	z_freetags(5, 7 - 1)
	p_initthinkers()
	w_reload()
	if gamemode == GameMode_t.commercial {
		if map_ < 10 {
			deh_snprintf(lumpname, 9, c'map0%i', map_)
		} else { // 3
			deh_snprintf(lumpname, 9, c'map%i', map_)
		}
	} else {
		lumpname[0] = `E`
		lumpname[1] = `0` + episode
		lumpname[2] = `M`
		lumpname[3] = `0` + map_
		lumpname[4] = 0
	}
	lumpnum = w_getnumforname(lumpname)
	maplumpinfo = lumpinfo[lumpnum]
	leveltime = 0
	p_loadblockmap(lumpnum + ml_blockmap)
	p_loadvertexes(lumpnum + ml_vertexes)
	p_loadsectors(lumpnum + ml_sectors)
	p_loadsidedefs(lumpnum + ml_sidedefs)
	p_loadlinedefs(lumpnum + ml_linedefs)
	p_loadsubsectors(lumpnum + ml_ssectors)
	p_loadnodes(lumpnum + ml_nodes)
	p_loadsegs(lumpnum + ml_segs)
	p_grouplines()
	p_loadreject(lumpnum + ml_reject)
	bodyqueslot = 0
	deathmatch_p = deathmatchstarts
	p_loadthings(lumpnum + ml_things)
	if deathmatch {
		for i = 0; i < 4; i++ {
			if playeringame[i] {
				players[i].mo = (voidptr(0))
				g_deathmatchspawnplayer(i)
			}
		}
	}
	iquehead = 0
	iquetail = 0
	p_spawnspecials()
	if precache {
		r_precachelevel()
	}
}

[c: 'P_Init']
fn p_init() {
	p_initswitchlist()
	p_initpicanims()
	r_initsprites(sprnames)
}
