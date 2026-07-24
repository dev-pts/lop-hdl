module test(
	output reg c__a__b,
	output reg d_0__a__b,
	output reg d_1__a__b
);
	/*verilator tracing_off*/
	reg \c__a__b\0 ;
	wire \c__a__b\0_sens  = 0;
	reg \c__a__b\1 ;
	wire \c__a__b\1_sens  = 1;
	reg \c__a__b\2 ;
	wire \c__a__b\2_sens  = 1;
	reg \c__a__b\3 ;
	wire \c__a__b\3_sens  = 0;
	reg \d_0__a__b\4 ;
	wire \d_0__a__b\4_sens  = 0;
	reg \d_0__a__b\5 ;
	wire \d_0__a__b\5_sens  = 1;
	reg \d_1__a__b\6 ;
	wire \d_1__a__b\6_sens  = 0;
	reg \d_1__a__b\7 ;
	wire \d_1__a__b\7_sens  = 1;
	/*verilator tracing_on*/
	always @(*) begin
		\c__a__b\0  = \c__a__b\0_sens ;
		\c__a__b\1  = \c__a__b\1_sens ;
		\c__a__b\2  = \c__a__b\2_sens ;
		\c__a__b\3  = \c__a__b\3_sens ;
		\d_0__a__b\4  = \d_0__a__b\4_sens ;
		\d_0__a__b\5  = \d_0__a__b\5_sens ;
		\d_1__a__b\6  = \d_1__a__b\6_sens ;
		\d_1__a__b\7  = \d_1__a__b\7_sens ;
	end
	always @(*) begin
		c__a__b = \c__a__b\0 ;
		c__a__b = \c__a__b\1 ;
		c__a__b = \c__a__b\2 ;
		c__a__b = \c__a__b\3 ;
		d_0__a__b = \d_0__a__b\4 ;
		d_0__a__b = \d_0__a__b\5 ;
		d_1__a__b = \d_1__a__b\6 ;
		d_1__a__b = \d_1__a__b\7 ;
	end
endmodule

