module test(
	output reg [31:0] bus__addr
);
	reg [7:0] regs__push;
	reg [7:0] regs__full;
	reg [7:0] regs__pop;
	/*verilator tracing_off*/
	reg [7:0] \regs__push\0 ;
	reg \regs__push\0_we ;
	/*verilator tracing_on*/
	always @(*) begin
		\regs__push\0  = 0;
		\regs__push\0_we  = 0;
		if (bus__addr[31:2] == 0) begin
		end
		if (bus__addr[31:2] == 0) begin
		end
		if (bus__addr[31:2] == 1) begin
		end
		if (bus__addr[31:2] == 0) begin
			\regs__push\0  = 0;
			\regs__push\0_we  = 1;
		end
		if (bus__addr[0]) begin
		end
	end
	always @(*) begin
		regs__push = 0;
		if (\regs__push\0_we ) begin
			regs__push = \regs__push\0 ;
		end
	end
endmodule

