

`timescale 1 ns / 1 ps


module t_Quiz1_A ;

wire SF1, F2, F3, F4, F5, F6;
reg x, y, z; 
		  
Quiz1_A m(F1, F2, F3, F4, F5, F6, x, y, z); // Instance name required 


integer i;
initial	 
	begin 	
		for (i = 0; i < 8; i = i + 1) 	begin
			{x, y, z} = i;	#100;
		end
	end																	   
			
initial
	begin
		//$monitor($time, "\t x = %b, y = %b, z = %b, Result = %d \n", x, y, z, {F1, F2, F3, F4, F5, F6});	 
		//$monitor($time, "\t x = %b, y = %b, z = %b, Result = %d \n", x, y, z, {x, y, z});	
		$monitor($time, "\t Input = %d, output = %d ", {x, y, z}, {F1, F2, F3, F4, F5, F6});
		
	
		#800 $finish;
	end
endmodule
