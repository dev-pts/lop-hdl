module test(
	output reg [31:0] bus__addr
);
	reg [7:0] regs__push;
	reg [7:0] regs__full;
	reg [7:0] regs__pop;
	/*verilator tracing_off*/
	reg [31:0] \bus__addr\0 ;
	reg \bus__addr\0_we ;
	reg [31:0] \bus__addr\1 ;
	reg \bus__addr\1_we ;
	reg [31:0] \bus__addr\2 ;
	reg \bus__addr\2_we ;
	reg [7:0] \regs__push\3 ;
	reg \regs__push\3_we ;
	reg [31:0] \bus__addr\4 ;
	reg \bus__addr\4_we ;
	reg [31:0] \bus__addr\5 ;
	reg \bus__addr\5_we ;
	/*verilator tracing_on*/
	always @(*) begin
		\bus__addr\0  = 0;
		\bus__addr\0_we  = 0;
		\bus__addr\1  = 0;
		\bus__addr\1_we  = 0;
		\bus__addr\2  = 0;
		\bus__addr\2_we  = 0;
		\regs__push\3  = 0;
		\regs__push\3_we  = 0;
		\bus__addr\4  = 0;
		\bus__addr\4_we  = 0;
		\bus__addr\5  = 0;
		\bus__addr\5_we  = 0;
		if (bus__addr[31:2] == 0) begin
			\bus__addr\0  = 0;
			\bus__addr\0_we  = 1;
		end
		if (bus__addr[31:2] == 0) begin
			\bus__addr\1  = 0;
			\bus__addr\1_we  = 1;
		end
		if (bus__addr[31:2] == 1) begin
			\bus__addr\2  = 0;
			\bus__addr\2_we  = 1;
		end
		if (bus__addr[31:2] == 0) begin
			\regs__push\3  = 0;
			\regs__push\3_we  = 1;
		end
		if (bus__addr[1]) begin
			\bus__addr\4  = 3;
			\bus__addr\4_we  = 1;
		end
		if (bus__addr[1]) begin
			if (bus__addr[1]) begin
				if (bus__addr[1]) begin
					\bus__addr\5  = 0;
					\bus__addr\5_we  = 1;
				end
			end
		end
	end
	always @(*) begin
		bus__addr = 0;
		bus__addr = 0;
		bus__addr = 0;
		regs__push = 0;
		bus__addr = 0;
		bus__addr = 0;
		if (\bus__addr\0_we ) begin
			bus__addr = \bus__addr\0 ;
		end
		if (\bus__addr\1_we ) begin
			bus__addr = \bus__addr\1 ;
		end
		if (\bus__addr\2_we ) begin
			bus__addr = \bus__addr\2 ;
		end
		if (\regs__push\3_we ) begin
			regs__push = \regs__push\3 ;
		end
		if (\bus__addr\4_we ) begin
			bus__addr = \bus__addr\4 ;
		end
		if (\bus__addr\5_we ) begin
			bus__addr = \bus__addr\5 ;
		end
	end
endmodule

