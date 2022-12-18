`timescale 1ns / 100ps


module t_Half_Adder ;

wire S, C, Sum, Carry;
reg x, y; 

Half_Adder m(x,y,S,C) ; // Instance name required 
Half_Adder_2 m2(Sum, Carry, x, y);

integer i;
initial	 
	begin 	
		for (i = 0; i < 4 ; i = i + 1) 	begin
			{x, y} = i;	#100;
		end
	end
	
		
initial
	begin
		$monitor($time, "\t x = %b, y = %b, S = %b, C = %b \n", x, y, S, C);	 
		$monitor($time, "\t x = %b, y = %b, S = %b, C = %b \n", x, y, Sum, Carry);
	
		#400 $finish;
	end

endmodule