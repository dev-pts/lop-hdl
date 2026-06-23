module test(
	input wire clk
);
	always @(posedge clk) begin
		$write("%c", 12);
		$fflush();
	end
endmodule

