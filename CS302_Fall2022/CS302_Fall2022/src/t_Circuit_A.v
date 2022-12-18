
`timescale 1 ns / 1 ps		 

module t_Circuit_A ();	   		 

wire F;		//outputs
reg A, B, C, D; 	  //inputs	
integer i;

//Circuit_A m(A, C, D, B, F); // Instance name required
Circuit_A_2 m(A, B, C, D, F); // Instance name required 
//Circuit_A m(A, B, C, D, F); // Instance name required 

	initial
		begin
			{A, B, C, D} = 0;
			for (i = 1; i < 16; i = i + 1)
				#100 {A, B, C, D} = i;
		end
	//initial #300 $finish;    
		
	initial
		begin
			$monitor($time, "\t A =%b, B = %b, C = %b, D = %b, F = %b", A, B, C, D, F);
		
			#1800 $finish;
		end

endmodule
