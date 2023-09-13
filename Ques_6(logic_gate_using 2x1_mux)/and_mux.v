// design and gate using 2x1mux....

module mux2x1(i,sel,y);
input[1:0]i;
input sel;
output y;

// i[1] i[0]
mux2x1 mux1({b,1'b0},a,y);  //and gate


endmodule
    






