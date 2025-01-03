// game 

module game(
    input logic clk, n, s, e, w, reset,
    output logic s6, win, s5, d, s4, s3, sw, s2, s1, s0, v
    );
    
    sword sword_fsm(
        .clk(clk),
        .sw(sw),
        .reset(reset),
        .v(v)
        );
        
    room room_fsm(
        .clk(clk),
        .s0(s0),
        .s1(s1),
        .s2(s2),
        .s3(s3),
        .s4(s4),
        .s5(s5),
        .s6(s6),
        .n(n),
        .s(s),
        .e(e),
        .w(w),
        .reset(reset),
        .win(win),
        .d(d),
        .v(v),
        .sw(sw)
        );
        
endmodule
