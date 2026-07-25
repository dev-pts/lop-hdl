module test(
	input wire a,
	output reg b,
	inout wire c
);
	localparam A = 1;
	reg d;
	/*verilator tracing_off*/
	reg \b\0 ;
	wire \b\0_sens  = 1;
	reg \b\1 ;
	reg \b\1_we ;
	reg \b\2 ;
	reg \b\2_we ;
	/*verilator tracing_on*/
	always @(*) begin
		\b\1  = 0;
		\b\1_we  = 0;
		\b\2  = 0;
		\b\2_we  = 0;
		\b\0  = \b\0_sens ;
		if (d == 2) begin
			\b\1  = 2;
			\b\1_we  = 1;
		end else begin
			\b\2  = 4;
			\b\2_we  = 1;
		end
	end
	always @(*) begin
		b = 0;
		b = 0;
		b = \b\0 ;
		if (\b\1_we ) begin
			b = \b\1 ;
		end
		if (\b\2_we ) begin
			b = \b\2 ;
		end
	end
	always @(posedge a) begin
		d <= 1;
	end
endmodule

