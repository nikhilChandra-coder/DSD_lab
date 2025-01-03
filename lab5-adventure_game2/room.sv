module room (input logic clk, n, s, e, w, v, reset,
output logic s6, s5, s4, s3, s2, s1, s0, win, d, sw);
	
	logic st0, st1, st2, st3, st4, st5, st6;
	
	always_comb begin
	st0 = s0; st1 = s1; st2 = s2; st3 = s3; st4 = s4; st5 = s5; st6 = s6;
	
	st0 = reset | (~reset & w & s1) | (~reset & ~e & s0);
	st1 = (~reset & e & s0) | (~reset & n & s2) | (~reset & s1 & ~s);
	st2 = (~reset & s & s1) | (~reset & e & s3) | (~reset & s2 & (~w | ~(s & e)) & ~n);
	st3 = (~reset & w & s2) | (~reset & ~e & s3);
	st4 = (~reset & e & s & s2);
	st5 = (~reset & v & s4) | (~reset & s5);
	st6 = (~reset & ~v & s4) | (~reset & s6);
	
	sw = s3;
	d = s6;
	win = s5;
	end
	
	
	//one instance of D-Flip Flop for each room state
    d_ff dff0 (.clk(clk), .d(st0), .q(s0));
    d_ff dff1 (.clk(clk), .d(st1), .q(s1));
    d_ff dff2 (.clk(clk), .d(st2), .q(s2));
    d_ff dff3 (.clk(clk), .d(st3), .q(s3));
    d_ff dff4 (.clk(clk), .d(st4), .q(s4));
    d_ff dff5 (.clk(clk), .d(st5), .q(s5));
    d_ff dff6 (.clk(clk), .d(st6), .q(s6));

endmodule