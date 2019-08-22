module test1(a, b, d0, d1, d2, d3);

input a, b;
output d0, d1, d2, d3;
and g1(d0, ~a, ~b);
and g2(d1, a, ~b);
and g3(d2, ~a, b);
and g4(d3, a, b);

endmodule