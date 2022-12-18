

`timescale 1 ns / 1 ps


module t_Quiz1_B ;

wire F;
reg w, x, y, z; 
		  
Quiz1_B m(F, w, x, y, z); // Instance name required 


integer i;
initial	 
	begin 	
		for (i = 0; i < 16; i = i + 1) 	begin
			{w, x, y, z} = i;	#100;
		end
	end																	   
			
initial
	begin
		//$monitor($time, "\t x = %b, y = %b, z = %b, F = %b \n", x, y, z, F});
		$monitor($time, "\t Input as Decimal = %d, F = %b", {w, x,y, z}, F);	  
		
	
		#1600 $finish;
	end
endmodule
