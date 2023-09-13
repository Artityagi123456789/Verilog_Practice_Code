module FA_gate(a,b,c,sum,cout);
input a,b,c;
output sum,cout;
wire w1,c1,c2,c3,out1;

xor x1(w1,a,b);
xor x2(sum,a,b);

and a1(c1,a,b);
and a2(c2,b,c);
and a3(c3,a,c);

or  o1(out1,c1,c2);
or  o2(cout,out1,c3);

endmodule
