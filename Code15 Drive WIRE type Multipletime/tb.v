//Testbench Code

module tb();
  
  reg a1,a2,a3,a4,en1, en2;
  wire dout;
  
  top uut (a1,a2,a3,a4,en1,en2,dout);

  initial begin
    a1 = 1'b1;
    a2 = 1'b0;
    a3 = 1'b1;
    a4 = 1'b1;
    en1 = 0;
    en2 = 1;
    #10; 
 
    $display("value a1 : %0b, a2 : %0b, a3 : %0b, a4 : %0b, dout : %0b",a1,a2,a3,a4,dout);  
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule 
