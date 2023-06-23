module tb;
//Data type declaration
reg a,b;
wire sum,carry;

//DUT instantiation
  ha a1(.a(a), .b(b), .sum(sum), .carry(carry));

//generate stimuli
	initial begin
		a=0; b=0;
		#1a=0; b=1;
		#1a=1; b=0;
		#1a=1; b=1;
	end
  initial begin
    $monitor("the value of a=%d, b=%d, sum=%d, carry=%d", a,b,sum,carry);
  end
endmodule
