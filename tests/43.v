module test(
	output reg [31:0] bus__addr
);
	reg [7:0] regs__push;
	reg [7:0] regs__full;
	reg [7:0] regs__pop;
	/*verilator tracing_off*/
	reg [7:0] \regs__push\0 ;
	wire [7:0] \regs__push\0_sens  = 0;
	/*verilator tracing_on*/
	always @(*) begin
		if (bus__addr[31:2] == 0) begin
		end
		if (bus__addr[31:2] == 0) begin
		end
		if (bus__addr[31:2] == 1) begin
		end
		\regs__push\0  = \regs__push\0_sens ;
		if (bus__addr[0]) begin
		end
	end
	always @(*) begin
		regs__push = \regs__push\0 ;
	end
endmodule

