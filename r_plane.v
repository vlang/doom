[translated]
module main


[typedef]
struct C.FILE {}


// vstart

fn system( &i8) int

fn index( &i8,  int) &i8

fn index( &i8,  int) &i8

[c2v_variadic]
[c:'I_Error']
fn i_error(error &i8) 

[c:'W_CacheLumpNum']
fn w_cachelumpnum(lump Lumpindex_t, tag int) voidptr

[c:'W_ReleaseLumpNum']
fn w_releaselumpnum(lump Lumpindex_t) 


const ( // empty enum
)

[c:'FixedMul']
fn fixedmul(a int, b int) int

[c:'FixedDiv']
fn fixeddiv(a int, b int) int

[c:'R_GetColumn']
fn r_getcolumn(tex int, col int) &u8

[c:'R_Init']
fn r_init() 

[c:'R_InitPlanes']
fn r_initplanes() 

[c:'R_ClearPlanes']
fn r_clearplanes() 

[c:'R_MapPlane']
fn r_mapplane(y int, x1 int, x2 int) 

[c:'R_MakeSpans']
fn r_makespans(x int, t1 int, b1 int, t2 int, b2 int) 

[c:'R_DrawPlanes']
fn r_drawplanes() 

[c:'R_FindPlane']
fn r_findplane(height int, picnum int, lightlevel int) &Visplane_t

[c:'R_CheckPlane']
fn r_checkplane(pl &Visplane_t, start int, stop int) &Visplane_t

[weak]__global ( skytexturemid int 

)

[weak]__global ( ceilingfunc Planefunction_t 

)

[weak]__global ( visplanes [128]Visplane_t 

)

[weak]__global ( lastvisplane &Visplane_t 

)

[weak]__global ( openings [20480]i16 

)

[weak]__global ( spanstart [200]int 

)

[weak]__global ( spanstop [200]int 

)

[weak]__global ( planezlight &&Lighttable_t 

)

[weak]__global ( planeheight int 

)

[weak]__global ( basexscale int 

)

[weak]__global ( baseyscale int 

)

[weak]__global ( cachedheight [200]int 

)

[weak]__global ( cacheddistance [200]int 

)

[weak]__global ( cachedxstep [200]int 

)

[weak]__global ( cachedystep [200]int 

)

[c:'R_InitPlanes']
fn r_initplanes()  {
}

[c:'R_MapPlane']
fn r_mapplane(y int, x1 int, x2 int)  {
	angle := u32(0)
	distance := 0
	length := 0
	index := u32(0)
	if x2 < x1 || x1 < 0 || x2 >= viewwidth || y > viewheight {
		i_error(c'R_MapPlane: %i, %i at %i', x1, x2, y)
	}
	if planeheight != cachedheight [y]  {
		cachedheight [y]  = planeheight
		distance = fixedmul(planeheight, yslope [y] )
		cacheddistance [y]  = fixedmul(planeheight, yslope [y] )
		ds_xstep = fixedmul(distance, basexscale)
		cachedxstep [y]  = fixedmul(distance, basexscale)
		ds_ystep = fixedmul(distance, baseyscale)
		cachedystep [y]  = fixedmul(distance, baseyscale)
	}
	else {
		distance = cacheddistance [y] 
		ds_xstep = cachedxstep [y] 
		ds_ystep = cachedystep [y] 
	}
	length = fixedmul(distance, distscale [x1] )
	angle = (viewangle + xtoviewangle [x1] ) >> 19
	ds_xfrac = viewx + fixedmul(finecosine [angle] , length)
	ds_yfrac = -viewy - fixedmul(finesine [angle] , length)
	if fixedcolormap {
	ds_colormap = fixedcolormap
	}
	else {
		index = distance >> 20
		if index >= 128 {
		index = 128 - 1
		}
		ds_colormap = planezlight [index] 
	}
	ds_y = y
	ds_x1 = x1
	ds_x2 = x2
	spanfunc()
}

[c:'R_ClearPlanes']
fn r_clearplanes()  {
	i := 0
	angle := u32(0)
	for i = 0 ; i < viewwidth ; i ++ {
		floorclip [i]  = viewheight
		ceilingclip [i]  = -1
	}
	lastvisplane = visplanes
	lastopening = openings
	C.memset(cachedheight, 0, sizeof(cachedheight))
	angle = (viewangle - 1073741824) >> 19
	basexscale = fixeddiv(finecosine [angle] , centerxfrac)
	baseyscale = -fixeddiv(finesine [angle] , centerxfrac)
}

[c:'R_FindPlane']
fn r_findplane(height int, picnum int, lightlevel int) &Visplane_t {
	check := &Visplane_t(0)
	if picnum == skyflatnum {
		height = 0
		lightlevel = 0
	}
	for check = visplanes ; check < lastvisplane ; check ++ {
		if height == check.height && picnum == check.picnum && lightlevel == check.lightlevel {
			break
			
		}
	}
	if check < lastvisplane {
	return check
	}
	if lastvisplane - visplanes == 128 {
	i_error(c'R_FindPlane: no more visplanes')
	}
	lastvisplane ++
	check.height = height
	check.picnum = picnum
	check.lightlevel = lightlevel
	check.minx = 320
	check.maxx = -1
	C.memset(check.top, 255, sizeof(check.top))
	return check
}

[c:'R_CheckPlane']
fn r_checkplane(pl &Visplane_t, start int, stop int) &Visplane_t {
	intrl := 0
	intrh := 0
	unionl := 0
	unionh := 0
	x := 0
	if start < pl.minx {
		intrl = pl.minx
		unionl = start
	}
	else {
		unionl = pl.minx
		intrl = start
	}
	if stop > pl.maxx {
		intrh = pl.maxx
		unionh = stop
	}
	else {
		unionh = pl.maxx
		intrh = stop
	}
	for x = intrl ; x <= intrh ; x ++ {
	if pl.top [x]  != 255 {
	break
	
	}
	}
	if x > intrh {
		pl.minx = unionl
		pl.maxx = unionh
		return pl
	}
	lastvisplane.height = pl.height
	lastvisplane.picnum = pl.picnum
	lastvisplane.lightlevel = pl.lightlevel
	if lastvisplane - visplanes == 128 {
	i_error(c'R_CheckPlane: no more visplanes')
	}
	pl = lastvisplane ++
	pl.minx = start
	pl.maxx = stop
	C.memset(pl.top, 255, sizeof(pl.top))
	return pl
}

[c:'R_MakeSpans']
fn r_makespans(x int, t1 int, b1 int, t2 int, b2 int)  {
	for t1 < t2 && t1 <= b1 {
		r_mapplane(t1, spanstart [t1] , x - 1)
		t1 ++
	}
	for b1 > b2 && b1 >= t1 {
		r_mapplane(b1, spanstart [b1] , x - 1)
		b1 --
	}
	for t2 < t1 && t2 <= b2 {
		spanstart [t2]  = x
		t2 ++
	}
	for b2 > b1 && b2 >= t2 {
		spanstart [b2]  = x
		b2 --
	}
}

[c:'R_DrawPlanes']
fn r_drawplanes()  {
	pl := &Visplane_t(0)
	light := 0
	x := 0
	stop := 0
	angle := 0
	lumpnum := 0
	if ds_p - drawsegs > 256 {
	i_error(c'R_DrawPlanes: drawsegs overflow (%li)', ds_p - drawsegs)
	}
	if lastvisplane - visplanes > 128 {
	i_error(c'R_DrawPlanes: visplane overflow (%li)', lastvisplane - visplanes)
	}
	if lastopening - openings > 320 * 64 {
	i_error(c'R_DrawPlanes: opening overflow (%li)', lastopening - openings)
	}
	for pl = visplanes ; pl < lastvisplane ; pl ++ {
		if pl.minx > pl.maxx {
		continue
		
		}
		if pl.picnum == skyflatnum {
			dc_iscale = pspriteiscale >> detailshift
			dc_colormap = colormaps
			dc_texturemid = skytexturemid
			for x = pl.minx ; x <= pl.maxx ; x ++ {
				dc_yl = pl.top [x] 
				dc_yh = pl.bottom [x] 
				if dc_yl <= dc_yh {
					angle = (viewangle + xtoviewangle [x] ) >> 22
					dc_x = x
					dc_source = r_getcolumn(skytexture, angle)
					colfunc()
				}
			}
			continue
			
		}
		lumpnum = firstflat + flattranslation [pl.picnum] 
		ds_source = w_cachelumpnum(lumpnum, 1)
		planeheight = C.abs(pl.height - viewz)
		light = (pl.lightlevel >> 4) + extralight
		if light >= 16 {
		light = 16 - 1
		}
		if light < 0 {
		light = 0
		}
		planezlight = zlight [light] 
		pl.top [pl.maxx + 1]  = 255
		pl.top [pl.minx - 1]  = 255
		stop = pl.maxx + 1
		for x = pl.minx ; x <= stop ; x ++ {
			r_makespans(x, pl.top [x - 1] , pl.bottom [x - 1] , pl.top [x] , pl.bottom [x] )
		}
		w_releaselumpnum(lumpnum)
	}
}

