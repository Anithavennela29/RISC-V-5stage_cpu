module prgmcount(input clk,
                input rst, pc_next
                output pc);
always_ff @( posedge clk ) begin
    if(rst)
    pc<={32{1'b0}};
    else
    pc<=pc_next;    
end
endmodule


module pc_adder(input pc;
                output pc_next);

assign pc_next = pc+32'd4;
endmodule