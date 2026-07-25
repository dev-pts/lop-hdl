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
	reg \d\0 ;
	wire \d\0_sens  = 4;
	reg [2:0] \str_d\1 ;
	reg \f[0]\2 ;
	wire \f[0]\2_sens  = 2;
	reg [2:0] \str_f[0]\3 ;
	reg \b__z\4 ;
	wire \b__z\4_sens  = 16;
	reg \c\5 ;
	reg \c\6 ;
	/*verilator tracing_on*/
	always @(*) begin
		\d\0  = \d\0_sens ;
		\str_d\1  = "C";
		\f[0]\2  = \f[0]\2_sens ;
		\str_f[0]\3  = "B";
		\b__z\4  = \b__z\4_sens ;
		\c\5  = d[2];
		\c\6  = f[0][2];
	end
	always @(*) begin
		d = \d\0 ;
		str_d = \str_d\1 ;
		f[0] = \f[0]\2 ;
		str_f[0] = \str_f[0]\3 ;
		b__z = \b__z\4 ;
		c = \c\5 ;
		c = \c\6 ;
	end
endmodule

