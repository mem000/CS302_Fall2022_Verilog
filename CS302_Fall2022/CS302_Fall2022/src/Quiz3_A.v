/*
Implement the following boolean function with 3 to 8 line decoder:
F (x; y; z) = Sum (1; 3; 5; 7)
(a) In Active HDL; write a Verilog description OR draw the block diagram.
(b) Write a test bench and simulate the circuit to verify the answer in part (a) (be sure to test all
input combinations)	   

*/

module	Quiz3_A (output F, input x, y, z) ;
	wire[7:0] D;
	
	Decoder_3X8 m(D, x, y, z); 	 
	
	assign F = D[1] || D[3] || D[5] || D[7];
	
endmodule