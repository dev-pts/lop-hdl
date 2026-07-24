module test(
	input wire a,
	output reg b,
	inout wire c
);
	localparam A = 1;
	reg _auto_c;
	assign c = _auto_c;
	reg d;
	/*verilator tracing_off*/
	reg \b\0 ;
	wire \b\0_sens  = 1;
	/*verilator tracing_on*/
	always @(*) begin
		\b\0  = \b\0_sens ;
	end
	always @(*) begin
		b = \b\0 ;
	end
	always @(posedge a) begin
		d <= 1;
	end
endmodule

