//verilog code for mux4x1 using gate/structure level modeling.

module mux4x1_g(out,sel,i);

output out;
input[3:0]i;
input[1:0]s; //select lines

wire[3:0]w;

not g1(s0bar,s0),
not g2(s1bar,s1);

//instantiating and gate
and g3(w1,i0,s0bar,s1bar),
and g4(w2,i1,s0bar,s1),
and g5(w3,i2,s0,sbar),
and g6(w4,i3,s0,s1);
 
//instantiating or gate 
or  g7(out,w1,w2,w3,w4);

endmodule



