module test(
  input clk, x, y,
  output reg [0:0] sx, sy
  ) ;
  always @(posedge clk)
    begin
      sx <= (x&~y) ;
      sy <= (~x&y) ;
    end
endmodule

module test_top(
  input clk, x, y,
  output reg sx, sy
) ;
  test uut(clk, 1, 0, sx,sy) ;
endmodule

