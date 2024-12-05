module data_memory(
	input logic clk, rst,
	input logic [31:0] A,	//address
	input logic [31:0] WD,	//input data
	input logic WE,			// write enable
	output logic [31:0] RD,  
	output logic [31:0] prode	// check data in data_memory
	);

	logic [31:0] mem_array [255:0];
	assign RD = mem_array[A[7:0]];
	assign prode = mem_array[A[7:0]];
	 
	always_ff @(posedge clk or negedge rst)
	begin
		if (!rst) begin
			for (int i = 0; i < 256; i++) begin
				mem_array[i] <= i;
			end
		end
		else begin
			if (WE) begin
					mem_array[A[7:0]] <= WD; 
				end
		end
	end
	
endmodule