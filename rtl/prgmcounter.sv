module pc (

    input  logic        clk,
    input  logic        rst,
    input  logic [31:0] next_pc,

    output logic [31:0] pc

);

always_ff @(posedge clk) begin

    if (rst)
        pc <= 32'h00000000;
    else
        pc <= next_pc;

end

endmodule
