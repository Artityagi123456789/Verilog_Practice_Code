//Testbench Code
module tb();
  
  reg a1,a2,a3,a4;
  wire dout;
  
  top uut (a1,a2,a3,a4,dout);
  
  
  initial begin
    a1 = 1'b1;
    a2 = 1'b0;
    a3 = 1'b1;
    a4 = 1'b1;
    #10; 
    a1 = 1'b1;
    a2 = 1'b1;
    a3 = 1'b0;
    a4 = 1'b1;
    #20;
    
    
    $display("value a1 : %0b, a2 : %0b, a3 : %0b, a4 : %0b, dout : %0b",a1,a2,a3,a4,dout);  
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule

