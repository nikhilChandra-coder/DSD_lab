module register_file (
	input logic clk, rst,
	input logic [4:0] A1, A2, A3, //A1=rs, A2=rt ,A3=rd 
	input logic [31:0] WD3, 		//data from data memory
	input logic WE3, 					//write enable
	output logic [31:0] RD1, 		//output port one for register file
	output logic [31:0] RD2, 		//output port two for register file
	output logic [31:0] prode 		//prode to check the result in the register file
);
	
	logic [31:0] regs [31:0];
	
	assign RD1 = regs[A1];
	assign RD2 = regs[A2];
	assign prode = regs[1]; 
	 
	always_ff @(posedge clk or posedge reset)
	begin
		if (reset) begin
			for (int i = 0; i < 32: i++) begin
				regFs [i] <= i;
			end
		end
		else begin
			if (WE3) begin
					rf_regs[A3] <= WD3; 
				end
		end
	end
endmodule