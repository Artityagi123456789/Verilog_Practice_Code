//2 bit_comparator using data flow modeling

module two_bit_comp(a,b,g,l,e);
input[1:0]a,b;
output g,l,e;

wire[9:1]w;

//instantiate the one bit comp to two bit

one_bit_comp_data com_0(a[0],b[0],w[7],w[6],w[5]);
one_bit_comp_data com_1(a[1],b[1],w[3],w[2],w[1]);

and g1(e,w[1],w[5]);
and g3(l,w[1],w[8]);
and g5(g,w[1],w[9]);

or g2(w[8],w[6],w[2]);
or g4(w[9],w[7],w[3]);
endmodule



//1 bit_comparator using data flow modeling

module one_bit_comp_data(a,b,g,l,e);
input a;
input b;
output g,l,e;

assign g = (a & ~b);
assign l = (~a & b);
assign e = (a ~^ b);

endmodule

