module FullAdder(
  input a,
  input b,
  input ci,
  output co,
  output s
);
  assign co = (a & b) | (a & ci) | (b & ci);
  assign s = a ^ b ^ ci;
endmodule

module RippleCarryAdder(
  input [3:0] A,
  input [3:0] B,
  input cin,
  output cout,
  output [3:0] S
);
  wire [3:0] co;
  wire [3:0] s;

  FullAdder fa0(.a(A[0]), .b(B[0]), .ci(cin), .co(co[0]), .s(s[0]));
  FullAdder fa1(.a(A[1]), .b(B[1]), .ci(co[0]), .co(co[1]), .s(s[1]));
  FullAdder fa2(.a(A[2]), .b(B[2]), .ci(co[1]), .co(co[2]), .s(s[2]));
  FullAdder fa3(.a(A[3]), .b(B[3]), .ci(co[2]), .co(co[3]), .s(s[3]));

  assign cout = co[3];
  assign S = s;
endmodule