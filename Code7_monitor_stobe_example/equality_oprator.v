module top;
  reg[3:0]a;  
  reg[3:0]b;
 initial begin
   a=4'b1101;
   b=4'b1z0x;
   $display(" a = %0b,b=%b", a,b,a==b);       
   $display(" a = %0b,b=%0b", a,b,a===b);
 end
endmodule  


Output:- Equality_oprator
// a = 1101,b=1z0xx
// a = 1101,b=1z0x0
