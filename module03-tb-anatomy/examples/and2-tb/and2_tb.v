// and2_tb.v — classic TB anatomy (DUT vs tb, reg/wire, initial)
module and2(input a, b, output y);
  assign y = a & b;
endmodule

module tb;
  reg a, b;       // stimulus — TB drives these
  wire y;         // observe — DUT drives this net

  and2 dut(.a(a), .b(b), .y(y));

  initial begin
    a = 0; b = 0;
    #10 a = 1;
    #10 b = 1;
    #10 $display("y=%b (expect 1)", y);
    #10 $finish;
  end
endmodule
