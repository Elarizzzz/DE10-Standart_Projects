module 8bit-counter-decimal(//sdf2_lab4
    input wire clk,
    input wire reset,
    input wire enable,
    output reg [6:0] hex0
);

//wire [7:0] count;
reg [7:0] count;



always @(posedge clk) begin
    if (reset) begin//8
		hex0 = 7'b1000000;//p9-0
		count=0;
    end else begin
        if (enable) begin//9
		  count <= count+1;
           case(count)
			      0:hex0 = 7'b1000000;
					1:hex0 = 7'b1111001;
					2:hex0 = 7'b0100100;
					3:hex0 = 7'b0110000;
					4:hex0 = 7'b0011001;
					5:hex0 = 7'b0010010;
					6:hex0 = 7'b0000010;
					7:hex0 = 7'b1111000;
					8:hex0 = 7'b0000000;
			  endcase
        end
    end
end

endmodule

