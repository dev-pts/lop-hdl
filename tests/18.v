module test();
	reg a__b;
	wire a__c;
	Ext #(
		.P1(20),
		.P2(24)
	) a(
		.b(a__b),
		.c(a__c)
	);
endmodule

