
`timescale 1 ns / 1 ps	   

module t_Decoder_3X8 ();	
	wire [7:0] D;
	reg x, y, z;
	
	Decoder_3X8 m(D, x, y, z); // Instance name required 
	
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
		$monitor($time, "\t Input = %d, Output = %d", {x, y, z}, D);	  
		
	
		#800 $finish;
	end

endmodule  
