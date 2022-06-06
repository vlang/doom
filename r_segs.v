[translated]
module main


[typedef]
struct C.FILE {}


// vstart

fn system( &i8) int

fn index( &i8,  int) &i8

fn index( &i8,  int) &i8

fn ffs( int) int


const ( // empty enum
)

[c:'FixedMul']
fn fixedmul(a int, b int) int

[c:'FixedDiv']
fn fixeddiv(a int, b int) int

[c:'R_GetColumn']
fn r_getcolumn(tex int, col int) &u8

[c:'R_PointToDist']
fn r_pointtodist(x int, y int) int

[c:'R_ScaleFromGlobalAngle']
fn r_scalefromglobalangle(visangle Angle_t) int

[c:'R_RenderMaskedSegRange']
fn r_rendermaskedsegrange(ds &Drawseg_t, x1 int, x2 int) 

[c:'R_CheckPlane']
fn r_checkplane(pl &Visplane_t, start int, stop int) &Visplane_t

[c:'R_DrawMaskedColumn']
fn r_drawmaskedcolumn(column &Column_t) 

[c:'R_DrawMasked']
fn r_drawmasked() 

[weak]__global ( maskedtexture bool 

)

[weak]__global ( toptexture int 

)

[weak]__global ( bottomtexture int 

)

[weak]__global ( midtexture int 

)

[weak]__global ( rw_centerangle Angle_t 

)

[weak]__global ( rw_offset int 

)

[weak]__global ( rw_scale int 

)

[weak]__global ( rw_scalestep int 

)

[weak]__global ( rw_midtexturemid int 

)

[weak]__global ( rw_toptexturemid int 

)

[weak]__global ( rw_bottomtexturemid int 

)

[weak]__global ( worldtop int 

)

[weak]__global ( worldbottom int 

)

[weak]__global ( worldhigh int 

)

[weak]__global ( worldlow int 

)

[weak]__global ( pixhigh int 

)

[weak]__global ( pixlow int 

)

[weak]__global ( pixhighstep int 

)

[weak]__global ( pixlowstep int 

)

[weak]__global ( topfrac int 

)

[weak]__global ( topstep int 

)

[weak]__global ( bottomfrac int 

)

[weak]__global ( bottomstep int 

)

[weak]__global ( maskedtexturecol &i16 

)

[c:'R_RenderMaskedSegRange']
fn r_rendermaskedsegrange(ds &Drawseg_t, x1 int, x2 int)  {
	index := u32(0)
	col := &Column_t(0)
	lightnum := 0
	texnum := 0
	curline = ds.curline
	frontsector = curline.frontsector
	backsector = curline.backsector
	texnum = texturetranslation [curline.sidedef.midtexture] 
	lightnum = (frontsector.lightlevel >> 4) + extralight
	if curline.v1.y == curline.v2.y {
	lightnum --
	}
	else if curline.v1.x == curline.v2.x {
	lightnum ++
	}
	if lightnum < 0 {
	walllights = scalelight [0] 
	}
	else if lightnum >= 16 {
	walllights = scalelight [16 - 1] 
	}
	else { // 3
	walllights = scalelight [lightnum] 
}
	maskedtexturecol = ds.maskedtexturecol
	rw_scalestep = ds.scalestep
	spryscale = ds.scale1 + (x1 - ds.x1) * rw_scalestep
	mfloorclip = ds.sprbottomclip
	mceilingclip = ds.sprtopclip
	if curline.linedef.flags & 16 {
		dc_texturemid = if frontsector.floorheight > backsector.floorheight{ frontsector.floorheight } else {backsector.floorheight}
		dc_texturemid = dc_texturemid + textureheight [texnum]  - viewz
	}
	else {
		dc_texturemid = if frontsector.ceilingheight < backsector.ceilingheight{ frontsector.ceilingheight } else {backsector.ceilingheight}
		dc_texturemid = dc_texturemid - viewz
	}
	dc_texturemid += curline.sidedef.rowoffset
	if fixedcolormap {
	dc_colormap = fixedcolormap
	}
	for dc_x = x1 ; dc_x <= x2 ; dc_x ++ {
		if maskedtexturecol [dc_x]  != 32767 {
			if !fixedcolormap {
				index = spryscale >> 12
				if index >= 48 {
				index = 48 - 1
				}
				dc_colormap = walllights [index] 
			}
			sprtopscreen = centeryfrac - fixedmul(dc_texturemid, spryscale)
			dc_iscale = 4294967295 / u32(spryscale)
			col = &Column_t((&u8(r_getcolumn(texnum, maskedtexturecol [dc_x] )) - 3))
			r_drawmaskedcolumn(col)
			maskedtexturecol [dc_x]  = 32767
		}
		spryscale += rw_scalestep
	}
}

[c:'R_RenderSegLoop']
fn r_rendersegloop()  {
	angle := u32(0)
	index := u32(0)
	yl := 0
	yh := 0
	mid := 0
	texturecolumn := 0
	top := 0
	bottom := 0
	for  ; rw_x < rw_stopx ; rw_x ++ {
		yl = (topfrac + (1 << 12) - 1) >> 12
		if yl < ceilingclip [rw_x]  + 1 {
		yl = ceilingclip [rw_x]  + 1
		}
		if markceiling {
			top = ceilingclip [rw_x]  + 1
			bottom = yl - 1
			if bottom >= floorclip [rw_x]  {
			bottom = floorclip [rw_x]  - 1
			}
			if top <= bottom {
				ceilingplane.top [rw_x]  = top
				ceilingplane.bottom [rw_x]  = bottom
			}
		}
		yh = bottomfrac >> 12
		if yh >= floorclip [rw_x]  {
		yh = floorclip [rw_x]  - 1
		}
		if markfloor {
			top = yh + 1
			bottom = floorclip [rw_x]  - 1
			if top <= ceilingclip [rw_x]  {
			top = ceilingclip [rw_x]  + 1
			}
			if top <= bottom {
				floorplane.top [rw_x]  = top
				floorplane.bottom [rw_x]  = bottom
			}
		}
		if segtextured {
			angle = (rw_centerangle + xtoviewangle [rw_x] ) >> 19
			texturecolumn = rw_offset - fixedmul(finetangent [angle] , rw_distance)
			texturecolumn >>= 16
			index = rw_scale >> 12
			if index >= 48 {
			index = 48 - 1
			}
			dc_colormap = walllights [index] 
			dc_x = rw_x
			dc_iscale = 4294967295 / u32(rw_scale)
		}
		else {
			texturecolumn = 0
		}
		if midtexture {
			dc_yl = yl
			dc_yh = yh
			dc_texturemid = rw_midtexturemid
			dc_source = r_getcolumn(midtexture, texturecolumn)
			colfunc()
			ceilingclip [rw_x]  = viewheight
			floorclip [rw_x]  = -1
		}
		else {
			if toptexture {
				mid = pixhigh >> 12
				pixhigh += pixhighstep
				if mid >= floorclip [rw_x]  {
				mid = floorclip [rw_x]  - 1
				}
				if mid >= yl {
					dc_yl = yl
					dc_yh = mid
					dc_texturemid = rw_toptexturemid
					dc_source = r_getcolumn(toptexture, texturecolumn)
					colfunc()
					ceilingclip [rw_x]  = mid
				}
				else { // 3
				ceilingclip [rw_x]  = yl - 1
}
			}
			else {
				if markceiling {
				ceilingclip [rw_x]  = yl - 1
				}
			}
			if bottomtexture {
				mid = (pixlow + (1 << 12) - 1) >> 12
				pixlow += pixlowstep
				if mid <= ceilingclip [rw_x]  {
				mid = ceilingclip [rw_x]  + 1
				}
				if mid <= yh {
					dc_yl = mid
					dc_yh = yh
					dc_texturemid = rw_bottomtexturemid
					dc_source = r_getcolumn(bottomtexture, texturecolumn)
					colfunc()
					floorclip [rw_x]  = mid
				}
				else { // 3
				floorclip [rw_x]  = yh + 1
}
			}
			else {
				if markfloor {
				floorclip [rw_x]  = yh + 1
				}
			}
			if maskedtexture {
				maskedtexturecol [rw_x]  = texturecolumn
			}
		}
		rw_scale += rw_scalestep
		topfrac += topstep
		bottomfrac += bottomstep
	}
}

[c:'R_StoreWallRange']
fn r_storewallrange(start int, stop int)  {
	hyp := 0
	sineval := 0
	distangle := u32(0)
	offsetangle := u32(0)
	
	vtop := 0
	lightnum := 0
	if start >= viewwidth || start > stop {
		C.printf(c'Bad R_RenderWallRange: %d to %d | viewwidth: %d\n', start, stop, viewwidth)
		return 
	}
	sidedef = curline.sidedef
	linedef = curline.linedef
	linedef.flags |= 256
	rw_normalangle = curline.angle + 1073741824
	offsetangle = C.abs(int(rw_normalangle) - int(rw_angle1))
	if offsetangle > 1073741824 {
	offsetangle = 1073741824
	}
	distangle = 1073741824 - offsetangle
	hyp = r_pointtodist(curline.v1.x, curline.v1.y)
	sineval = finesine [distangle >> 19] 
	rw_distance = fixedmul(hyp, sineval)
	ds_p.x1 = start
	rw_x = start
	ds_p.x2 = stop
	ds_p.curline = curline
	rw_stopx = stop + 1
	ds_p.scale1 = r_scalefromglobalangle(viewangle + xtoviewangle [start] )
	rw_scale = r_scalefromglobalangle(viewangle + xtoviewangle [start] )
	if stop > start {
		ds_p.scale2 = r_scalefromglobalangle(viewangle + xtoviewangle [stop] )
		ds_p.scalestep = (ds_p.scale2 - rw_scale) / (stop - start)
		rw_scalestep = (ds_p.scale2 - rw_scale) / (stop - start)
	}
	else {
		ds_p.scale2 = ds_p.scale1
	}
	worldtop = frontsector.ceilingheight - viewz
	worldbottom = frontsector.floorheight - viewz
	midtexture = 0
	toptexture = 0
	bottomtexture = 0
	maskedtexture = 0
	ds_p.maskedtexturecol = (voidptr(0))
	if !backsector {
		midtexture = texturetranslation [sidedef.midtexture] 
		markfloor = true
		markceiling = true
		if linedef.flags & 16 {
			vtop = frontsector.floorheight + textureheight [sidedef.midtexture] 
			rw_midtexturemid = vtop - viewz
		}
		else {
			rw_midtexturemid = worldtop
		}
		rw_midtexturemid += sidedef.rowoffset
		ds_p.silhouette = 3
		ds_p.sprtopclip = screenheightarray
		ds_p.sprbottomclip = negonearray
		ds_p.bsilheight = 2147483647
		ds_p.tsilheight = (-2147483647 - 1)
	}
	else {
		ds_p.sprtopclip = (voidptr(0))
		ds_p.sprbottomclip = (voidptr(0))
		ds_p.silhouette = 0
		if frontsector.floorheight > backsector.floorheight {
			ds_p.silhouette = 1
			ds_p.bsilheight = frontsector.floorheight
		}
		else if backsector.floorheight > viewz {
			ds_p.silhouette = 1
			ds_p.bsilheight = 2147483647
		}
		if frontsector.ceilingheight < backsector.ceilingheight {
			ds_p.silhouette |= 2
			ds_p.tsilheight = frontsector.ceilingheight
		}
		else if backsector.ceilingheight < viewz {
			ds_p.silhouette |= 2
			ds_p.tsilheight = (-2147483647 - 1)
		}
		if backsector.ceilingheight <= frontsector.floorheight {
			ds_p.sprbottomclip = negonearray
			ds_p.bsilheight = 2147483647
			ds_p.silhouette |= 1
		}
		if backsector.floorheight >= frontsector.ceilingheight {
			ds_p.sprtopclip = screenheightarray
			ds_p.tsilheight = (-2147483647 - 1)
			ds_p.silhouette |= 2
		}
		worldhigh = backsector.ceilingheight - viewz
		worldlow = backsector.floorheight - viewz
		if frontsector.ceilingpic == skyflatnum && backsector.ceilingpic == skyflatnum {
			worldtop = worldhigh
		}
		if worldlow != worldbottom || backsector.floorpic != frontsector.floorpic || backsector.lightlevel != frontsector.lightlevel {
			markfloor = true
		}
		else {
			markfloor = false
		}
		if worldhigh != worldtop || backsector.ceilingpic != frontsector.ceilingpic || backsector.lightlevel != frontsector.lightlevel {
			markceiling = true
		}
		else {
			markceiling = false
		}
		if backsector.ceilingheight <= frontsector.floorheight || backsector.floorheight >= frontsector.ceilingheight {
			markceiling = true
			markfloor = true
		}
		if worldhigh < worldtop {
			toptexture = texturetranslation [sidedef.toptexture] 
			if linedef.flags & 8 {
				rw_toptexturemid = worldtop
			}
			else {
				vtop = backsector.ceilingheight + textureheight [sidedef.toptexture] 
				rw_toptexturemid = vtop - viewz
			}
		}
		if worldlow > worldbottom {
			bottomtexture = texturetranslation [sidedef.bottomtexture] 
			if linedef.flags & 16 {
				rw_bottomtexturemid = worldtop
			}
			else { // 3
			rw_bottomtexturemid = worldlow
}
		}
		rw_toptexturemid += sidedef.rowoffset
		rw_bottomtexturemid += sidedef.rowoffset
		if sidedef.midtexture {
			maskedtexture = true
			ds_p.maskedtexturecol = lastopening - rw_x
			maskedtexturecol = lastopening - rw_x
			lastopening += rw_stopx - rw_x
		}
	}
	segtextured = midtexture | toptexture | bottomtexture | maskedtexture
	if segtextured {
		offsetangle = rw_normalangle - rw_angle1
		if offsetangle > 2147483648 {
		offsetangle = -offsetangle
		}
		if offsetangle > 1073741824 {
		offsetangle = 1073741824
		}
		sineval = finesine [offsetangle >> 19] 
		rw_offset = fixedmul(hyp, sineval)
		if rw_normalangle - rw_angle1 < 2147483648 {
		rw_offset = -rw_offset
		}
		rw_offset += sidedef.textureoffset + curline.offset
		rw_centerangle = 1073741824 + viewangle - rw_normalangle
		if !fixedcolormap {
			lightnum = (frontsector.lightlevel >> 4) + extralight
			if curline.v1.y == curline.v2.y {
			lightnum --
			}
			else if curline.v1.x == curline.v2.x {
			lightnum ++
			}
			if lightnum < 0 {
			walllights = scalelight [0] 
			}
			else if lightnum >= 16 {
			walllights = scalelight [16 - 1] 
			}
			else { // 3
			walllights = scalelight [lightnum] 
}
		}
	}
	if frontsector.floorheight >= viewz {
		markfloor = false
	}
	if frontsector.ceilingheight <= viewz && frontsector.ceilingpic != skyflatnum {
		markceiling = false
	}
	worldtop >>= 4
	worldbottom >>= 4
	topstep = -fixedmul(rw_scalestep, worldtop)
	topfrac = (centeryfrac >> 4) - fixedmul(worldtop, rw_scale)
	bottomstep = -fixedmul(rw_scalestep, worldbottom)
	bottomfrac = (centeryfrac >> 4) - fixedmul(worldbottom, rw_scale)
	if backsector {
		worldhigh >>= 4
		worldlow >>= 4
		if worldhigh < worldtop {
			pixhigh = (centeryfrac >> 4) - fixedmul(worldhigh, rw_scale)
			pixhighstep = -fixedmul(rw_scalestep, worldhigh)
		}
		if worldlow > worldbottom {
			pixlow = (centeryfrac >> 4) - fixedmul(worldlow, rw_scale)
			pixlowstep = -fixedmul(rw_scalestep, worldlow)
		}
	}
	if markceiling {
	ceilingplane = r_checkplane(ceilingplane, rw_x, rw_stopx - 1)
	}
	if markfloor {
	floorplane = r_checkplane(floorplane, rw_x, rw_stopx - 1)
	}
	r_rendersegloop()
	if ((ds_p.silhouette & 2) || maskedtexture) && !ds_p.sprtopclip {
		C.memcpy(lastopening, ceilingclip + start, sizeof(*lastopening) * (rw_stopx - start))
		ds_p.sprtopclip = lastopening - start
		lastopening += rw_stopx - start
	}
	if ((ds_p.silhouette & 1) || maskedtexture) && !ds_p.sprbottomclip {
		C.memcpy(lastopening, floorclip + start, sizeof(*lastopening) * (rw_stopx - start))
		ds_p.sprbottomclip = lastopening - start
		lastopening += rw_stopx - start
	}
	if maskedtexture && !(ds_p.silhouette & 2) {
		ds_p.silhouette |= 2
		ds_p.tsilheight = (-2147483647 - 1)
	}
	if maskedtexture && !(ds_p.silhouette & 1) {
		ds_p.silhouette |= 1
		ds_p.bsilheight = 2147483647
	}
	ds_p ++
}

