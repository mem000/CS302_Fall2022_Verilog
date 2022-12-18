//-----------------------------------------------------------------------------
//
// Title       : Prob_3_34
// Design      : CS302_Fall2022
// Author      : Mahmoud Esmat
// Company     : MEM
//
//-----------------------------------------------------------------------------	
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps	 


module Prob_3_34 (Out_1, Out_2, Out_3, A, B, C, D);
	output Out_1, Out_2, Out_3;
	input A, B, C, D;
	wire A_bar, B_bar, C_bar, D_bar;  
	
	assign A_bar = !A;
	assign B_Bar = !B;
	assign C_bar = !C;
	assign D_bar = !D;
	assign Out_1 = (A || B_bar) && C_bar && ( C || D);
	assign Out_2 = ( (C_bar && D) || (B && C && D) || (C && D_bar) ) && (A_bar || B);
	assign Out_3 = (((A && B) || C) && D) || (B_bar && C);
endmodule
