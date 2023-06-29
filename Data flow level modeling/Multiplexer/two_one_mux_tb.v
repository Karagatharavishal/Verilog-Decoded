module tb;
  reg i0, i1, sel;
  wire y;
  integer j;
  
  //dut instantiation
  two_one_mux uut(.i0(i0), .i1(i1), .sel(sel), .y(y));
  
  //stimuli generation
  initial begin
    for(j=0; j<2**3; j = j +1)
      begin
        {i0,i1,sel} = j;
        #5;
      end
  end
  
  //monitoring
  initial begin
    $monitor("The value of i0=%b,i1=%b,sel=%b,y=%b",i0,i1,sel,y);
  end
endmodule
  
  
