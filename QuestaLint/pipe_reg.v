module pipe_reg#(parameter WIDTH = 18,REG = 0,rsttype = "SYNC") (
    input [WIDTH-1:0] In,
    input CLK,
    input CE,
    input rst,
    output reg [WIDTH-1:0] out 
);

// parameter WIDTH ==> Width of input and output
// parameter REG ==> 0 for not pipelining and 1 for pipelining
reg [WIDTH-1:0] reg_out; // output of the regester

generate
    if (rsttype == "SYNC") begin
        always @(posedge CLK) begin
            if(rst) begin
                reg_out <= 0;
            end
            else if(CE) begin
                reg_out <= In;
            end 
        end
    end
    else begin
        always @(posedge CLK,posedge rst) begin
            if(rst) begin
                reg_out <= 0;
            end
            else if(CE) begin
                reg_out <= In;
            end 
        end   
    end

    
endgenerate



always @(*) begin
    case (REG)
        0 : out = In;
        1 : out = reg_out;
        default: out = In;
    endcase  
end

endmodule