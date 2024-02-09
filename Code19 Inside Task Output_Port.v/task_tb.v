//Testbench:

module tb();
  
reg a,b;
wire c,d;
  
  top uut(a,b,c,d);  
 
initial begin
a = 1;
b = 1;
#10;
$display("a : %0b, b :%0b, and c : %0b, d: %0b",a,b,c,d);
  
a = 1;
b = 0;
#10;
$display("a : %0b, b :%0b, and c : %0b, d: %0b",a,b,c,d);
end
  
endmodule

