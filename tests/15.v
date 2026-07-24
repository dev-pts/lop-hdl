module SubModule_Z_10_B2_5(
	inout wire p,
	input wire x,
	input wire [4:0] z,
	output reg [9:0] y
);
	localparam Z = 10;
	localparam B2 = 5;
	reg _auto_p;
	assign p = _auto_p;
	/*verilator tracing_off*/
	reg [9:0] \y\0 ;
	wire \y\0_sens  = 1;
	/*verilator tracing_on*/
	always @(*) begin
		\y\0  = \y\0_sens ;
	end
	always @(*) begin
		y = \y\0 ;
	end
endmodule

module test();
	localparam B = 16;
	localparam A = 2;
	localparam B2 = 9;
	wire b_0__p;
	reg b_0__x;
	reg [4:0] b_0__z;
	wire [9:0] b_0__y;
	SubModule_Z_10_B2_5 b_0(
		.p(b_0__p),
		.x(b_0__x),
		.z(b_0__z),
		.y(b_0__y)
	);
	wire b_1__p;
	reg b_1__x;
	reg [4:0] b_1__z;
	wire [9:0] b_1__y;
	SubModule_Z_10_B2_5 b_1(
		.p(b_1__p),
		.x(b_1__x),
		.z(b_1__z),
		.y(b_1__y)
	);
endmodule

