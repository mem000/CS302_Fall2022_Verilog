`timescale 1ns / 100ps


module t_Simple_Circuit ;

wire D, E;
reg A, B, C; 

Simple_Circuit M1 (A, B, C, D, E); // Instance name required 

initial
	begin
		assign A = 1'b0; assign B = 1'b0; assign C = 1'b0;
		#100 assign A = 1'b1; assign B = 1'b1; assign C = 1'b1; 
		#100 assign A = 1'b1; assign B = 1'b0; assign C = 1'b1;
	end
	//initial #300 $finish;    
		
initial
	begin
		$monitor($time, "\t A =%b, B = %b, C = %b, D = %b, E = %b", A, B, C, D, E);
	
		#300 $finish;
	end

endmodule
