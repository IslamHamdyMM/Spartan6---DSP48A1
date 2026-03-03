module Spartan6_DSP48A1(
    //Data Ports:
    input [17:0] A,
    input [17:0] B,
    input [17:0] D,
    input [47:0] C,
    input CARRYIN,

    output [35:0] M,
    output p,
    output CARRYOUT,
    output CARRYOUTF,

    //Control Input Ports:
    input CLK,
    input OPMODE,

    //Clock Enable Input Ports:
    input CEA,
    input CEB,
    input CEC,
    input CECARRYIN,
    input CED,
    input CEM,
    input CEOPMODE,
    input CEP,

    //Reset Input Ports:
    //All the resets are active high reset
    input RSTA,
    input RSTB,
    input RSTC,
    input RSTD,
    input RSTM,
    input RSTP,
    input RSTCARRYIN,
    input RSTOPMODE,

    //Cascade Ports:
    input PCIN,
    output BCOUT,
    output PCOUT
);

//Define the number of pipeline registers in the A and B input paths
parameter A0REG = 0; //Without pipeline
parameter A1REG = 1; //With pipeline
parameter B0REG = 0; //Without pipeline
parameter B1REG = 1; //With pipeline

//Define the number of pipeline stages 
parameter CREG        = 1; //With pipeline
parameter DREG        = 1; //With pipeline
parameter MREG        = 1; //With pipeline
parameter PREG        = 1; //With pipeline
parameter CARRYINREG  = 1; //With pipeline
parameter CARRYOUTREG = 1; //With pipeline 
parameter OPMODEREG   = 1; //With pipeline

//MUX sel used in the carry cascade input
//Select CARRYIN or the value of opcode[5]
parameter CARRYINSEL = "OPMODE5"; //or CARRYIN

// Select B input (attribute = DIRECT) or BCIN (attribute = CASCADE)
parameter B_INPUT = "DIRECT"; //or CASCADE

// Select the synchronizaion type
parameter RSTTYPE = "SYNC"; // or ASYNC

// ||Stage One|| \\

reg [17:0] A_Pip;
reg [17:0] B_Pip;
reg [17:0] D_Pip;
reg [47:0] C_Pip;

generate;
    if(RSTTYPE == "SYNC")
    pip_reg_sync   #(.REG(A0REG)) A0_REG(.In(A),.clk(CEA),.rst(RSTA),.out(A_Pip));
    else
    pipe_reg_async #(.REG(A0REG)) A0_REG(.In(A),.clk(CEA),.rst(RSTA),.out(A_Pip));
endgenerate

reg [17:0] BINPUT;

generate;
    always @(*) begin
        case (B_INPUT)
            DIRECT : BINPUT = B;
            CASCADE: BINPUT = BCIN; //BCIN Not declared yet
            default: BINPUT = 0;
        endcase
    end
    if(RSTTYPE == "SYNC")
    pip_reg_sync   #(.REG(B0REG)) B0_REG(.In(BINPUT),.clk(CEB),.rst(RSTB),.out(B_Pip));
    else
    pipe_reg_async #(.REG(B0REG)) B0_REG(.In(BINPUT),.clk(CEB),.rst(RSTB),.out(B_Pip));
endgenerate

generate;
    if(RSTTYPE == "SYNC")
    pip_reg_sync   #(.REG(DREG)) D_REG(.In(D),.clk(CED),.rst(RSTD),.out(D_Pip));
    else
    pipe_reg_async #(.REG(DREG)) D_REG(.In(D),.clk(CED),.rst(RSTD),.out(D_Pip));
endgenerate

generate;
    if(RSTTYPE == "SYNC")
    pip_reg_sync   #(.WIDTH = 48,.REG(CREG)) C_REG(.In(C),.clk(CEC),.rst(RSTC),.out(C_Pip));
    else
    pipe_reg_async #(.WIDTH = 48,.REG(CREG)) C_REG(.In(C),.clk(CEC),.rst(RSTC),.out(C_Pip));
endgenerate





endmodule