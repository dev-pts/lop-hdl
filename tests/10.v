module SubModule(
	inout wire p,
	input wire x,
	input wire z,
	output reg y
);
	reg _auto_p;
	assign p = _auto_p;
	always @(y) begin
		y <= 1;
	end
endmodule

module test(
	inout wire a
);
	localparam B = 16;
	localparam A = 2;
	reg _auto_a;
	assign a = _auto_a;
	reg c;


	reg b__z;
	wire b__y;
	SubModule b(
		.p(a),
		.x(1'd1),
		.z(b__z),
		.y(b__y)
	);
	reg [2:0] d;
	reg [1 * 8 - 1:0] str_d;
	reg [2:0] f [1:0];
	reg [1 * 8 - 1:0] str_f [1:0];
	always @(d, str_d, f[0], str_f[0], b__z, c, d[2], f[0][2]) begin
		d <= 4;
		str_d <= "C";
		f[0] <= 2;
		str_f[0] <= "B";
		b__z <= 16;
		c <= d[2];
		c <= f[0][2];
	end
endmodule

