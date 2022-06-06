[translated]
module main

[typedef]
struct C.FILE {}

// vstart

[c: 'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

[c: 'Z_Free']
fn z_free(ptr voidptr)

[c: 'I_ReadScreen']
fn i_readscreen(scr &Pixel_t)

[c: 'V_DrawBlock']
fn v_drawblock(x int, y int, width int, height int, src &Pixel_t)

[c: 'V_MarkRect']
fn v_markrect(x int, y int, width int, height int)

[c: 'M_Random']
fn m_random() int

const ( // empty enum
)

[c: 'wipe_StartScreen']
fn wipe_startscreen(x int, y int, width int, height int) int

[c: 'wipe_EndScreen']
fn wipe_endscreen(x int, y int, width int, height int) int

[c: 'wipe_ScreenWipe']
fn wipe_screenwipe(wipeno int, x int, y int, width int, height int, ticks int) int

//!
[weak]
__global (
	go_ = bool(0)
)

[weak]
__global (
	wipe_scr_start &Pixel_t
)

[weak]
__global (
	wipe_scr_end &Pixel_t
)

[weak]
__global (
	wipe_scr &Pixel_t
)

[c: 'wipe_shittyColMajorXform']
fn wipe_shittycolmajorxform(array &Dpixel_t, width int, height int) {
	x := 0
	y := 0
	dest := &Dpixel_t(0)
	dest = &Dpixel_t(z_malloc(width * height * sizeof(*dest), 1, 0))
	for y = 0; y < height; y++ {
		for x = 0; x < width; x++ {
			dest[x * height + y] = array[y * width + x]
		}
	}
	C.memcpy(array, dest, width * height * sizeof(*dest))
	z_free(dest)
}

[c: 'wipe_initColorXForm']
fn wipe_initcolorxform(width int, height int, ticks int) int {
	C.memcpy(wipe_scr, wipe_scr_start, width * height * sizeof(*wipe_scr))
	return 0
}

[c: 'wipe_doColorXForm']
fn wipe_docolorxform(width int, height int, ticks int) int {
	changed := false
	w := &Pixel_t(0)
	e := &Pixel_t(0)
	newval := 0
	changed = false
	w = wipe_scr
	e = wipe_scr_end
	for w != wipe_scr + width * height {
		if *w != *e {
			if *w > *e {
				newval = *w - ticks
				if newval < *e {
					*w = *e
				} else { // 3
					*w = newval
				}
				changed = true
			} else if *w < *e {
				newval = *w + ticks
				if newval > *e {
					*w = *e
				} else { // 3
					*w = newval
				}
				changed = true
			}
		}
		w++
		e++
	}
	return !changed
}

[c: 'wipe_exitColorXForm']
fn wipe_exitcolorxform(width int, height int, ticks int) int {
	return 0
}

[weak]
__global (
	y &int
)

[c: 'wipe_initMelt']
fn wipe_initmelt(width int, height int, ticks int) int {
	i := 0
	r := 0

	C.memcpy(wipe_scr, wipe_scr_start, width * height * sizeof(*wipe_scr))
	wipe_shittycolmajorxform(&Dpixel_t(wipe_scr_start), width / 2, height)
	wipe_shittycolmajorxform(&Dpixel_t(wipe_scr_end), width / 2, height)
	y = &int(z_malloc(width * sizeof(int), 1, 0))
	y[0] = -(m_random() % 16)
	for i = 1; i < width; i++ {
		r = (m_random() % 3) - 1
		y[i] = y[i - 1] + r
		if y[i] > 0 {
			y[i] = 0
		} else if y[i] == -16 {
			y[i] = -15
		}
	}
	return 0
}

[c: 'wipe_doMelt']
fn wipe_domelt(width int, height int, ticks int) int {
	i := 0
	j := 0
	dy := 0
	idx := 0
	s := &Dpixel_t(0)
	d := &Dpixel_t(0)
	done := true
	width /= 2
	for ticks-- {
		for i = 0; i < width; i++ {
			if y[i] < 0 {
				y[i]++
				done = false
			} else if y[i] < height {
				dy = if (y[i] < 16) { y[i] + 1 } else { 8 }
				if y[i] + dy >= height {
					dy = height - y[i]
				}
				s = &(&Dpixel_t(wipe_scr_end))[i * height + y[i]]
				d = &(&Dpixel_t(wipe_scr))[y[i] * width + i]
				idx = 0
				for j = dy; j; j-- {
					d[idx] = *(s++)
					idx += width
				}
				y[i] += dy
				s = &(&Dpixel_t(wipe_scr_start))[i * height]
				d = &(&Dpixel_t(wipe_scr))[y[i] * width + i]
				idx = 0
				for j = height - y[i]; j; j-- {
					d[idx] = *(s++)
					idx += width
				}
				done = false
			}
		}
	}
	return done
}

[c: 'wipe_exitMelt']
fn wipe_exitmelt(width int, height int, ticks int) int {
	z_free(y)
	z_free(wipe_scr_start)
	z_free(wipe_scr_end)
	return 0
}

[c: 'wipe_StartScreen']
fn wipe_startscreen(x int, y int, width int, height int) int {
	wipe_scr_start = z_malloc(320 * 200 * sizeof(*wipe_scr_start), 1, (voidptr(0)))
	i_readscreen(wipe_scr_start)
	return 0
}

[c: 'wipe_EndScreen']
fn wipe_endscreen(x int, y int, width int, height int) int {
	wipe_scr_end = z_malloc(320 * 200 * sizeof(*wipe_scr_end), 1, (voidptr(0)))
	i_readscreen(wipe_scr_end)
	v_drawblock(x, y, width, height, wipe_scr_start)
	return 0
}

[c: 'wipe_ScreenWipe']
fn wipe_screenwipe(wipeno int, x int, y int, width int, height int, ticks int) int {
	rc := 0
	wipes := [wipe_initcolorxform, wipe_docolorxform, wipe_exitcolorxform, wipe_initmelt, wipe_domelt,
		wipe_exitmelt]!

	if !go_ {
		go_ = 1
		wipe_scr = I_VideoBuffer
		wipes[wipeno * 3](width, height, ticks)
	}
	v_markrect(0, 0, width, height)
	rc = wipes[wipeno * 3 + 1](width, height, ticks)
	if rc {
		go_ = 0
		wipes[wipeno * 3 + 2](width, height, ticks)
	}
	return !go_
}
