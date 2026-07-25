module test();
	reg [2:0] a;
	reg b;
	reg [1:0] c;
	reg d [1:0];
	/*verilator tracing_off*/
	reg [2:0] \a\0 ;
	wire [2:0] \a\0_sens  = 0;
	reg [4:0] \{a,c}\1 ;
	reg \{a,c}\1_we ;
	reg \d[1]\2 ;
	/*verilator tracing_on*/
	always @(*) begin
		\{a,c}\1  = 0;
		\{a,c}\1_we  = 0;
		\a\0  = \a\0_sens ;
		if (b) begin
			\{a,c}\1  = { 5 { b } };
			\{a,c}\1_we  = 1;
		end
		\d[1]\2  = d[0] | b;
	end
	always @(*) begin
		{ a, c } = 0;
		a = \a\0 ;
		if (\{a,c}\1_we ) begin
			{ a, c } = \{a,c}\1 ;
		end
		d[1] = \d[1]\2 ;
	end
endmodule

