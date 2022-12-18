//-----------------------------------------------------------------------------
//
// Title       : Prob_3_39
// Design      : CS302_Fall2022
// Author      : Mahmoud Esmat
// Company     : MEM
//
//-----------------------------------------------------------------------------

module Prob_3_39 (sum, carry, a, b);
	input a, b;
	output sum, carry; 
	
	xor (sum, a, b);
	and (carry, a, b);
	
endmodule
