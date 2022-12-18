`timescale 1ns / 100ps


module t_Fig_3_20a_gates ;

wire F;
reg A, B, C, D; 

Fig_3_20a_gates m1(F, A, B, C, D); // Instance name required 

initial
	begin  
		#0   {A, B, C, D} = 0;
		#100 {A, B, C, D} = 1;
		#100 {A, B, C, D} = 15;
	end
	//initial #300 $finish;    
		
initial
	begin
		$monitor($time, "\t A =%b, B = %b, C = %b, D = %b, F = %b", A, B, C, D, F);
	
		#300 $finish;
	end

endmodule
