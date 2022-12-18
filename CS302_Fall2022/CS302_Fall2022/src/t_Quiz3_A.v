
`timescale 1 ns / 1 ps	  

module t_Quiz3_A ();
	wire F;
	reg x, y, z;
	
	Quiz3_A m(F, x, y, z); // Instance name required 
	
integer i;
initial	 
	begin 	
		for (i = 0; i < 8; i = i + 1) 	
			begin
				{x, y, z} = i;	#100;
			end
	end																	   
			
initial
	begin
		//$monitor($time, "\t x = %b, y = %b, z = %b, F = %b \n", x, y, z, F});
		$monitor($time, "\t Input = %d, Output = %d", {x, y, z}, F);	  
		
	
		#800 $finish;
	end


endmodule
