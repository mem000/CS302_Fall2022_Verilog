//-----------------------------------------------------------------------------
//
// Title       : Circuit_A_2
// Design      : CS302_Fall2022
// Author      : Mahmoud Esmat
// Company     : MEM
//
//-----------------------------------------------------------------------------		
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps 
module Circuit_A_2 (A, B, C, D, F);
	input A, B, C, D;
	output F;
	wire w, x, y, z, a, d;
	or (x, B, C, d);
	and (y, a ,C);
	and (w, z ,B);
	and (z, y, A);
	or (F, x, w);
	not (a, A);
	not (d, D);
endmodule
