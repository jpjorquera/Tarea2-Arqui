module flop(input logic clk,
			input logic d,
			output logic q);
	always_ff @(posedge clk)
		q <= d;
endmodule

module and2(input logic a, b
			output logic y);
	assign y = a & b;
endmodule

module medio(input logic a, b, c, x
			output logic y);
	assign y = ((~b) & c & (~x)) | (a & (~c) & x) | (b & (~c) & x)
endmodule

module circuito(input logic clk,
				input logic x,
				output logic y);
	parameter a = 0;
	parameter b = 0;
	parameter c = 0;
	logic d;
	logic e;
	logic f;
	and2(b, c, d);
	medio(a, b, c, x, e)
	and2(b, c, y)
	flop(clk, d, a)
	flop(clk, e, b)
	flop(clk, f, c)
endmodule

