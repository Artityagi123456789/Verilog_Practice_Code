// 2bit Full Adder File
module full_add(sum,cout,a,b,cin);
  output [1:0]sum;
  output cout;
  input [1:0]a,b;
  input cin;
  wire c;
  fa fa1(sum[0],c,a[0],b[0],cin);
  fa fa2(sum[1],cout,a[1],b[1],c);
endmodule

module fa(output sum,cout,input a,b,cin);
  assign sum=(a^b)^cin;
  assign cout=(a&b)|(cin&(a^b));
endmodule
