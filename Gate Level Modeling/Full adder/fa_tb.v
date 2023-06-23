// Code your testbench here
// or browse Examples
module tb;

  reg a,b,cin;
  wire sum,carry;
  
  //dut instantiation
  fa a1(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
  
  //stimuli generation
  initial begin
    a=0;b=0;cin=0;
    #2a=0;b=0;cin=1;
    #2a=0;b=1;cin=0;
    #2a=0;b=1;cin=1;
    #2a=1;b=0;cin=0;
    #2a=1;b=0;cin=1;
    #2a=1;b=1;cin=0;
    #2a=1;b=1;cin=1;
  end
  
  //monitoring
  initial begin
    $monitor("The value of a=%d,b=%d,cin=%d,sum=%d,carry=%d",a,b,cin,sum,carry);
  end
endmodule
