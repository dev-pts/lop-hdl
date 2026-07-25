module SubModule(
	inout wire a
);
endmodule

module test(
	inout wire a,
	inout wire [2:0] b,
	inout wire [2:0] c_0, inout wire [2:0] c_1,
	inout wire d,
	inout wire [2:0] f__a,
	inout wire [2:0] g_0__a,
	inout wire [2:0] g_1__a
);
	assign a = _auto_a;
	assign b = _auto_b;
	assign c_0 = _auto_c_0;
	assign f__a = _auto_f__a;
	assign g_0__a = _auto_g_0__a;

	SubModule e(
		.a(d)
	);
	/*verilator tracing_off*/
	reg \a\0 ;
	wire \a\0_sens  = 1;
	reg [2:0] \b\1 ;
	wire [2:0] \b\1_sens  = 1;
	reg [2:0] \b[0]\2 ;
	wire [2:0] \b[0]\2_sens  = 1;
	reg [2:0] \c_0\3 ;
	wire [2:0] \c_0\3_sens  = 1;
	reg \c_0[0]\4 ;
	wire \c_0[0]\4_sens  = 1;
	reg [2:0] \f__a\5 ;
	wire [2:0] \f__a\5_sens  = 1;
	reg [2:0] \f__a[0]\6 ;
	wire [2:0] \f__a[0]\6_sens  = 1;
	reg [2:0] \g_0__a\7 ;
	wire [2:0] \g_0__a\7_sens  = 1;
	reg [2:0] \g_0__a[0]\8 ;
	wire [2:0] \g_0__a[0]\8_sens  = -1;
	reg _auto_a;
	reg [2:0] _auto_b;
	reg [2:0] _auto_c_0;
	reg [2:0] _auto_f__a;
	reg [2:0] _auto_g_0__a;
	/*verilator tracing_on*/
	always @(*) begin
		\a\0  = \a\0_sens ;
		\b\1  = \b\1_sens ;
		\b[0]\2  = \b[0]\2_sens ;
		\c_0\3  = \c_0\3_sens ;
		\c_0[0]\4  = \c_0[0]\4_sens ;
		\f__a\5  = \f__a\5_sens ;
		\f__a[0]\6  = \f__a[0]\6_sens ;
		\g_0__a\7  = \g_0__a\7_sens ;
		\g_0__a[0]\8  = \g_0__a[0]\8_sens ;
	end
	always @(*) begin
		_auto_a = \a\0 ;
		_auto_b = \b\1 ;
		_auto_b[0] = \b[0]\2 ;
		_auto_c_0 = \c_0\3 ;
		_auto_c_0[0] = \c_0[0]\4 ;
		_auto_f__a = \f__a\5 ;
		_auto_f__a[0] = \f__a[0]\6 ;
		_auto_g_0__a = \g_0__a\7 ;
		_auto_g_0__a[0] = \g_0__a[0]\8 ;
	end
endmodule

