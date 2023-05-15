module BinaryToDecimalConverter(
  input [3:0] V,
  output [6:0] HEX1,
  output [6:0] HEX0
);

  wire z;
  wire [3:0] A;
  
  assign z = (V > 9);
  
  assign HEX1 = (z) ? 7'b0000000 : getHexValue(V[3:2]);
  assign HEX0 = (z) ? getHexValue(A) : getHexValue(V[1:0]);
  
  function [6:0] getHexValue;
    input [1:0] value;
    begin
      case (value)
        2'b00: return 7'b1000000; // 0
        2'b01: return 7'b1111001; // 1
        2'b10: return 7'b0100100; // 2
        2'b11: return 7'b0110000; // 3
      endcase
    end
  endfunction
  
  assign A = (V == 4'b1010) ? 4'b0000 :
             (V == 4'b1011) ? 4'b0001 :
             (V == 4'b1100) ? 4'b0010 :
             (V == 4'b1101) ? 4'b0011 :
             (V == 4'b1110) ? 4'b0100 :
             (V == 4'b1111) ? 4'b0101 :
             4'bxxxx;
  
endmodule