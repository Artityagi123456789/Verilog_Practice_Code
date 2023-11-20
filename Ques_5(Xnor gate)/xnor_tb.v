//XNOR Gate testbench file

`include "Xnor_gate.v"
module tb;
  reg a,b;
  wire out;
  
  XNOR dut(a,b,out);
  
  initial
    begin
      $monitor("\ta=%b b=%b out=%b",a,b,out);
      a=1'b0;b=1'b0;
      #5 a=1'b0;b=1'b1;
      #5 a=1'b1;b=1'b0;
      #5 a=1'b1;b=1'b1;
    end
endmodule
