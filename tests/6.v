module test(
	input wire a,
	output reg b,
	inout wire c
);
	localparam A = 1;
	always @(*) begin
		if (a) begin
		end
	end
endmodule

