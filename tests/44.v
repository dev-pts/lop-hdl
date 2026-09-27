module test();
	reg [2:0] d;
	reg [1 * 8 - 1:0] str_d;
	reg [2:0] f [1:0];
	reg [1 * 8 - 1:0] str_f [1:0];
	/*verilator tracing_off*/
	reg [2:0] \d\0 ;
	wire [2:0] \d\0_sens  = 0;
	reg [2:0] \f[0]\1 ;
	wire [2:0] \f[0]\1_sens  = 0;
	reg \d[1]\2 ;
	wire \d[1]\2_sens  = 1;
	reg \f[1][2]\3 ;
	wire \f[1][2]\3_sens  = 1;
	reg [2:0] \d\4 ;
	wire [2:0] \d\4_sens  = 4;
	reg [2:0] \f[0]\5 ;
	wire [2:0] \f[0]\5_sens  = 2;
	/*verilator tracing_on*/
	always @(*) begin
		\d\0  = \d\0_sens ;
		\f[0]\1  = \f[0]\1_sens ;
		\d[1]\2  = \d[1]\2_sens ;
		\f[1][2]\3  = \f[1][2]\3_sens ;
		\d\4  = \d\4_sens ;
		\f[0]\5  = \f[0]\5_sens ;
	end
	always @(*) begin
		d = \d\0 ;
		f[0] = \f[0]\1 ;
		d[1] = \d[1]\2 ;
		f[1][2] = \f[1][2]\3 ;
		d = \d\4 ;
		f[0] = \f[0]\5 ;
	end
endmodule

