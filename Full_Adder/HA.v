module HA(

  input wire A,
  input wire B,
  output wire sum,
  output wire cout
);
  
assign sum= A^B;
assign cout = A&B;  
  
  
endmodule
