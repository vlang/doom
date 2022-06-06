[translated]
module main

[typedef]
struct C.FILE {}

// vstart

const ( // empty enum
)

[c: 'R_FlatNumForName']
fn r_flatnumforname(name &i8) int

[c: 'R_InitSkyMap']
fn r_initskymap()

[c: 'R_InitSkyMap']
fn r_initskymap() {
	skytexturemid = 200 / 2 * (1 << 16)
}
