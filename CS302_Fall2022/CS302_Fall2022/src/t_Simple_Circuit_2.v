
//`timescale 1 ns / 1 ps


module t_Simple_Circuit_2 ;

wire D;
reg A, B, C; 

Simple_Circuit_2 M1 (A, B, C, D); // Instance name required 

initial
	begin
		A = 1'b0; B = 1'b0; C = 1'b0;
		#100 A = 1'b1; B = 1'b1; C = 1'b1;
		#100 A = 1'b1; B = 1'b0; C = 1'b1;
	end	
	
initial #300 $finish;

endmodule
