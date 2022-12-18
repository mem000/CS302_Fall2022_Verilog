
module Simple_Circuit_2 (A, B, C, D);
	output D;
	input A, B, C;
	 
	
	assign D = (A && B) || (!C);

endmodule