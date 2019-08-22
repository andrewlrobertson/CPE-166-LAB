module myFA(input a, b, cin, output cout, sum);
wire e, f, g;
myHA g1(a, b, g, e);
myHA g2(cin, e, f, sum);
assign cout = f | g;
endmodule