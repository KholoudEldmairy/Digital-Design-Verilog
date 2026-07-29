module Mux_4_GL(
     input wire a,
     input wire b,
     input wire c,
     input wire d,
     input wire [1:0] sel,
     output wire out


);
wire a1,a2,a3,a4,not_sel0,not_sel1;
not(not_sel0,sel[0]);
not(not_sel1,sel[1]);

and(a1,a,not_sel1,not_sel0);
and(a2,b,not_sel1,sel[0]);
and(a3,c,sel[1],not_sel0);
and(a4,d,sel[1],sel[0]);

or(out,a1,a2,a3,a4);



endmodule
