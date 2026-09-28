module test(
	input wire a,
	output reg b,
	inout wire c
);
	localparam A = 1;
	reg d;
	/* hidden locals */
	/*verilator tracing_off*/
	reg \b\0 ;
	reg \b\1 ;
	wire \b\1_sens  = 1;
	/*verilator tracing_on*/
	/* ---------------- */
	always @(*) begin
		\b\0  = 1'bz;
		\b\1  = \b\1_sens ;
	end
	always @(*) begin
		b = \b\0 ;
		b = \b\1 ;
	end
	always @(posedge a) begin
		d <= 1;
	end
endmodule

