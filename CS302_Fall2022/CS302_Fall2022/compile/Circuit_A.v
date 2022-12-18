//-----------------------------------------------------------------------------
//
// Title       : 
// Design      : CS302_Fall2022
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : F:\Verilog_Projects\ActHDL_Designs\CS302_Fall2022\CS302_Fall2022\compile\Circuit_A.v
// Generated   : Fri Nov 11 21:23:58 2022
// From        : F:\Verilog_Projects\ActHDL_Designs\CS302_Fall2022\CS302_Fall2022\src\Circuit_A.bde
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

module Circuit_A (A,C,D,B,F) ;

// ------------ Port declarations --------- //
input A;
wire A;
input C;
wire C;
input D;
wire D;
input B;
wire B;
output F;
wire F;

// ----------- Signal declarations -------- //
wire a;
wire d;
wire w;
wire x;
wire y;
wire z;

// -------- Component instantiations -------//

assign d = ~(D);


assign x = d | C | B;


assign a = ~(A);


assign y = C & a;


assign z = A & y;


assign w = z & B;


assign F = w | x;


endmodule 
