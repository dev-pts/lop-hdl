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
	wire b__p;
	reg b__x;
	reg [1:0] b__z;
	wire [2:0] b__y;
	SubModule b(
		.p(b__p),
		.x(b__x),
		.z(b__z),
		.y(b__y)
	);
	reg [1:0] k;
	/*verilator tracing_off*/
	reg [1:0] \k[0]\0 ;
	wire [1:0] \k[0]\0_sens  = 2;
	/*verilator tracing_on*/
	always @(*) begin
		\k[0]\0  = \k[0]\0_sens ;
	end
	always @(*) begin
		k[0] = \k[0]\0 ;
	end
endmodule

