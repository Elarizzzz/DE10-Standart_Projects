module SevenSegmentDisplay(
  input [7:0] switches,
  output [6:0] HEX1,
  output [6:0] HEX0
);

  assign HEX1 = getHexValue(switches[7:4]);
  assign HEX0 = getHexValue(switches[3:0]);

  function [6:0] getHexValue;
    input [3:0] value;
    begin
      case (value)
        4'h0: return 7'b1000000; // 0
        4'h1: return 7'b1111001; // 1
        4'h2: return 7'b0100100; // 2
        4'h3: return 7'b0110000; // 3
        4'h4: return 7'b0011001; // 4
        4'h5: return 7'b0010010; // 5
        4'h6: return 7'b0000010; // 6
        4'h7: return 7'b1111000; // 7
        4'h8: return 7'b0000000; // 8
        4'h9: return 7'b0010000; // 9
        default: return 7'b1111111; 
    end
  endfunction

endmodule