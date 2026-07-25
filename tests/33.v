module SubModule(
	inout wire [3:0] a
);
endmodule

module test(
	inout wire a,
	inout wire [2:0] b__a,
	inout wire [2:0] c_0__a__a,
	inout wire [2:0] c_1__a__a,
	output reg e,
	inout wire [3:0] f_0, inout wire [3:0] f_1
);
	assign a = _auto_a;
	assign c_0__a__a = _auto_c_0__a__a;
	assign b__a = _auto_b__a;
	assign c_1__a__a = _auto_c_1__a__a;
	assign f_0 = _auto_f_0;

	SubModule d(
		.a(f_1)
	);
	/*verilator tracing_off*/
	reg \a\0 ;
	wire \a\0_sens  = 1;
	reg [4:0] \{a,e,c_0__a__a}\1 ;
	wire [4:0] \{a,e,c_0__a__a}\1_sens  = 1;
	reg [2:0] \b__a\2 ;
	wire [2:0] \b__a\2_sens  = 1;
	reg [2:0] \c_1__a__a\3 ;
	wire [2:0] \c_1__a__a\3_sens  = 1;
	reg [3:0] \f_0\4 ;
	wire [3:0] \f_0\4_sens  = 1;
	reg _auto_a;
	reg [2:0] _auto_c_0__a__a;
	reg [2:0] _auto_b__a;
	reg [2:0] _auto_c_1__a__a;
	reg [3:0] _auto_f_0;
	/*verilator tracing_on*/
	always @(*) begin
		\a\0  = \a\0_sens ;
		\{a,e,c_0__a__a}\1  = \{a,e,c_0__a__a}\1_sens ;
		\b__a\2  = \b__a\2_sens ;
		\c_1__a__a\3  = \c_1__a__a\3_sens ;
		\f_0\4  = \f_0\4_sens ;
	end
	always @(*) begin
		_auto_a = \a\0 ;
		{ _auto_a, e, _auto_c_0__a__a } = \{a,e,c_0__a__a}\1 ;
		_auto_b__a = \b__a\2 ;
		_auto_c_1__a__a = \c_1__a__a\3 ;
		_auto_f_0 = \f_0\4 ;
	end
endmodule

