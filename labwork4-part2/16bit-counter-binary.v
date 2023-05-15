module 16bit-counter-binary(//sdf2_lab4_part2
  input clk, rst,
  output reg [15:0] Q
);

always @(posedge clk or posedge rst) begin
  if (rst) begin
    Q <= 16'b0;
  end else begin
    Q <= Q + 1;
  end
end

endmodule
/*
Bu kodda ikilik say sisteminin(Q) HEX şəkilə çevrilməsini yazmışıq. 
HEX[0]-> 1
HEX[1]-> 10
HEX0[1] HEX0[0] -> 11
HEX0[2] HEX0[1] HEX0[0]-> 100
HEX0[2] HEX0[1] HEX0[0]-> 101
HEX0[2] HEX0[1] HEX0[0]-> 110
HEX0[2] HEX0[1] HEX0[0]-> 111
Və bu ardıcıllıqla davam edir.
*/