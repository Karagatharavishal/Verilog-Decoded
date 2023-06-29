module tb;
  reg a,b;
  wire sum,carry;
  integer j;
  
  //dut instantiation
  ha a1(.a(a),.b(b),.sum(sum),.carry(carry));
  
  //stimuli generation
  initial begin
    for(j=0;j<2**2;j=j+1)
        begin
          {a,b} = j;
          #5;
        end
  end
  
  initial begin
    $monitor("The value of a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
  end
endmodule
