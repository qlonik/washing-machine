module BINtoDual7Seg(i, O);

input [3:0] i;
output [13:0] O;

wire w0;

assign
	w0    = ~i[3] | (i[3] & ~i[2] & ~i[1]),
	O[13] = w0,
	O[12] = 1,
	O[11] = 1,
	O[10] = w0,
	O[9]  = w0,
	O[8]  = w0,
	O[7]  = 0,
	
	O[6]  = (~i[2] & ~i[0]) | (i[2] & i[0]) | (i[3] & ~i[1]) | (~i[3] & i[1]),
	O[5]  = (i[3] & ~i[1]) | (~i[1] & ~i[0]) | ~i[2] | (~i[3] & i[1] & i[0]) | (i[3] & ~i[0]),
	O[4]  = (~i[3] & ~i[1]) | i[0] | (~i[3] & i[2]) | (i[3] & i[1]) | (i[3] & ~i[2]),
	O[3]  = (~i[2] & ~i[0]) | (i[3] & ~i[1]) | (i[2] & ~i[1] & i[0]) |
		(i[3] & i[2] & i[0]) | (~i[3] & ~i[2] & i[1]) | (~i[3] & i[1] & ~i[0]),
	O[2]  = (~i[2] & ~i[0]) | (i[3] & ~i[1] & ~i[0]) | (~i[3] & i[1] & ~i[0]),
	O[1]  = (~i[3] & i[2] & ~i[1]) | (~i[2] & ~i[1] & ~i[0]) |
		(i[3] & ~i[2] & ~i[1]) | (i[3] & i[2] & i[1]) | (i[2] & i[1] & ~i[0]) |
		(i[3] & i[1] & ~i[0]),
	O[0]  = (i[2] & ~i[1]) | (i[3] & ~i[1]) | (i[3] & i[2]) |
	(i[2] & i[1] & ~i[0]) | (~i[3] & ~i[2] & i[1]);
	
endmodule
