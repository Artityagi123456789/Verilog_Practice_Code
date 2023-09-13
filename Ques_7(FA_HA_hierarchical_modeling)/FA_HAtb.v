`include "FA_HA.v"

module tb;
reg c,a,b;
wire sum,carry;

FA FA1(sum,carry,a,b,c);


initial
begin
a=1'b0;b=1'b0;c=1'b0;
#5 a=1'b0;b=1'b0;c=1'b1;
#5 a=1'b0;b=1'b1;c=1'b0;
#5 a=1'b0;b=1'b1;c=1'b1;
#5 a=1'b1;b=1'b0;c=1'b0;
#5 a=1'b1;b=1'b0;c=1'b1;
#5 a=1'b1;b=1'b1;c=1'b0;
#5 a=1'b1;b=1'b1;c=1'b1;
end
initial #80 $finish;
endmodule



