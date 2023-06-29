module tb;
  reg a,b,cin;
  wire sum,carry;
  integer j;
  
  //dut instantiation
  fa uut(a,b,cin,sum,carry);
  
  //stimuli generation
  initial begin
    for(j=0;j<2**3;j=j+1)
        begin
          {a,b,cin} = j;
          #5;
        end
  end
  
  initial begin
    $monitor("The value of a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
  end
endmodule
