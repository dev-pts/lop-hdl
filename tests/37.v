module test();
	reg [1:0] a;
	reg [2:0] b;
	/* hidden locals */
	/*verilator tracing_off*/
	reg \a[1]\0 ;
	/*verilator tracing_on*/
	/* ---------------- */
	always @(*) begin
		\a[1]\0  = b[2:1];
	end
	always @(*) begin
		a[1] = \a[1]\0 ;
	end
endmodule

