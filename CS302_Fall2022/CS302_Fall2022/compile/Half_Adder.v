//-----------------------------------------------------------------------------
//
// Title       : 
// Design      : CS302_Fall2022
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : F:\Verilog_Projects\ActHDL_Designs\CS302_Fall2022\CS302_Fall2022\compile\Half_Adder.v
// Generated   : Tue Nov 29 11:43:40 2022
// From        : F:\Verilog_Projects\ActHDL_Designs\CS302_Fall2022\CS302_Fall2022\src\Half_Adder.bde
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

module Half_Adder (x,y,S,C) ;

// ------------ Port declarations --------- //
input x;
wire x;
input y;
wire y;
output S;
wire S;
output C;
wire C;

// -------- Component instantiations -------//

assign S = y ^ x;


assign C = y & x;


endmodule 
