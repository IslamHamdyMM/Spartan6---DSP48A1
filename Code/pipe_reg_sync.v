module pipe_reg_sync #(parameter WIDTH = 18,REG = 0) (
    input [WIDTH-1:0] In,
    input clk,
    input rst,
    output reg [WIDTH-1:0] out 
);

// parameter WIDTH ==> Width of input and output
// parameter REG ==> 0 for not pipelining and 1 for pipelining
reg [WIDTH-1:0] reg_out; // output of the regester


always @(posedge clk) begin
    if(rst) begin
      reg_out <= 0;
    end
    else begin
        reg_out <= In;
    end 
end

always @(*) begin
    case (REG)
        0 : out = reg_out;
        1 : out = In; 
        default: out = reg_out;
    endcase  
end

endmodule