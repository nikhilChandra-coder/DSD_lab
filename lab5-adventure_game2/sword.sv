module sword (input logic sw, reset, clk,
output logic v);
	//one instance of D-flip flop to store sword FSM state
	
	logic v1;
	always_comb begin
	
	v1 = (~reset & sw);
	
	end
	
	d_ff dff6 (.clk(clk), .d(v1), .q(v));
	
	
endmodule