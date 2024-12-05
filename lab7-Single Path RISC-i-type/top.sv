module top(
    input logic clk, rst,
    input logic[1:0] sw, //address for instruction memory
    output logic[31:0] ALUResult, //output for pre-lab simulation
    output logic[31:0] RD1, RD2, //output for pre-lab simulation
    output logic[31:0] prode_register_file, //output for pre-lab simulation
    output logic[6:0] display_led //output for in-lab
);

logic[31:0] inst_0 = 32'b0;
logic[31:0] inst_1 = 32'b010101_00000_00001_0000_0000_0000_0101; // LW instruction: Load Data_Memory[5] to Register_File[1]
logic[31:0] inst_2 = 32'b010100_00000_00110_0000_0000_0000_0010; // SW instruction: Store Register_File[6] to Data_Memory[2]
logic[31:0] inst_ex;
assign inst_ex = (sw==1)? inst_1:(sw==2)? inst_2: inst_0;

// Intermediate signals for connections
logic [4:0] regDst_out;
logic [31:0] signImm, memData, ALU_in2, MemtoReg_out;
logic MemtoReg, ALUSrc, WE;

assign ALUSrc = 1;
assign RegDst = 0;
assign MemToReg = (inst_ex[31:26] == 6'b010101);
assign WE3 = (inst_ex[31:26] ==  6'b010101);
assign WE = (inst_ex[31:26] == 6'b010100); // store
assign ALUControl = 3'b010; // sample control signal for ALU

register_file r_f(
    .clk(clk),
    .rst(rst),
    .A1(inst_ex[25:21]), // rs
    .A2(inst_ex[20:16]), // rt
    .A3(regDst_out),     // rd or rt based on RegDst
    .WD3(MemtoReg_out),  // Data to write back to register file
    .WE3(WE),
    .RD1(RD1),
    .RD2(RD2),
    .prode(prode_register_file)
);

// Data Memory Instantiation
data_memory dm(
    .clk(clk),
    .rst(rst),
    .A(ALUResult),
    .WD(RD2),
    .WE(WE),
    .RD(memData),
    .prode()
);

ALU t1(
    .SrcA(RD1),
    .SrcB(ALU_in2),
    .ALUControl(inst_ex[29:27]),
    .ALUResult(ALUResult)
);

// MUX for MemtoReg
MUX_MemtoReg mux_memtoreg(
    .MemtoReg(inst_ex[31]),
    .ALUResult(ALUResult),
    .RD(memData),
    .MemtoReg_out(MemtoReg_out)
);

// MUX for ALUSrc
MUX_ALUSrc mux_alusrc(
    .fromReg(RD2),
    .fromImm(signImm),
    .ALUSrc(inst_ex[28]),
    .ALUSrc_out(ALU_in2)
);

// MUX for RegDst
MUX_RegDst mux_regdst(
    .RT(inst_ex[20:16]),
    .RD(inst_ex[15:11]),
    .RegDes(inst_ex[26]),
    .RegDes_out(regDst_out)
);

// Sign Extend Module
SignExtend sign_ext(
    .imm(inst_ex[15:0]),
    .signImm(signImm)
);

display t2(
    .data_in(ALUResult), 
    .segments(display_led)
);

endmodule