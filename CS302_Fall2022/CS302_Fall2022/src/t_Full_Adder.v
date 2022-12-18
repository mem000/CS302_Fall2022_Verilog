


`timescale 1 ns / 1 ps	   

module t_Full_Adder ;

wire S, C, Sum, Carry;
reg x, y, z; 

Full_Adder m(x,y,z,S,C) ; // Instance name required 
Full_Adder_2 m2(Sum, Carry, x, y, z);

integer i;
initial	 
	begin 	
		for (i = 0; i < 8; i = i + 1) 	begin
			{x, y, z} = i;	#100;
		end
	end
	
		
initial
	begin
		$monitor($time, "\t x = %b, y = %b, z = %b, S = %b, C = %b \n", x, y, z, S, C);	
		$monitor($time, "\t x = %b, y = %b, z = %b, S = %b, C = %b \n", x, y, z, Sum, Carry);
	
		#800 $finish;
	end

endmodule
