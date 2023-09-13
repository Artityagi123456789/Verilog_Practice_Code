`include"xnor_mux.v"


module xnor_tb;
reg a,b;
wire y;

mux2x1 mux(a,b,y);
   initial begin
	repeat(10)begin
	{a,b} = $random;
	#5;
	$display("a=%b, b=%b,   y=%b" , a,b,y);
	end
   end

endmodule   
