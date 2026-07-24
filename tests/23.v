module test(
	output reg a__a,
	input wire [1:0] a__b,
	input wire b__a,
	output reg [1:0] b__b,
	input wire c_0__a,
	output reg [1:0] c_0__b,
	input wire c_1__a,
	output reg [1:0] c_1__b
);
	/*verilator tracing_off*/
	reg \a__a\0 ;
	reg [1:0] \b__b\1 ;
	reg [1:0] \b__b\2 ;
	reg [1:0] \b__b\3 ;
	reg [1:0] \b__b\4 ;
	/*verilator tracing_on*/
	always @(*) begin
		\a__a\0  = a__b[0];
		\b__b\1  = c_0__b[0];
		\b__b\2  = c_0__b[1];
		\b__b\3  = c_0__b[0];
		\b__b\4  = c_1__b[0];
	end
	always @(*) begin
		a__a = \a__a\0 ;
		b__b = \b__b\1 ;
		b__b = \b__b\2 ;
		b__b = \b__b\3 ;
		b__b = \b__b\4 ;
	end
endmodule

