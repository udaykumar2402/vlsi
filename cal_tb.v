module clb_tb;
  reg [2:0]a;
  reg [2:0]b;
  reg c;
  wire [2:0]s,ca;
  cal dut (a,b,c,cout,s);
  initial begin
    repeat(4) begin
    {a,b,c}=$random;
    #100;
   
      $finish;
    end
  end
  initial begin 
    $monitor("a=%b,b=%b,c=%b,sum[0]=%b,sum[1]=%b,sum[2]=%bcout=%b",a,b,c,s[0],s[1],s[2],cout);
  end
endmodule
