module Decoder_3X8 (D, x, y, z); 
	output [7:0] D;
	input x, y, z;
	
	assign D[0] = (!x) && (!y) && (!z);
	assign D[1] = (!x) && (!y) && (z);
	assign D[2] = (!x) && (y)  && (!z);
	assign D[3] = (!x) && (y)  && (z);
	assign D[4] = (x)  && (!y) && (!z);
	assign D[5] = (x)  && (!y) && (z);
	assign D[6] = (x)  && (y)  && (!z);
	assign D[7] = (x)  && (y)  && (z);
	
	
endmodule