// Code your design here
module top (
input a1,a2,a3,a4,
output dout
);
  
reg temp;
    
  always@(*)
    begin
    temp = a1 & a2;
    temp = a3 & a4;
    end
  
assign dout = temp; 
  
endmodule
