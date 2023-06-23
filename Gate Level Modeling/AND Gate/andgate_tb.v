module tb;
//Data type declaration
reg a,b;
wire c;

//DUT instantiation
andgate a1(.a(a), .b(b), .c(c));

//generate stimuli
	initial begin
		a=0; b=0;
		#1a=0; b=1;
		#1a=1; b=0;
		#1a=1; b=1;
	end
  initial begin
    $monitor("the value of a=%d, b=%d, c=%d", a,b,c);
  end
endmodule
