module Fig_3_20a_CA (F, A, B, C, D);
	output F;
	input A, B, C, D;
	wire w1, w2, w3, w4;
	assign w1 = C && D;
	assign w2 = w1 || B;
	assign w3 = !(w2 && A);
	assign w4 = !w3;
	assign w5 = !(B && (!C));
	assign w5_bar = !w5;
	assign F = (w4 || w5_bar);
endmodule