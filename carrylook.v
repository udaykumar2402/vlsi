module cal(a,b,c,cout,s);
  input [2:0]a;
  input [2:0]b;
  input c;
  output [2:0]s,cout;
  wire [2:0]p;
  wire[2:0]g,c1,c2;
  assign p=a^b;
  assign g=a &b;
  assign c1=g[0] | c1 & p[0];
  assign c2=g[1] |(g[0] | c1 & p[0]) & p[1];
  assign cout=g[2] | (g[1] |(g[0] | c1 & p[0]) & p[1]) & p[2];
  assign s[0]=p[0]^c;
  assign s[1]=p[1]^c1;
  assign s[2]=p[2]^c2;
  
endmodule


