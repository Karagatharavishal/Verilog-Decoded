module tb;
  reg a;
  wire b;
  
  //DUT
  not_gate a2(a,b);
  
  //generate stimuli
  initial begin
    a=0;
    #2 a=1;
  end
  
  //monitoring
  initial begin
    $monitor("the value of a = %b, b = %b", a, b);
  end
endmodule
