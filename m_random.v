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
//	Random number LUT.
//
//
// M_Random
// Returns a 0-255 number
//
// Which one is deterministic?
@[c: 'P_Random']
fn p_random() int {
	prndindex = (prndindex + 1) & 255
	return rndtable[prndindex]
}

@[c: 'M_Random']
fn m_random() int {
	rndindex = (rndindex + 1) & 255
	return rndtable[rndindex]
}

@[c: 'M_ClearRandom']
fn m_clear_random() {
	rndindex = 0
	prndindex = rndindex
}

// inspired by the same routine in Eternity, thanks haleyjd
@[c: 'P_SubRandom']
fn p_sub_random() int {
	r := p_random()
	return r - p_random()
}
