module four_one_mux(input i0, i1,i2,i3, sel0,sel1, output y);
  assign y = (sel1) ? (sel0 ? i3:i2) : (sel0 ? i1:i0); 
endmodule
