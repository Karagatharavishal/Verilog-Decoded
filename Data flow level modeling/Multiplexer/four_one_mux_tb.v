module tb;
  reg i0, i1,i2,i3, sel0, sel1;
  wire y;
  integer j;
  
  //dut instantiation
  four_one_mux uut(.i0(i0), .i1(i1), .i2(i2), .i3(i3), .sel1(sel1), .sel0(sel0), .y(y));
  
  //stimuli generation
  initial begin
    for(j=0; j<2**6; j = j +1)
      begin
        {i0,i1,i2,i3,sel0,sel1} = j;
        #5;
      end
  end
  
  //monitoring
  initial begin
    $monitor("The value of i0=%b,i1=%b,i2=%b,i3=%b,sel0=%b, sel1=%b ,y=%b",i0,i1,i2,i3,sel0,sel1,y);
  end
endmodule
