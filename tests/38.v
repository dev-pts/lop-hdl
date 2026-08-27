module test(
	input wire clk
);
	always @(posedge clk) begin
		$write("%c", 12);
		$write("%c, %c", 12, 13);
		$fflush();
	end
endmodule

