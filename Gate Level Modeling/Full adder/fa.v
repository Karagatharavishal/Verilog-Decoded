module fa(input a,b,cin, output sum, carry);
  wire w1, w2, w3;

  // XOR gates for the sum output
  xor(w1, a, b);
  xor(sum, w1, cin);

  // AND gates for the carry output
  and(w2, a, b);
  and(w3, w1, cin);
  or(carry, w2, w3);
  
endmodule
