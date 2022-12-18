//-----------------------------------------------------------------------------
//
// Title       : Full_Adder_2
// Design      : CS302_Fall2022
// Author      : Mahmoud Esmat
// Company     : MEM
//
//-----------------------------------------------------------------------------

`timescale 1 ns / 1 ps


module Full_Adder_2 (Sum, Carry, x, y, z);
	output Sum, Carry;
	input x, y, z;
	wire s1, c1, c2;
	
	Half_Adder_2 h1( s1, c1, x, y);	  
	Half_Adder_2 h2( Sum, c2, z, s1);	 
	
	or (Carry, c1, c2);

endmodule
