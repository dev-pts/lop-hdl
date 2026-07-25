module SubModule(
	inout wire p,
	input wire x,
	input wire [1:0] z,
	output reg [2:0] y
);
	/*verilator tracing_off*/
	reg [2:0] \y\0 ;
	wire [2:0] \y\0_sens  = 1;
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
	wire b_0__p;

	reg [1:0] b_0__z;
	wire [2:0] b_0__y;
	SubModule b_0(
		.p(b_0__p),
		.x(1'd1),
		.z(b_0__z),
		.y(b_0__y)
	);
	wire b_1__p;

	reg [1:0] b_1__z;
	wire [2:0] b_1__y;
	SubModule b_1(
		.p(b_1__p),
		.x(1'd1),
		.z(b_1__z),
		.y(b_1__y)
	);
	reg [1:0] k [2:0];
	/*verilator tracing_off*/
	reg [1:0] \b_0__z\0 ;
	wire [1:0] \b_0__z\0_sens  = 16;
	/*verilator tracing_on*/
	always @(*) begin
		\b_0__z\0  = \b_0__z\0_sens ;
	end
	always @(*) begin
		b_0__z = \b_0__z\0 ;
	end
endmodule

