//-----------------------------------------------------------------------------
//
// Title       : Simple_Circuit
// Design      : CS302_Fall2022
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : f:\Verilog_Projects\ActHDL_Designs\CS302_Fall2022\CS302_Fall2022\src\Simple_Circuit.v
// Generated   : Fri Nov  4 21:57:38 2022
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
//`timescale 1 ns / 1 ps

// HDL Example 3.1 (Combinational Logic Modeled with Primitives)
// Verilog model of circuit of Figure 3.35. IEEE 1364–1995 Syntax
module Simple_Circuit (A, B, C, D, E); 
	output D, E;
	input A, B, C;
	wire w1; 
	
	and G1 (w1, A, B); // Optional gate instance name
	not G2 (E, C);
	or G3 (D, w1, E);
	

endmodule
