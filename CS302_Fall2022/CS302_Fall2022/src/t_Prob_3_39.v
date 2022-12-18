`timescale 1ns / 100ps

module t_Prob_3_39;	
	wire   sum, carry;
	reg    a, b; 
	integer i;
	
	Prob_3_39 m1 (sum, carry, a, b); 
	
	initial
		begin
			/*
			#0   a = 0; b = 0; 
			#100 a = 0; b = 1; 
			#100 a = 1; b = 0;
			*/ 	
			
			a = 0; b = 0; 
			for (i = 1; i < 4; i = i + 1)
				#100 {a, b} = i;
		end
		
	initial
		begin
			$monitor($time, "\t a =%b, a = %b, sum = %b, carry = %b", a, b, sum, carry);
	
			#400 $finish;
		end
	
endmodule
