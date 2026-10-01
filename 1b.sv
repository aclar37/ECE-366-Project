module one_bit_full_adder(A, B, Cin, S, Cout);  

  input A, B, Cin;
  output S, Cout;
  
  wire sum1;
  wire carry1;
  wire carry2;
  
  xor g1 (sum1, A, B);
  and g2 (carry1, A, B);
  
  xor g3 (S, sum1, Cin);
  and g4 (carry2, sum1, Cin);
  
  or g5(Cout, carry1, carry2);

endmodule
