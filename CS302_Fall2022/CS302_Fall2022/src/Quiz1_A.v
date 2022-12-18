/* Design a combinational circuit that accepts 
  a three bit number and generates	an output
 binary number equal to the square of the input.
 
(a) Write a Verilog gate-level description of the circuit.
(b) Write a test bench and simulate the circuit to verify the answer in part (a) (be sure to test all
input combinations)

*/

`timescale 1 ns / 1 ps		  

module Quiz1_A (F1, F2, F3, F4, F5, F6, x, y, z);
	input x, y, z;
	output F1, F2, F3, F4, F5, F6;
	
	wire not_z, not_y, xor_xy, w1, w2;
	
	assign F6 = z;
	assign F5 = 0;
	not (not_z, z);
	and (F4, y, not_z);
	xor	(xor_xy, x, y);
	and (F3, xor_xy, z);
	not (not_y, y);
	and (w1, x,  not_y);
	and (w2, x,  z);
	or (F2, w1, w2);
	and (F1, x,  y);
	

endmodule
