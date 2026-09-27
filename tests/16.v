module SubModule(
	input wire [2:0] y
);
	localparam Z = 3;
endmodule

module test();
	reg [2:0] c__y;
	SubModule c(
		.y(c__y)
	);
	/*verilator tracing_off*/
	reg \c__y[0]\0 ;
	wire \c__y[0]\0_sens  = 1;
	reg \c__y[1]\1 ;
	wire \c__y[1]\1_sens  = 1;
	reg \c__y[2]\2 ;
	wire \c__y[2]\2_sens  = 1;
	reg \c__y[2]\3 ;
	wire \c__y[2]\3_sens  = 0;
	reg \c__y[1]\4 ;
	wire \c__y[1]\4_sens  = 1;
	reg \c__y[0]\5 ;
	wire \c__y[0]\5_sens  = 2;
	reg \c__y[0]\6 ;
	wire \c__y[0]\6_sens  = 0;
	reg \c__y[2]\7 ;
	wire \c__y[2]\7_sens  = 1;
	reg \c__y[1]\8 ;
	wire \c__y[1]\8_sens  = 2;
	reg \c__y[0]\9 ;
	wire \c__y[0]\9_sens  = 3;
	/*verilator tracing_on*/
	always @(*) begin
		\c__y[0]\0  = \c__y[0]\0_sens ;
		\c__y[1]\1  = \c__y[1]\1_sens ;
		\c__y[2]\2  = \c__y[2]\2_sens ;
		\c__y[2]\3  = \c__y[2]\3_sens ;
		\c__y[1]\4  = \c__y[1]\4_sens ;
		\c__y[0]\5  = \c__y[0]\5_sens ;
		\c__y[0]\6  = \c__y[0]\6_sens ;
		\c__y[2]\7  = \c__y[2]\7_sens ;
		\c__y[1]\8  = \c__y[1]\8_sens ;
		\c__y[0]\9  = \c__y[0]\9_sens ;
	end
	always @(*) begin
		c__y[0] = \c__y[0]\0 ;
		c__y[1] = \c__y[1]\1 ;
		c__y[2] = \c__y[2]\2 ;
		c__y[2] = \c__y[2]\3 ;
		c__y[1] = \c__y[1]\4 ;
		c__y[0] = \c__y[0]\5 ;
		c__y[0] = \c__y[0]\6 ;
		c__y[2] = \c__y[2]\7 ;
		c__y[1] = \c__y[1]\8 ;
		c__y[0] = \c__y[0]\9 ;
	end
endmodule

