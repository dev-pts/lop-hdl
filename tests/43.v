module test(
	output reg [31:0] bus__addr
);
	reg [7:0] regs__push;
	reg [7:0] regs__full;
	always @(*) begin
		if (bus__addr[31:2] == 0) begin
		end
		if (bus__addr[31:2] == 1) begin
		end
	end
endmodule

