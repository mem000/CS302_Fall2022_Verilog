 module Four_bits_incrementer(B, A);
input [3:0] B;
input [3:0] A;

wire C0, C1, C2, C3;

half_adder 
	ha1(B[0], C0, 1, A[0] ),
	ha2(B[1], C1, C0, A[1] ),
	ha3(B[2], C2, C1, A[2] ),
	ha4(B[3], C3, C2, A[3] );

endmodule
