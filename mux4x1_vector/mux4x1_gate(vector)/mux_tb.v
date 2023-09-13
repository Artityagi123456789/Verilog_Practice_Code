`inclde "mux4x1_gate.v"

module mux_tb;
reg[3:0]i;
reg[1:0]sel;
wire y;


mux8x1 mux(i,sel,y);

initial begin
repeat(10) begin
{i,sel} = $random;
#5;
$display("time=%t,i=%b,sel=%b ,y=%b" , $time,i,sel,y);

end
end

endmodule
