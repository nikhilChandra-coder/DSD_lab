module SignExtend(
    input logic [15:0] imm,
    output logic [31:0] signImm
);

assign signImm = {{16{imm[15]}}, imm};  // Sign extends

endmodule