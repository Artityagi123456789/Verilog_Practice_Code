// Code your design here
module top(
input a,b,
output reg c,d
);
 
  
  task logic_task(input a,b,output c,d);
    begin
    c = a & b;
    d = a | b;
    end
  endtask
    
  always@(*)
    begin
      logic_task(a,b,c,d); 
    end 
endmodule
