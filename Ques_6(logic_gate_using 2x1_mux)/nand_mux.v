//nand gate using 2x1_mux..


module mux2x1(i,sel,y);
input[1:0]i;
input sel;
output reg y;

// i[1] i[0]
mux2x1 mux1({~b,1'b1},a,y);  //nand gate


endmodule
    

