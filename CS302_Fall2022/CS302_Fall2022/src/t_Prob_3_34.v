module	t_Prob_3_34	 ;	
	wire Out_1, Out_2, Out_3;
	reg A, B, C, D; 
	
	Prob_3_34 m1(Out_1, Out_2, Out_3, A, B, C, D); // Instance name required 
	
	initial
		begin
			     A = 0; B = 0; C = 0; D = 0;
			#100 A = 0; B = 0; C = 0; D = 1;
			#100 A = 1; B = 1; C = 1; D = 1;
		end	
		
	//initial #300 $finish;
		
initial
	begin
		$monitor($time, "\t A =%b, B = %b, C = %b, D = %b, Out_1 = %b, Out_2 = %b, Out_3 = %b", A, B, C, D, Out_1, Out_2, Out_3);
	
		#300 $finish;
	end
endmodule