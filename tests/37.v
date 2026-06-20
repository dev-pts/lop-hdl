module test();
	reg [1:0] a;
	reg [2:0] b;
	always @(a[1], b[2:1]) begin
		a[1] <= b[2:1];
	end
endmodule

