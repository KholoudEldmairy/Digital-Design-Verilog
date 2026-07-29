module Mux_4_Structural(
 input wire a,
 input wire b,
 input wire c,
 input wire d,
 input wire [1:0]sel,
 output wire out
);

wire m1,m2;
Mux_2 Mux_2_1(
.a(a),
.b(b),
.sel(sel[0]),
.out(m1)
);


Mux_2 Mux_2_2(
.a(c),
.b(d),
.sel(sel[0]),
.out(m2)
);


Mux_2 Mux_2_3(
.a(m1),
.b(m2),
.sel(sel[1]),
.out(out)
);




endmodule