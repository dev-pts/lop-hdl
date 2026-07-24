module test();
	localparam INIT_FILE = "mem.hex";
	reg [7:0] mem [255:0];
	reg dummy;
	reg dummy2;
	/*verilator tracing_off*/
	reg \dummy\0 ;
	/*verilator tracing_on*/
	initial begin
		$readmemh("mem.hex", mem);
	end
	always @(*) begin
		\dummy\0  = $signed(dummy2);
	end
	always @(*) begin
		dummy = \dummy\0 ;
	end
	always @(posedge dummy or negedge dummy) begin
		dummy <= $signed(dummy) + 3;
	end
endmodule

