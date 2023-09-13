`include "mux4x1.v"

module tb;

reg[3:0]i;
reg[1:0]sel;

wire y;

mux4x1_b mux(i,sel,y);

initial begin
    repeat(6) begin
    {i,sel} =$random();
   	#5;
$display("sel=%b ,i=%b,y=%b" ,sel,i,y);
	end
  end 	

endmodule

