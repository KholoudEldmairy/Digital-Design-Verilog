
module alu
#(parameter WIDTH=8)
(
input wire [WIDTH-1:0] in_a,
input wire [WIDTH-1:0] in_b,
input wire [2:0] opcode,
output reg [WIDTH-1:0] alu_out,
output wire a_is_zero
);


assign a_is_zero=(in_a == 'b0)?1'b1:1'b0;
always@(*)
  begin
        alu_out = 'b0;
    casex(opcode)
        3'b00x : alu_out=in_a;
        3'b010 : alu_out=in_a + in_b;
        3'b011 : alu_out=in_a & in_b;
        3'b100 : alu_out=in_a ^ in_b;
        3'b101 : alu_out=in_b;
        3'b11x : alu_out=in_a;
        
    endcase
  end
  
  
endmodule