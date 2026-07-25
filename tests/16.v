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
	reg [2:0] \c__y[0]\0 ;
	wire [2:0] \c__y[0]\0_sens  = 1;
	reg [2:0] \c__y[1]\1 ;
	wire [2:0] \c__y[1]\1_sens  = 1;
	reg [2:0] \c__y[2]\2 ;
	wire [2:0] \c__y[2]\2_sens  = 1;
	/*verilator tracing_on*/
	always @(*) begin
		\c__y[0]\0  = \c__y[0]\0_sens ;
		\c__y[1]\1  = \c__y[1]\1_sens ;
		\c__y[2]\2  = \c__y[2]\2_sens ;
	end
	always @(*) begin
		c__y[0] = \c__y[0]\0 ;
		c__y[1] = \c__y[1]\1 ;
		c__y[2] = \c__y[2]\2 ;
	end
endmodule

