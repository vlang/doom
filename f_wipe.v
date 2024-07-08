@[translated]
module main

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//      Zone Memory Allocation, perhaps NeXT ObjectiveC inspired.
//	Remark: this was the only stuff that, according
//	 to John Carmack, might have been useful for
//	 Quake.
//
//
// ZONE MEMORY
// PU - purge tags.
// static entire execution time
// static while playing
// static while playing
// a free block
// static until level exited
// a special thinker in a level
// Tags >= PU_PURGELEVEL are purgable whenever needed.
// Total number of different tag types
@[c: 'Z_Malloc']
fn z_malloc(size int, tag int, ptr voidptr) voidptr

@[c: 'Z_Free']
fn z_free(ptr voidptr)

//
// This is used to get the local FILE:LINE info from CPP
// prior to really call the function in question.
//
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Simple basic typedefs, isolated here to make it easier
//	 separating modules.
//
// #define macros to provide functions missing in Windows.
// Outside Windows, we use strings.h for str[n]casecmp.
//
// The packed attribute forces structures to be packed into the minimum
// space necessary.  If this is not done, the compiler may align structure
// fields differently to optimize memory access, inflating the overall
// structure size.  It is important to use the packed attribute on certain
// structures where alignment is important, particularly data read/written
// to disk.
//
// C99 integer types; with gcc we just use this.  Other compilers
// should add conditional statements that define the C99 types.
// What is really wanted here is stdint.h; however, some old versions
// of Solaris don't have stdint.h and only have inttypes.h (the
// pre-standardisation version).  inttypes.h is also in the C99
// standard and defined to include stdint.h, so include this.
// Use builtin bool type with C++.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	System specific interface stuff.
//
// Screen width and height.
// Screen height used when aspect_ratio_correct=true.
// Called by D_DoomMain,
// determines the hardware configuration
// and sets up the video mode
// Takes full 8 bit values.
@[c: 'I_ReadScreen']
fn i_read_screen(scr &Pixel_t)

// Called before processing any tics in a frame (just after displaying a frame).
// Time consuming syncronous operations are performed here (joystick reading).
// Called before processing each tic in a frame.
// Quick syncronous operations are performed here.
// Enable the loading disk image displayed when reading from disk.
// Joystic/gamepad hysteresis
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Gamma correction LUT.
//	Functions to draw patches (by post) directly to screen.
//	Functions to blit a block to the screen.
//
// Needed because we are refering to patches.
//
// VIDEO
//
// haleyjd 08/28/10: implemented for Strife support
// haleyjd 08/28/10: Patch clipping callback, implemented to support Choco
// Strife.
// Allocates buffer screens, call before R_Init.
// Draw a block from the specified source screen to the screen.
// villsa [STRIFE]
// Draw a linear block of pixels into the view buffer.
@[c: 'V_DrawBlock']
fn v_draw_block(x int, y int, width int, height int, src &Pixel_t)

@[c: 'V_MarkRect']
fn v_mark_rect(x int, y int, width int, height int)

// Draw a raw screen lump
// Temporarily switch to using a different buffer to draw graphics, etc.
// Return to using the normal screen buffer to draw graphics.
// Save a screenshot of the current screen to a file, named in the
// format described in the string passed to the function, eg.
// "DOOM%02i.pcx"
// Load the lookup table for translucency calculations from the TINTTAB
// lump.
// villsa [STRIFE]
// Load the lookup table for translucency calculations from the XLATAB
// lump.
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//
//
// Returns a number from 0 to 255,
// from a lookup table.
@[c: 'M_Random']
fn m_random() int

// As M_Random, but used only by the play simulation.
// Fix randoms for demos.
// Defined version of P_Random() - P_Random()
//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Mission start screen wipe/melt, special effects.
//	
//
//                       SCREEN WIPE PACKAGE
//


@[c: 'wipe_StartScreen']
fn wipe_start_screen(x int, y int, width int, height int) int

@[c: 'wipe_EndScreen']
fn wipe_end_screen(x int, y int, width int, height int) int

@[c: 'wipe_ScreenWipe']
fn wipe_screen_wipe(wipeno int, x int, y int, width int, height int, ticks int) int

//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Mission begin melt/wipe screen special effect.
//
//
//                       SCREEN WIPE PACKAGE
//
// when zero, stop the wipe
@[c: 'wipe_shittyColMajorXform']
fn wipe_shitty_col_major_xform(array &Dpixel_t, width int, height int) {
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

@[c: 'wipe_initColorXForm']
fn wipe_init_color_xf_orm(width int, height int, ticks int) int {
	C.memcpy(wipe_scr, wipe_scr_start, width * height * sizeof(*wipe_scr))
	return 0
}

@[c: 'wipe_doColorXForm']
fn wipe_do_color_xf_orm(width int, height int, ticks int) int {
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

@[c: 'wipe_exitColorXForm']
fn wipe_exit_color_xf_orm(width int, height int, ticks int) int {
	return 0
}

@[c: 'wipe_initMelt']
fn wipe_init_melt(width int, height int, ticks int) int {
	i := 0
	r := 0

	// copy start screen to main screen
	C.memcpy(wipe_scr, wipe_scr_start, width * height * sizeof(*wipe_scr))
	// makes this wipe faster (in theory)
	// to have stuff in column-major format
	wipe_shitty_col_major_xform(&Dpixel_t(wipe_scr_start), width / 2, height)
	wipe_shitty_col_major_xform(&Dpixel_t(wipe_scr_end), width / 2, height)
	// setup initial column positions
	// (y<0 => not ready to scroll yet)
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

@[c: 'wipe_doMelt']
fn wipe_do_melt(width int, height int, ticks int) int {
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

@[c: 'wipe_exitMelt']
fn wipe_exit_melt(width int, height int, ticks int) int {
	z_free(y)
	z_free(wipe_scr_start)
	z_free(wipe_scr_end)
	return 0
}

@[c: 'wipe_StartScreen']
fn wipe_start_screen(x int, y int, width int, height int) int {
	wipe_scr_start = z_malloc(320 * 200 * sizeof(*wipe_scr_start), 1, (unsafe { nil }))
	i_read_screen(wipe_scr_start)
	return 0
}

@[c: 'wipe_EndScreen']
fn wipe_end_screen(x int, y int, width int, height int) int {
	wipe_scr_end = z_malloc(320 * 200 * sizeof(*wipe_scr_end), 1, (unsafe { nil }))
	i_read_screen(wipe_scr_end)
	v_draw_block(x, y, width, height, wipe_scr_start)
	// restore start scr.
	return 0
}

@[c: 'wipe_ScreenWipe']
fn wipe_screen_wipe(wipeno int, x int, y int, width int, height int, ticks int) int {
	rc := 0
	wipes := [wipe_init_color_xf_orm, wipe_do_color_xf_orm, wipe_exit_color_xf_orm, wipe_init_melt,
		wipe_do_melt, wipe_exit_melt]!

	// initial stuff
	if !go_ {
		go_ = 1
		// wipe_scr = (pixel_t *) Z_Malloc(width*height, PU_STATIC, 0); // DEBUG
		wipe_scr = I_VideoBuffer
		wipes[wipeno * 3](width, height, ticks)
	}
	// do a piece of wipe-in
	v_mark_rect(0, 0, width, height)
	rc = wipes[wipeno * 3 + 1](width, height, ticks)
	//  V_DrawBlock(x, y, 0, width, height, wipe_scr); // DEBUG
	// final stuff
	if rc {
		go_ = 0
		wipes[wipeno * 3 + 2](width, height, ticks)
	}
	return !go_
}
