// Verilog model: User-defined Primitive
primitive UDP_02467 (D, A, B, C);
	output D;
	input A, B, C;

	//Truth table for D = f (A, B, C) = Sum(0, 2, 4, 6, 7);
	table
	//  A B C : D // Column header comment
		0 0 0 : 1;
		0 0 1 : 0;
		0 1 0 : 1;
		0 1 1 : 0;
		1 0 0 : 1;
		1 0 1 : 0;
		1 1 0 : 1;
		1 1 1 : 1;
	endtable 

endprimitive  

// Instantiate primitive
// Verilog model: Circuit instantiation of Circuit_UDP_02467
module Circuit_with_UDP_02467 (e, f, a, b, c, d);
	output e, f;
	input a, b, c, d;
	
	UDP_02467 (e, a, b, c);
	and (f, e, d); // Option gate instance name omitted
endmodule