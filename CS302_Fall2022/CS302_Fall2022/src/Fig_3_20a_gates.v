module Fig_3_20a_gates (F, A, B, C, D);
	output F;
	input A, B, C, D;
	wire w1, w2, w3, w4, C_bar;
	
	and (w1, C, D);
	or (w2, w1, B);
	and (w3, w2, A);
	not (C_bar, C);
	and (w4, B, C_bar);
	or (F, w3, w4);
endmodule