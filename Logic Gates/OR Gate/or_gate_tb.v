module tb;
  reg a,b;
  wire c;
  
  //DUT
  or_gate a2(a,b,c);
  
  //generate stimuli
  initial begin
    a=0; b=0;
    #2 a=0; b=1;
    #2 a=1; b=0;
    #2 a=1; b=1;
  end
  
  //monitoring
  initial begin
    $monitor("the value of a = %b, b = %b, c = %b", a, b, c);
  end
endmodule
