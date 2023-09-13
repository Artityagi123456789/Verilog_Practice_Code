`include "twobit_onebit.v"

module tb;
reg[1:0]a,b;
wire g,l,e;

two_bit_comp comp_bit(a,b,g,l,e);

initial begin
    repeat(10) begin
    {a,b} =$random;
   	#5;
    $display("Time = %0t,a=%b ,b=%b  ,g=%b,l=%b,e=%b",$time,a,b,g,l,e);
	end
end 	

endmodule



