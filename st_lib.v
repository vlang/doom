[translated]
module main


[typedef]
struct C.FILE {}


// vstart

fn ffs( int) int

[c:'DEH_String']
fn deh_string(s &i8) &i8

[c:'V_CopyRect']
fn v_copyrect(srcx int, srcy int, source &Pixel_t, width int, height int, destx int, desty int) 

[c:'V_DrawPatch']
fn v_drawpatch(x int, y int, patch &Patch_t) 

[c2v_variadic]
[c:'I_Error']
fn i_error(error &i8) 

[c:'W_CheckNumForName']
fn w_checknumforname(name &i8) Lumpindex_t

[c:'W_CacheLumpName']
fn w_cachelumpname(name &i8, tag int) voidptr


const ( // empty enum
)

[c:'STlib_init']
fn stlib_init() 

[c:'STlib_initNum']
fn stlib_initnum(n &St_number_t, x int, y int, pl &&Patch_t, num &int, on &bool, width int) 

[c:'STlib_updateNum']
fn stlib_updatenum(n &St_number_t, refresh bool) 

[c:'STlib_initPercent']
fn stlib_initpercent(p &St_percent_t, x int, y int, pl &&Patch_t, num &int, on &bool, percent &Patch_t) 

[c:'STlib_updatePercent']
fn stlib_updatepercent(per &St_percent_t, refresh int) 

[c:'STlib_initMultIcon']
fn stlib_initmulticon(mi &St_multicon_t, x int, y int, il &&Patch_t, inum &int, on &bool) 

[c:'STlib_updateMultIcon']
fn stlib_updatemulticon(mi &St_multicon_t, refresh bool) 

[c:'STlib_initBinIcon']
fn stlib_initbinicon(b &St_binicon_t, x int, y int, i &Patch_t, val &bool, on &bool) 

[c:'STlib_updateBinIcon']
fn stlib_updatebinicon(bi &St_binicon_t, refresh bool) 

[weak]__global ( sttminus &Patch_t 

)

[c:'STlib_init']
fn stlib_init()  {
	if w_checknumforname(deh_string(c'STTMINUS')) >= 0 {
	sttminus = &Patch_t(w_cachelumpname(deh_string(c'STTMINUS'), 1))
	}
	else { // 3
	sttminus = (voidptr(0))
}
}

[c:'STlib_initNum']
fn stlib_initnum(n &St_number_t, x int, y int, pl &&Patch_t, num &int, on &bool, width int)  {
	n.x = x
	n.y = y
	n.oldnum = 0
	n.width = width
	n.num = num
	n.on = on
	n.p = pl
}

[c:'STlib_drawNum']
fn stlib_drawnum(n &St_number_t, refresh bool)  {
	numdigits := n.width
	num := *n.num
	w := (i16((n.p [0] .width)))
	h := (i16((n.p [0] .height)))
	x := n.x
	neg := 0
	n.oldnum = *n.num
	neg = num < 0
	if neg {
		if numdigits == 2 && num < -9 {
		num = -9
		}
		else if numdigits == 3 && num < -99 {
		num = -99
		}
		num = -num
	}
	x = n.x - numdigits * w
	if n.y - (200 - 32) < 0 {
	i_error(c'drawNum: n->y - ST_Y < 0')
	}
	v_copyrect(x, n.y - (200 - 32), st_backing_screen, w * numdigits, h, x, n.y)
	if num == 1994 {
	return 
	}
	x = n.x
	if !num {
	v_drawpatch(x - w, n.y, n.p [0] )
	}
	for num && numdigits -- {
		x -= w
		v_drawpatch(x, n.y, n.p [num % 10] )
		num /= 10
	}
	if neg && sttminus {
	v_drawpatch(x - 8, n.y, sttminus)
	}
}

[c:'STlib_updateNum']
fn stlib_updatenum(n &St_number_t, refresh bool)  {
	if *n.on {
	stlib_drawnum(n, refresh)
	}
}

[c:'STlib_initPercent']
fn stlib_initpercent(p &St_percent_t, x int, y int, pl &&Patch_t, num &int, on &bool, percent &Patch_t)  {
	stlib_initnum(&p.n, x, y, pl, num, on, 3)
	p.p = percent
}

[c:'STlib_updatePercent']
fn stlib_updatepercent(per &St_percent_t, refresh int)  {
	if refresh && *per.n.on {
	v_drawpatch(per.n.x, per.n.y, per.p)
	}
	stlib_updatenum(&per.n, refresh)
}

[c:'STlib_initMultIcon']
fn stlib_initmulticon(i &St_multicon_t, x int, y int, il &&Patch_t, inum &int, on &bool)  {
	i.x = x
	i.y = y
	i.oldinum = -1
	i.inum = inum
	i.on = on
	i.p = il
}

[c:'STlib_updateMultIcon']
fn stlib_updatemulticon(mi &St_multicon_t, refresh bool)  {
	w := 0
	h := 0
	x := 0
	y := 0
	if *mi.on && (mi.oldinum != *mi.inum || refresh) && (*mi.inum != -1) {
		if mi.oldinum != -1 {
			x = mi.x - (i16((mi.p [mi.oldinum] .leftoffset)))
			y = mi.y - (i16((mi.p [mi.oldinum] .topoffset)))
			w = (i16((mi.p [mi.oldinum] .width)))
			h = (i16((mi.p [mi.oldinum] .height)))
			if y - (200 - 32) < 0 {
			i_error(c'updateMultIcon: y - ST_Y < 0')
			}
			v_copyrect(x, y - (200 - 32), st_backing_screen, w, h, x, y)
		}
		v_drawpatch(mi.x, mi.y, mi.p [*mi.inum] )
		mi.oldinum = *mi.inum
	}
}

[c:'STlib_initBinIcon']
fn stlib_initbinicon(b &St_binicon_t, x int, y int, i &Patch_t, val &bool, on &bool)  {
	b.x = x
	b.y = y
	b.oldval = false
	b.val = val
	b.on = on
	b.p = i
}

[c:'STlib_updateBinIcon']
fn stlib_updatebinicon(bi &St_binicon_t, refresh bool)  {
	x := 0
	y := 0
	w := 0
	h := 0
	if *bi.on && (bi.oldval != *bi.val || refresh) {
		x = bi.x - (i16((bi.p.leftoffset)))
		y = bi.y - (i16((bi.p.topoffset)))
		w = (i16((bi.p.width)))
		h = (i16((bi.p.height)))
		if y - (200 - 32) < 0 {
		i_error(c'updateBinIcon: y - ST_Y < 0')
		}
		if *bi.val {
		v_drawpatch(bi.x, bi.y, bi.p)
		}
		else { // 3
		v_copyrect(x, y - (200 - 32), st_backing_screen, w, h, x, y)
}
		bi.oldval = *bi.val
	}
}

