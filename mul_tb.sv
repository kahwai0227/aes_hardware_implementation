module mul_tb;

reg [7:0] a;
reg [1:0] b;
wire [9:0] o;

mul m1(a,b,o);

initial begin
$monitor($time, " a = %d, b = %d, o = %d", a, b, o);
end

initial begin
#0 a = 3; b = 0;
#50 b = 1;
#100 b = 2;
#150 b = 3;
#200 a = 5; b = 0;
#250 b = 1;
#300 b = 2;
#350 b = 3;
#400 a = 9; b = 0;
#450 b = 1;
#500 b = 2;
#550 b = 3;
end
endmodule
