module display(

    input logic [31:0] data_in,  
    output logic [6:0] segments  
	 
);

    logic [3:0] hex_digit; 

    assign hex_digit = data_in[3:0]; 
	 
    always_comb begin
	 
        case (hex_digit)
		  
            0: segments = 7'b1000000;
            1: segments = 7'b1111001;
            2: segments = 7'b0100100;
            3: segments = 7'b0110000;
            4: segments = 7'b0011001;
            5: segments = 7'b0010010;
            6: segments = 7'b0000010;
            7: segments = 7'b1111000;
            8: segments = 7'b0000000;
            9: segments = 7'b0010000;
            10: segments = 7'b0001000;
            11: segments = 7'b0000011;
            12: segments = 7'b1000110;
            13: segments = 7'b0100001;
            14: segments = 7'b0000110;
            15: segments = 7'b0001110;
				
            default: segments = 7'b1111111; 
				
        endcase
    end

endmodule
