//testbench
`include "truth_table.v"
module tb;
  reg a,b;
  wire x,y;
  
 tt  dut(a,b,x,y);
  
 initial
    begin
      $monitor("\ta=%0b b=%0b x=%0b y=%0b",a,b,x,y);
         a=1'b0;b=1'b0;
      #5 a=1'b0;b=1'b1;
      #5 a=1'b1;b=1'b0;
      #5 a=1'b1;b=1'b1;
    end
endmodule
