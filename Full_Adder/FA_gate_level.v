module FA_gate_level(

input wire A,
input wire B,
input wire Cin,

output wire Sum_gl,
output wire Carry_out_gl

);




wire x1,x2,x3;



xor(x1,A,B);
xor(Sum_gl,x1,Cin);
and(x2,A,B);
and(x3,x1,Cin);
or(Carry_out_gl,x2,x3);
  
endmodule

