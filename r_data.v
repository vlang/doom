[translated]
module main

[typedef]
struct C.FILE {}

// vstart

fn index(&i8, int) &i8

fn index(&i8, int) &i8

fn ffs(int) int

[c: 'DEH_String']
fn deh_string(s &i8) &i8

type SDL_compile_time_assert_uint8 = [1]int
type SDL_compile_time_assert_sint8 = [1]int
type SDL_compile_time_assert_uint16 = [1]int
type SDL_compile_time_assert_sint16 = [1]int
type SDL_compile_time_assert_uint32 = [1]int
type SDL_compile_time_assert_sint32 = [1]int
type SDL_compile_time_assert_uint64 = [1]int
type SDL_compile_time_assert_sint64 = [1]int
type SDL_compile_time_assert_enum = [1]int

[c: 'I_ConsoleStdout']
fn i_consolestdout() bool

[c: 'I_Error']
[c2v_variadic]
fn i_error(error ...&i8)

[c: 'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

[c: 'Z_Free']
fn z_free(ptr voidptr)

[c: 'Z_ChangeTag2']
fn z_changetag2(ptr voidptr, tag int, file &i8, line int)

[weak]
__global (
	lumpinfo &&Lumpinfo_t
)

[c: 'W_CheckNumForName']
fn w_checknumforname(name &i8) Lumpindex_t

[c: 'W_GetNumForName']
fn w_getnumforname(name &i8) Lumpindex_t

[c: 'W_LumpLength']
fn w_lumplength(lump Lumpindex_t) int

[c: 'W_CacheLumpNum']
fn w_cachelumpnum(lump Lumpindex_t, tag int) voidptr

[c: 'W_CacheLumpName']
fn w_cachelumpname(name &i8, tag int) voidptr

[c: 'W_LumpNameHash']
fn w_lumpnamehash(s &i8) u32

[c: 'W_ReleaseLumpName']
fn w_releaselumpname(name &i8)

[c: 'M_StringCopy']
fn m_stringcopy(dest &i8, src &i8, dest_size usize) bool

const ( // empty enum
)

[weak]
__global (
	textureheight &int
)

[weak]
__global (
	spritewidth &int
)

[weak]
__global (
	spriteoffset &int
)

[weak]
__global (
	spritetopoffset &int
)

[weak]
__global (
	colormaps &Lighttable_t
)

[weak]
__global (
	firstflat int
)

[weak]
__global (
	flattranslation &int
)

[weak]
__global (
	texturetranslation &int
)

[weak]
__global (
	firstspritelump int
)

[weak]
__global (
	lastspritelump int
)

[weak]
__global (
	numspritelumps int
)

[weak]
__global (
	numsprites int
)

[weak]
__global (
	sprites &Spritedef_t
)

[weak]
__global (
	numsectors int
)

[weak]
__global (
	sectors &Sector_t
)

[weak]
__global (
	numsides int
)

[weak]
__global (
	sides &Side_t
)

[c: 'R_GetColumn']
fn r_getcolumn(tex int, col int) &u8

[c: 'R_InitData']
fn r_initdata()

[c: 'R_PrecacheLevel']
fn r_precachelevel()

[c: 'R_FlatNumForName']
fn r_flatnumforname(name &i8) int

[c: 'R_TextureNumForName']
fn r_texturenumforname(name &i8) int

[c: 'R_CheckTextureNumForName']
fn r_checktexturenumforname(name &i8) int

[c: 'R_Init']
fn r_init()

[c: 'R_DrawColumn']
fn r_drawcolumn()

[weak]
__global (
	thinkercap Thinker_t
)

[c: 'P_MobjThinker']
fn p_mobjthinker(mobj &Mobj_t)

[weak]
__global (
	skytexture int
)

struct Mappatch_t {
	originx  i16
	originy  i16
	patch    i16
	stepdir  i16
	colormap i16
}

struct Maptexture_t {
	name       [8]i8
	masked     int
	width      i16
	height     i16
	obsolete   int
	patchcount i16
	patches    [1]Mappatch_t
}

struct Texpatch_t {
	originx i16
	originy i16
	patch   int
}

type Texture_t = Texture_s

struct Texture_s {
	name       [8]i8
	width      i16
	height     i16
	index      int
	next       &Texture_t
	patchcount i16
	patches    [1]Texpatch_t
}

[weak]
__global (
	lastflat int
)

[weak]
__global (
	numflats int
)

[weak]
__global (
	firstpatch int
)

[weak]
__global (
	lastpatch int
)

[weak]
__global (
	numpatches int
)

[weak]
__global (
	numtextures int
)

[weak]
__global (
	textures &&Texture_t
)

[weak]
__global (
	textures_hashtable &&Texture_t
)

[weak]
__global (
	texturewidthmask &int
)

[weak]
__global (
	texturecompositesize &int
)

[weak]
__global (
	texturecolumnlump &&i16
)

[weak]
__global (
	texturecolumnofs &&u16
)

[weak]
__global (
	texturecomposite &&u8
)

[c: 'R_DrawColumnInCache']
fn r_drawcolumnincache(patch &Column_t, cache &u8, originy int, cacheheight int) {
	count := 0
	position := 0
	source := &u8(0)
	for patch.topdelta != 255 {
		source = &u8(patch) + 3
		count = patch.length
		position = originy + patch.topdelta
		if position < 0 {
			count += position
			position = 0
		}
		if position + count > cacheheight {
			count = cacheheight - position
		}
		if count > 0 {
			C.memcpy(cache + position, source, count)
		}
		patch = &Column_t((&u8(patch) + patch.length + 4))
	}
}

[c: 'R_GenerateComposite']
fn r_generatecomposite(texnum int) {
	block := &u8(0)
	texture := &Texture_t(0)
	patch := &Texpatch_t(0)
	realpatch := &Patch_t(0)
	x := 0
	x1 := 0
	x2 := 0
	i := 0
	patchcol := &Column_t(0)
	collump := &i16(0)
	colofs := &u16(0)
	texture = textures[texnum]
	block = z_malloc(texturecompositesize[texnum], 1, &texturecomposite[texnum])
	collump = texturecolumnlump[texnum]
	colofs = texturecolumnofs[texnum]
	patch = texture.patches
	for i = 0; i < texture.patchcount; i++ {
		realpatch = w_cachelumpnum(patch.patch, 8)
		x1 = patch.originx
		x2 = x1 + (i16((realpatch.width)))
		if x1 < 0 {
			x = 0
		} else { // 3
			x = x1
		}
		if x2 > texture.width {
			x2 = texture.width
		}
		for ; x < x2; x++ {
			if collump[x] >= 0 {
				continue
			}
			patchcol = &Column_t((&u8(realpatch) + (int((realpatch.columnofs[x - x1])))))
			r_drawcolumnincache(patchcol, block + colofs[x], patch.originy, texture.height)
		}
		patch++
	}
	z_changetag2(block, 8, c'./r_data.c', 290)
}

[c: 'R_GenerateLookup']
fn r_generatelookup(texnum int) {
	texture := &Texture_t(0)
	patchcount := &u8(0)
	patch := &Texpatch_t(0)
	realpatch := &Patch_t(0)
	x := 0
	x1 := 0
	x2 := 0
	i := 0
	collump := &i16(0)
	colofs := &u16(0)
	texture = textures[texnum]
	texturecomposite[texnum] = 0
	texturecompositesize[texnum] = 0
	collump = texturecolumnlump[texnum]
	colofs = texturecolumnofs[texnum]
	patchcount = &u8(z_malloc(texture.width, 1, &patchcount))
	C.memset(patchcount, 0, texture.width)
	patch = texture.patches
	for i = 0; i < texture.patchcount; i++ {
		realpatch = w_cachelumpnum(patch.patch, 8)
		x1 = patch.originx
		x2 = x1 + (i16((realpatch.width)))
		if x1 < 0 {
			x = 0
		} else { // 3
			x = x1
		}
		if x2 > texture.width {
			x2 = texture.width
		}
		for ; x < x2; x++ {
			patchcount[x]++
			collump[x] = patch.patch
			colofs[x] = (int((realpatch.columnofs[x - x1]))) + 3
		}
		patch++
	}
	for x = 0; x < texture.width; x++ {
		if !patchcount[x] {
			C.printf(c'R_GenerateLookup: column without a patch (%s)\n', texture.name)
			return
		}
		if patchcount[x] > 1 {
			collump[x] = -1
			colofs[x] = texturecompositesize[texnum]
			if texturecompositesize[texnum] > 65536 - texture.height {
				i_error(c'R_GenerateLookup: texture %i is >64k', texnum)
			}
			texturecompositesize[texnum] += texture.height
		}
	}
	z_free(patchcount)
}

[c: 'R_GetColumn']
fn r_getcolumn(tex int, col int) &u8 {
	lump := 0
	ofs := 0
	col &= texturewidthmask[tex]
	lump = texturecolumnlump[tex][col]
	ofs = texturecolumnofs[tex][col]
	if lump > 0 {
		return &u8(w_cachelumpnum(lump, 8)) + ofs
	}
	if !texturecomposite[tex] {
		r_generatecomposite(tex)
	}
	return texturecomposite[tex] + ofs
}

[c: 'GenerateTextureHashTable']
fn generatetexturehashtable() {
	rover := &&Texture_t(0)
	i := 0
	key := 0
	textures_hashtable = z_malloc(sizeof(&Texture_t) * numtextures, 1, 0)
	C.memset(textures_hashtable, 0, sizeof(&Texture_t) * numtextures)
	for i = 0; i < numtextures; i++ {
		textures[i].index = i
		key = w_lumpnamehash(textures[i].name) % numtextures
		rover = &textures_hashtable[key]
		for *rover != (voidptr(0)) {
			rover = &(*rover).next
		}
		textures[i].next = (voidptr(0))
		*rover = textures[i]
	}
}

[c: 'R_InitTextures']
fn r_inittextures() {
	mtexture := &Maptexture_t(0)
	texture := &Texture_t(0)
	mpatch := &Mappatch_t(0)
	patch := &Texpatch_t(0)
	i := 0
	j := 0
	maptex := &int(0)
	maptex2 := &int(0)
	maptex1 := &int(0)
	name := [9]i8{}
	names := &i8(0)
	name_p := &i8(0)
	patchlookup := &int(0)
	totalwidth := 0
	nummappatches := 0
	offset := 0
	maxoff := 0
	maxoff2 := 0
	numtextures1 := 0
	numtextures2 := 0
	directory := &int(0)
	temp1 := 0
	temp2 := 0
	temp3 := 0
	name[8] = 0
	names = w_cachelumpname(deh_string(c'PNAMES'), 1)
	nummappatches = (int((*(&int(names)))))
	name_p = names + 4
	patchlookup = z_malloc(nummappatches * sizeof(*patchlookup), 1, (voidptr(0)))
	for i = 0; i < nummappatches; i++ {
		m_stringcopy(name, name_p + i * 8, sizeof(name))
		patchlookup[i] = w_checknumforname(name)
	}
	w_releaselumpname(deh_string(c'PNAMES'))
	maptex = w_cachelumpname(deh_string(c'TEXTURE1'), 1)
	maptex1 = w_cachelumpname(deh_string(c'TEXTURE1'), 1)
	numtextures1 = (int((*maptex)))
	maxoff = w_lumplength(w_getnumforname(deh_string(c'TEXTURE1')))
	directory = maptex + 1
	if w_checknumforname(deh_string(c'TEXTURE2')) != -1 {
		maptex2 = w_cachelumpname(deh_string(c'TEXTURE2'), 1)
		numtextures2 = (int((*maptex2)))
		maxoff2 = w_lumplength(w_getnumforname(deh_string(c'TEXTURE2')))
	} else {
		maptex2 = (voidptr(0))
		numtextures2 = 0
		maxoff2 = 0
	}
	numtextures = numtextures1 + numtextures2
	textures = z_malloc(numtextures * sizeof(*textures), 1, 0)
	texturecolumnlump = z_malloc(numtextures * sizeof(*texturecolumnlump), 1, 0)
	texturecolumnofs = z_malloc(numtextures * sizeof(*texturecolumnofs), 1, 0)
	texturecomposite = z_malloc(numtextures * sizeof(*texturecomposite), 1, 0)
	texturecompositesize = z_malloc(numtextures * sizeof(*texturecompositesize), 1, 0)
	texturewidthmask = z_malloc(numtextures * sizeof(*texturewidthmask), 1, 0)
	textureheight = z_malloc(numtextures * sizeof(*textureheight), 1, 0)
	totalwidth = 0
	temp1 = w_getnumforname(deh_string(c'S_START'))
	temp2 = w_getnumforname(deh_string(c'S_END')) - 1
	temp3 = ((temp2 - temp1 + 63) / 64) + ((numtextures + 63) / 64)
	if i_consolestdout() {
		C.printf(c'[')
		for i = 0; i < temp3 + 9; i++ {
			C.printf(c' ')
		}
		C.printf(c']')
		for i = 0; i < temp3 + 10; i++ {
			C.printf(c'\b')
		}
	}
	for i = 0; i < numtextures; i++ {
		if !(i & 63) {
			C.printf(c'.')
		}
		if i == numtextures1 {
			maptex = maptex2
			maxoff = maxoff2
			directory = maptex + 1
		}
		offset = (int((*directory)))
		if offset > maxoff {
			i_error(c'R_InitTextures: bad texture directory')
		}
		mtexture = &Maptexture_t((&u8(maptex) + offset))
		texture = z_malloc(sizeof(Texture_t) +
			sizeof(Texpatch_t) * ((i16((mtexture.patchcount))) - 1), 1, 0)
		textures[i] = z_malloc(sizeof(Texture_t) +
			sizeof(Texpatch_t) * ((i16((mtexture.patchcount))) - 1), 1, 0)
		texture.width = (i16((mtexture.width)))
		texture.height = (i16((mtexture.height)))
		texture.patchcount = (i16((mtexture.patchcount)))
		C.memcpy(texture.name, mtexture.name, sizeof(texture.name))
		mpatch = &mtexture.patches[0]
		patch = &texture.patches[0]
		for j = 0; j < texture.patchcount; j++ {
			patch.originx = (i16((mpatch.originx)))
			patch.originy = (i16((mpatch.originy)))
			patch.patch = patchlookup[(i16((mpatch.patch)))]
			if patch.patch == -1 {
				i_error(c'R_InitTextures: Missing patch in texture %s', texture.name)
			}
			mpatch++
			patch++
		}
		texturecolumnlump[i] = z_malloc(texture.width * sizeof(**texturecolumnlump), 1,
			0)
		texturecolumnofs[i] = z_malloc(texture.width * sizeof(**texturecolumnofs), 1,
			0)
		j = 1
		for j * 2 <= texture.width {
			j <<= 1
		}
		texturewidthmask[i] = j - 1
		textureheight[i] = texture.height << 16
		totalwidth += texture.width
		directory++
	}
	z_free(patchlookup)
	w_releaselumpname(deh_string(c'TEXTURE1'))
	if maptex2 {
		w_releaselumpname(deh_string(c'TEXTURE2'))
	}
	for i = 0; i < numtextures; i++ {
		r_generatelookup(i)
	}
	texturetranslation = z_malloc((numtextures + 1) * sizeof(*texturetranslation), 1,
		0)
	for i = 0; i < numtextures; i++ {
		texturetranslation[i] = i
	}
	generatetexturehashtable()
}

[c: 'R_InitFlats']
fn r_initflats() {
	i := 0
	firstflat = w_getnumforname(deh_string(c'F_START')) + 1
	lastflat = w_getnumforname(deh_string(c'F_END')) - 1
	numflats = lastflat - firstflat + 1
	flattranslation = z_malloc((numflats + 1) * sizeof(*flattranslation), 1, 0)
	for i = 0; i < numflats; i++ {
		flattranslation[i] = i
	}
}

[c: 'R_InitSpriteLumps']
fn r_initspritelumps() {
	i := 0
	patch := &Patch_t(0)
	firstspritelump = w_getnumforname(deh_string(c'S_START')) + 1
	lastspritelump = w_getnumforname(deh_string(c'S_END')) - 1
	numspritelumps = lastspritelump - firstspritelump + 1
	spritewidth = z_malloc(numspritelumps * sizeof(*spritewidth), 1, 0)
	spriteoffset = z_malloc(numspritelumps * sizeof(*spriteoffset), 1, 0)
	spritetopoffset = z_malloc(numspritelumps * sizeof(*spritetopoffset), 1, 0)
	for i = 0; i < numspritelumps; i++ {
		if !(i & 63) {
			C.printf(c'.')
		}
		patch = w_cachelumpnum(firstspritelump + i, 8)
		spritewidth[i] = (i16((patch.width))) << 16
		spriteoffset[i] = (i16((patch.leftoffset))) << 16
		spritetopoffset[i] = (i16((patch.topoffset))) << 16
	}
}

[c: 'R_InitColormaps']
fn r_initcolormaps() {
	lump := 0
	lump = w_getnumforname(deh_string(c'COLORMAP'))
	colormaps = w_cachelumpnum(lump, 1)
}

[c: 'R_InitData']
fn r_initdata() {
	r_inittextures()
	C.printf(c'.')
	r_initflats()
	C.printf(c'.')
	r_initspritelumps()
	C.printf(c'.')
	r_initcolormaps()
}

[c: 'R_FlatNumForName']
fn r_flatnumforname(name &i8) int {
	i := 0
	namet := [9]i8{}
	i = w_checknumforname(name)
	if i == -1 {
		namet[8] = 0
		C.memcpy(namet, name, 8)
		i_error(c'R_FlatNumForName: %s not found', namet)
	}
	return i - firstflat
}

[c: 'R_CheckTextureNumForName']
fn r_checktexturenumforname(name &i8) int {
	texture := &Texture_t(0)
	key := 0
	if name[0] == `-` {
		return 0
	}
	key = w_lumpnamehash(name) % numtextures
	texture = textures_hashtable[key]
	for texture != (voidptr(0)) {
		if !C.strncasecmp(texture.name, name, 8) {
			return texture.index
		}
		texture = texture.next
	}
	return -1
}

[c: 'R_TextureNumForName']
fn r_texturenumforname(name &i8) int {
	i := 0
	i = r_checktexturenumforname(name)
	if i == -1 {
		i_error(c'R_TextureNumForName: %s not found', name)
	}
	return i
}

[weak]
__global (
	flatmemory int
)

[weak]
__global (
	texturememory int
)

[weak]
__global (
	spritememory int
)

[c: 'R_PrecacheLevel']
fn r_precachelevel() {
	flatpresent := &i8(0)
	texturepresent := &i8(0)
	spritepresent := &i8(0)
	i := 0
	j := 0
	k := 0
	lump := 0
	texture := &Texture_t(0)
	th := &Thinker_t(0)
	sf := &Spriteframe_t(0)
	if demoplayback {
		return
	}
	flatpresent = z_malloc(numflats, 1, (voidptr(0)))
	C.memset(flatpresent, 0, numflats)
	for i = 0; i < numsectors; i++ {
		flatpresent[sectors[i].floorpic] = 1
		flatpresent[sectors[i].ceilingpic] = 1
	}
	flatmemory = 0
	for i = 0; i < numflats; i++ {
		if flatpresent[i] {
			lump = firstflat + i
			flatmemory += lumpinfo[lump].size
			w_cachelumpnum(lump, 8)
		}
	}
	z_free(flatpresent)
	texturepresent = z_malloc(numtextures, 1, (voidptr(0)))
	C.memset(texturepresent, 0, numtextures)
	for i = 0; i < numsides; i++ {
		texturepresent[sides[i].toptexture] = 1
		texturepresent[sides[i].midtexture] = 1
		texturepresent[sides[i].bottomtexture] = 1
	}
	texturepresent[skytexture] = 1
	texturememory = 0
	for i = 0; i < numtextures; i++ {
		if !texturepresent[i] {
			continue
		}
		texture = textures[i]
		for j = 0; j < texture.patchcount; j++ {
			lump = texture.patches[j].patch
			texturememory += lumpinfo[lump].size
			w_cachelumpnum(lump, 8)
		}
	}
	z_free(texturepresent)
	spritepresent = z_malloc(numsprites, 1, (voidptr(0)))
	C.memset(spritepresent, 0, numsprites)
	for th = thinkercap.next; th != &thinkercap; th = th.next {
		if th.function.acp1 == Actionf_p1(p_mobjthinker) {
			spritepresent[(&Mobj_t(th)).sprite] = 1
		}
	}
	spritememory = 0
	for i = 0; i < numsprites; i++ {
		if !spritepresent[i] {
			continue
		}
		for j = 0; j < sprites[i].numframes; j++ {
			sf = &sprites[i].spriteframes[j]
			for k = 0; k < 8; k++ {
				lump = firstspritelump + sf.lump[k]
				spritememory += lumpinfo[lump].size
				w_cachelumpnum(lump, 8)
			}
		}
	}
	z_free(spritepresent)
}
