//Testbench Code:

module tb();
  reg a,b,c,d;
  wire y;
  reg [1:0] sel;
  
  top uut(a,b,c,d,sel,y);
  
  initial begin
    a = 0;
    b = 0;
    c = 0;
    d = 0;
  end
  
  always #5 a = ~a;
  always #10 b = ~b;
  always #15 c = ~c;
  always #20 d = ~d;
  
  initial begin
    sel = 0;
    #20;
    sel = 2'b1x;
    #30;
    sel = 2'bx1;
    #50;
    sel = 2'bzz;
    
  end 
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
    #200;
    $finish;
  end 
endmodule

