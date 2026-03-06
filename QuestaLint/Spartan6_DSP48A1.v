module Spartan6_DSP48A1(
    //Data Ports:
    input [17:0] A,
    input [17:0] B,
    input [17:0] D,
    input [47:0] C,
    input CARRYIN,
    input [17:0] BCIN,

    output [35:0] M,
    output p,
    output CARRYOUT,
    output CARRYOUTF,

    //Control Input Ports:
    input CLK,
    input [7:0] OPMODE,

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

wire [17:0] A0_Pip;
wire [17:0] B0_Pip;
wire [17:0] D_Pip;
wire [47:0] C_Pip;
wire [7:0]  OPMODE_Pip;

pipe_reg   #(.WIDTH (8),.REG(OPMODEREG),.rsttype(RSTTYPE)) OPMODE_REG(.In(OPMODE),.CE(CEOPMODE),
                                                           .rst(RSTOPMODE),.CLK(CLK),.out(OPMODE_Pip));

pipe_reg   #(.REG(A0REG),.rsttype(RSTTYPE)) A0_REG(.In(A),.CE(CEA),.rst(RSTA),.CLK(CLK),.out(A0_Pip));
pipe_reg   #(.REG(DREG),.rsttype(RSTTYPE))  D_REG (.In(D),.CE(CED),.rst(RSTD),.CLK(CLK),.out(D_Pip));

pipe_reg   #(.WIDTH (48),.REG(CREG),.rsttype(RSTTYPE)) C_REG(.In(C),.CE(CEC),.rst(RSTC),.CLK(CLK),.out(C_Pip));


reg [17:0] BINPUT;

always @(*) begin
    case (B_INPUT)
        "DIRECT"  : BINPUT = B;
        "CASCADE" : BINPUT = BCIN; 
        default: BINPUT = 0;
    endcase
end

pipe_reg   #(.REG(B0REG),.rsttype(RSTTYPE)) B0_REG(.In(BINPUT),.CE(CEB),.rst(RSTB),.CLK(CLK),.out(B0_Pip));

// ||Stage Two|| \\

reg [17:0] Out_AS1; // Output of the pre adder subtracter of D,B
reg [17:0] B1; // Output of mux select B Directly or output of pre adder subtracter of D,B

always @(*) begin
    if(OPMODE_Pip[6]) begin
      Out_AS1 = D_Pip - B_Pip;
    end
    else begin
        Out_AS1 = D_Pip + B_Pip;
    end

    if(OPMODE_Pip[4]) begin
      B1 = B_Pip;
    end
    else begin
        B1 = Out_AS1;
    end   
end;

wire [17:0] A1_Pip;
wire [17:0] B1_Pip;

pipe_reg   #(.REG(B1REG),.rsttype(RSTTYPE)) B1_REG(.In(B1),.CE(CEB),.rst(RSTB),.CLK(CLK),.out(B1_Pip));
pipe_reg   #(.REG(A1REG),.rsttype(RSTTYPE)) A1_REG(.In(A0_Pip),.CE(CEA),.rst(RSTA),.CLK(CLK),.out(A1_Pip));

// ||Stage Three|| \\

wire [35:0] Mul_Out;
reg  CIC; // Carry In Cascade

assign Mul_Out = B1_Pip * A1_Pip;
assign BCOUT = B1_Pip;

always @(*) begin
    case (CARRYINSEL)
        "CARRYIN" : CIC = CARRYIN;
        "OPMODE5" : CIC = OPMODE_Pip[5]; 
        default: CIC = 0;
    endcase
end

wire [35:0] Mul_Out_Pip; //After Pipelining
wire  CIC_Pip; // Carry In Cascade After Pipelining

pipe_reg   #(.WIDTH(36),.REG(MREG),.rsttype(RSTTYPE)) M_REG(.In(Mul_Out),.CE(CEM),.rst(RSTM),.CLK(CLK),.out(Mul_Out_Pip));
pipe_reg   #(.WIDTH(1),.REG(CARRYINREG),.rsttype(RSTTYPE)) CYI(.In(CIC),.CE(CECARRYIN),.rst(RSTCARRYIN),.CLK(CLK),.out(CIC_Pip));

















endmodule