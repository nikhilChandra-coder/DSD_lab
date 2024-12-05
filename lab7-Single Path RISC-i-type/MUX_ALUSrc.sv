module MUX_ALUSrc(
    input logic ALUSrc,            //select signal
    input logic[31:0] fromReg,     //from regfile
    input logic[31:0] fromImm,     //immediate value
    output logic[31:0] ALUSrc_out  //output data
);

assign ALUSrc_out = ALUSrc ? fromImm : fromReg;

endmodule