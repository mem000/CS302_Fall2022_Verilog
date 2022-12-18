
module Half_Adder_2 (Sum, Carry, x, y);
	output Sum, Carry;
	input x, y;
	
	xor (Sum, x, y);
	and (Carry, x, y);
	
endmodule