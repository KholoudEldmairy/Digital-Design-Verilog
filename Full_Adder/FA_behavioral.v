module FA_behavioral(

input wire A,
input wire B,
input wire Cin,

output reg Sum_b,
output reg Carry_out_b

);


//behave
 always @(*)
 begin
   {Carry_out_b,Sum_b}= A + B + Cin ;
 end
 
endmodule
