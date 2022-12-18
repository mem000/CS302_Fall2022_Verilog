/* 
F(w, x, y, z) = w` z + x z + x' y +   w x'z
 
(a) Write a Verilog gate-level description of the circuit.
(b) Write a test bench and simulate the circuit to verify the answer in part (a) (be sure to test all
input combinations)

*/

`timescale 1 ns / 1 ps		  

module Quiz1_B (F, w, x, y, z);
	input w, x, y, z;
	output F;
	
	wire not_w, not_x, w1, w2, w3, w4;
	
	
	not (not_w, w);	
	not (not_x, x);
	and (w1, not_w, z);
	and (w2, x, z);
	and (w3, not_x, y);	
	and (w4, w, not_x, z);
	or (F, w1, w2, w3, w4);
	

endmodule
