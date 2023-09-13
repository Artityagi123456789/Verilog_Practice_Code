module mux4x1_data(i,sel,out);
input[3:0]i;
input[1:0]sel;

output out;

assign out = (sel1 ? i3: i2) : (sel0 ? i1 : i0);

endmodule
