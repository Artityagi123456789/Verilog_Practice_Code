//Design a verilog code
module tt(a,b,x,y);
input a,b;
output x,y;
  assign x=~a;
  assign y=b;
endmodule
