//-----------------------------------------------------------------------------
//
// Title       : 
// Design      : CS302_Fall2022
// Author      : 
// Company     : 
//
//-----------------------------------------------------------------------------
//
// File        : F:\Verilog_Projects\ActHDL_Designs\CS302_Fall2022\CS302_Fall2022\compile\Use_Circuit_A.v
// Generated   : Fri Nov 11 22:05:05 2022
// From        : F:\Verilog_Projects\ActHDL_Designs\CS302_Fall2022\CS302_Fall2022\src\Use_Circuit_A.bde
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

module Use_Circuit_A (Output1,A,B,C,D) ;

// ------------ Port declarations --------- //
output Output1;
wire Output1;
input A;
wire A;
input B;
wire B;
input C;
wire C;
input D;
wire D;

// ----------- Signal declarations -------- //
wire NET627;

// -------- Component instantiations -------//

assign Output1 = D & NET627;


Circuit_A U2
(
	.A(A),
	.C(C),
	.D(D),
	.B(B),
	.F(NET627)
);



endmodule 
