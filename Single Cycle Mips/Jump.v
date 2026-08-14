module Jump (
    input  wire [3:0] ALU_adder_out_one,
    input  wire [25:0] instruction,
    output wire [31:0] jump_address
);

    assign jump_address = {
        ALU_adder_out_one,
        instruction,
        2'b00
    };

endmodule
