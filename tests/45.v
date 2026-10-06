module SubModule();
	localparam A = 1;
	localparam B = 1;
	localparam C = 1;
	localparam D = 1;
	localparam E = 4;
endmodule

module SubModule_A_1_B_2_C_3_D_3();
	localparam A = 1;
	localparam B = 2;
	localparam C = 3;
	localparam D = 3;
	localparam E = 9;
endmodule

module test();
	localparam A = 1;
	localparam B = 2;
	localparam C = 3;
	SubModule sub();
	SubModule_A_1_B_2_C_3_D_3 sub2();
	reg [9:0] n;
	/* hidden locals */
	/*verilator tracing_off*/
	reg [9:0] \n\0 ;
	wire [9:0] \n\0_sens  = 1;
	reg [9:0] \n\1 ;
	wire [9:0] \n\1_sens  = 2;
	reg [9:0] \n\2 ;
	wire [9:0] \n\2_sens  = 3;
	reg [9:0] \n\3 ;
	wire [9:0] \n\3_sens  = 1;
	reg [9:0] \n\4 ;
	wire [9:0] \n\4_sens  = 1;
	reg [9:0] \n\5 ;
	wire [9:0] \n\5_sens  = 1;
	reg [9:0] \n\6 ;
	wire [9:0] \n\6_sens  = 1;
	reg [9:0] \n\7 ;
	wire [9:0] \n\7_sens  = 4;
	reg [9:0] \n\8 ;
	reg [9:0] \n\9 ;
	reg [9:0] \n\10 ;
	wire [9:0] \n\10_sens  = 1;
	reg [9:0] \n\11 ;
	wire [9:0] \n\11_sens  = 2;
	reg [9:0] \n\12 ;
	wire [9:0] \n\12_sens  = 3;
	reg [9:0] \n\13 ;
	wire [9:0] \n\13_sens  = 3;
	reg [9:0] \n\14 ;
	wire [9:0] \n\14_sens  = 9;
	reg [9:0] \n\15 ;
	reg [9:0] \n\16 ;
	/*verilator tracing_on*/
	/* ---------------- */
	always @(*) begin
		\n\0  = \n\0_sens ;
		\n\1  = \n\1_sens ;
		\n\2  = \n\2_sens ;
		\n\3  = \n\3_sens ;
		\n\4  = \n\4_sens ;
		\n\5  = \n\5_sens ;
		\n\6  = \n\6_sens ;
		\n\7  = \n\7_sens ;
		\n\8  = n[1:0];
		\n\9  = n[4:0];
		\n\10  = \n\10_sens ;
		\n\11  = \n\11_sens ;
		\n\12  = \n\12_sens ;
		\n\13  = \n\13_sens ;
		\n\14  = \n\14_sens ;
		\n\15  = n[3:0];
		\n\16  = n[9:0];
	end
	always @(*) begin
		n = \n\0 ;
		n = \n\1 ;
		n = \n\2 ;
		n = \n\3 ;
		n = \n\4 ;
		n = \n\5 ;
		n = \n\6 ;
		n = \n\7 ;
		n = \n\8 ;
		n = \n\9 ;
		n = \n\10 ;
		n = \n\11 ;
		n = \n\12 ;
		n = \n\13 ;
		n = \n\14 ;
		n = \n\15 ;
		n = \n\16 ;
	end
endmodule

