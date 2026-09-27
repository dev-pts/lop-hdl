module SubModule(
	inout wire p,
	input wire x,
	input wire z,
	output reg y
);
	/*verilator tracing_off*/
	reg \y\0 ;
	wire \y\0_sens  = 1;
	/*verilator tracing_on*/
	always @(*) begin
		\y\0  = \y\0_sens ;
	end
	always @(*) begin
		y = \y\0 ;
	end
endmodule

module test(
	inout wire a
);
	localparam B = 16;
	localparam A = 2;
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
	/*verilator tracing_off*/
	reg [2:0] \d\0 ;
	wire [2:0] \d\0_sens  = 4;
	reg [2:0] \f[0]\1 ;
	wire [2:0] \f[0]\1_sens  = 2;
	reg \b__z\2 ;
	wire \b__z\2_sens  = 16;
	reg \c\3 ;
	reg \c\4 ;
	/*verilator tracing_on*/
	always @(*) begin
		\d\0  = \d\0_sens ;
		\f[0]\1  = \f[0]\1_sens ;
		\b__z\2  = \b__z\2_sens ;
		\c\3  = d[2];
		\c\4  = f[0][2];
	end
	always @(*) begin
		d = \d\0 ;
		f[0] = \f[0]\1 ;
		b__z = \b__z\2 ;
		c = \c\3 ;
		c = \c\4 ;
	end
endmodule

