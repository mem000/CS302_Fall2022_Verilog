//-----------------------------------------------------------------------------
//
// Title       : 
// Design      : CS302_Fall2022
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : F:\Verilog_Projects\ActHDL_Designs\CS302_Fall2022\CS302_Fall2022\compile\Full_Adder.v
// Generated   : Tue Nov 29 12:04:54 2022
// From        : F:\Verilog_Projects\ActHDL_Designs\CS302_Fall2022\CS302_Fall2022\src\Full_Adder.bde
// By          : Bde2Verilog ver. 2.01
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`ifdef _VCP
`else
`define library(a,b)
`endif


// ---------- Design Unit Header ---------- //
`timescale 1ps / 1ps

module Full_Adder (x,y,z,S,C) ;

// ------------ Port declarations --------- //
input x;
wire x;
input y;
wire y;
input z;
wire z;
output S;
wire S;
output C;
wire C;

// ----------- Signal declarations -------- //
wire NET637;
wire NET657;
wire NET672;

// -------- Component instantiations -------//

Half_Adder U1
(
	.x(x),
	.y(y),
	.S(NET672),
	.C(NET657)
);



Half_Adder U2
(
	.x(NET672),
	.y(z),
	.S(S),
	.C(NET637)
);



assign C = NET657 | NET637;


endmodule 
