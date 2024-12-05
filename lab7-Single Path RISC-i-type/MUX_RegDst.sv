module MUX_RegDst(
    input logic [4:0] RT,          // rt field of instruction
    input logic [4:0] RD,          // rd field of instruction
    input logic RegDes,            // Select signal
    output logic [4:0] RegDes_out  // Output data
);

assign RegDes_out = RegDes ? RD : RT;

endmodule