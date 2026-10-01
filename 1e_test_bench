module testbench;

  	reg [3:0] A, B;
  	reg Cin;
  	wire [3:0] S_rca, S_rcs;
  	wire Cout_rca, Cout_rcs;

    four_bit_RCA dut_rca(
        .A(A),
        .B(B),
      .Cin(Cin),
      .S(S_rca),
      .Cout(Cout_rca)
    );
  
  	four_bit_RCS dut_rcs(
        .A(A),
        .B(B),
      .Cin(Cin),
      .S(S_rcs),
      .Cout(Cout_rcs)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

      $display("A    B    Cin | Cout_rca S_rca | Cout_rcs S_rcs");
      $monitor("%b %b  %b  |   %b       %b | %b        %b",
                 A, B, Cin, Cout_rca, S_rca, Cout_rcs, S_rcs);

      A = 5; B = 3; Cin = 0; #10; // 1. Unsigned addition
      A = 9; B = 5; Cin = 0; #10; // 2. unsigned sub
      A = 3; B = -2; Cin = 0; #10; //3. signed addition (3 + (-2) = 1) 
      A = 2; B = -3; Cin = 0; #10; // 4. Signed sub (2 - (-3) = 5)
        A = 12; B = 5; Cin = 0; #10; //5. Carry out generated

        $finish;
    end

endmodule
