// Code your testbench here
// or browse Examples
//module declaration
module tb;

//data type declaration
  reg a,b;
  wire y;
  
//DUT instantiation note: name of the DUT should not be used anywhere in the code: i.e., a2 should not be declared earlier in the code
  xnor_gate a2(a,b,y);
  
//generate stimuli
  initial begin
    a=0; b=0;
    #2 a=0; b=1;
    #2 a=1; b=0;
    #2 a=1; b=1;
  end
  
//monitoring
  initial begin
    $monitor("the value of a = %b, b = %b, y = %b", a, b, y);
  end
endmodule
