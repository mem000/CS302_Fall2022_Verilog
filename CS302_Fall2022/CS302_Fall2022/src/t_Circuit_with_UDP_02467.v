
`timescale 1 ns / 1 ps

module t_Circuit_with_UDP_02467 ;

wire e, f;
reg a, b, c, d;	 
	
	Circuit_with_UDP_02467 U1 (e, f, a, b, c, d);	
		
	initial
		begin
		a = 0; b = 0; c = 0; d = 0;
		#100 a = 1; b = 1; c = 1; d = 1;
		#100 a = 1; b = 0; c = 1; d = 1;
		end
		initial #300 $finish;

endmodule
