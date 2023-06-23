module tb;
//Data type declaration
reg a,b;
Wire c;

//DUT instantiation
andgate a1(.a(a), .b(b), .c(c));

//generate stimuli
	initial begin
		a=0; b=0;
		a=0; b=1;
		a=1; b=0;
		a=1; b=1;
	end
endmodule
