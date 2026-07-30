module test(
	output reg [31:0] bus__addr
);
	reg [7:0] regs__push;
	reg [7:0] regs__full;
	/*verilator tracing_off*/
	reg [7:0] \regs__push\0 ;
	wire [7:0] \regs__push\0_sens  = 0;
	reg [7:0] \regs__push\1 ;
	wire [7:0] \regs__push\1_sens  = 1;
	reg [7:0] \regs__push\2 ;
	wire [7:0] \regs__push\2_sens  = 2;
	reg [7:0] \regs__push\3 ;
	wire [7:0] \regs__push\3_sens  = 3;
	reg [7:0] \regs__push\4 ;
	wire [7:0] \regs__push\4_sens  = 4;
	reg [7:0] \regs__push\5 ;
	wire [7:0] \regs__push\5_sens  = 5;
	reg [7:0] \regs__push\6 ;
	wire [7:0] \regs__push\6_sens  = 6;
	reg [7:0] \regs__push\7 ;
	wire [7:0] \regs__push\7_sens  = 7;
	reg [7:0] \regs__push\8 ;
	wire [7:0] \regs__push\8_sens  = 8;
	reg [7:0] \regs__push\9 ;
	wire [7:0] \regs__push\9_sens  = 9;
	reg [7:0] \regs__push\10 ;
	wire [7:0] \regs__push\10_sens  = 10;
	reg [7:0] \regs__push\11 ;
	wire [7:0] \regs__push\11_sens  = 11;
	/*verilator tracing_on*/
	always @(*) begin
		if (bus__addr[31:2] == 0) begin
		end
		if (bus__addr[31:2] == 1) begin
		end
		\regs__push\0  = \regs__push\0_sens ;
		\regs__push\1  = \regs__push\1_sens ;
		\regs__push\2  = \regs__push\2_sens ;
		\regs__push\3  = \regs__push\3_sens ;
		\regs__push\4  = \regs__push\4_sens ;
		\regs__push\5  = \regs__push\5_sens ;
		\regs__push\6  = \regs__push\6_sens ;
		\regs__push\7  = \regs__push\7_sens ;
		\regs__push\8  = \regs__push\8_sens ;
		\regs__push\9  = \regs__push\9_sens ;
		\regs__push\10  = \regs__push\10_sens ;
		\regs__push\11  = \regs__push\11_sens ;
	end
	always @(*) begin
		regs__push = \regs__push\0 ;
		regs__push = \regs__push\1 ;
		regs__push = \regs__push\2 ;
		regs__push = \regs__push\3 ;
		regs__push = \regs__push\4 ;
		regs__push = \regs__push\5 ;
		regs__push = \regs__push\6 ;
		regs__push = \regs__push\7 ;
		regs__push = \regs__push\8 ;
		regs__push = \regs__push\9 ;
		regs__push = \regs__push\10 ;
		regs__push = \regs__push\11 ;
	end
endmodule

