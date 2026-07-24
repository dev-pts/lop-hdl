module SubModule(
	inout wire p,
	input wire x,
	input wire [1:0] z,
	output reg [2:0] y
);
	reg _auto_p;
	assign p = _auto_p;
	/*verilator tracing_off*/
	reg [2:0] \y\0 ;
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


	reg [1:0] b_0__z;
	wire [2:0] b_0__y;
	SubModule b_0(
		.p(k[0][1]),
		.x(1'd1),
		.z(b_0__z),
		.y(b_0__y)
	);


	reg [1:0] b_1__z;
	wire [2:0] b_1__y;
	SubModule b_1(
		.p(k[0][1]),
		.x(1'd1),
		.z(b_1__z),
		.y(b_1__y)
	);
	wire [1:0] k [2:0];
	/*verilator tracing_off*/
	reg [1:0] \b_0__z\0 ;
	wire [4:0] \b_0__z\0_sens  = 16;
	/*verilator tracing_on*/
	always @(*) begin
		\b_0__z\0  = \b_0__z\0_sens ;
	end
	always @(*) begin
		b_0__z = \b_0__z\0 ;
	end
endmodule

