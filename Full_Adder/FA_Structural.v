module FA_HA(
input wire A,
input wire B,
input wire Cin,

output wire Sum,
output wire Carry
);

wire x1,x2,x3;
HA HA_1(

.A(A),
.B(B),
.sum(x1),
.cout(x2)

);

HA HA_2(

.A(x1),
.B(Cin),
.sum(Sum),
.cout(x3)

);  

assign Carry= x3|x2;


endmodule
