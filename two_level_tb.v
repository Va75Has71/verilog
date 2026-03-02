`timescale 10ns/1ns
module two_level_tb;
reg a,b,c,d;
wire t1,t2,f;
  two_level uut(.a(a), .b(b), .c(c), .d(d), .t1(t1), .t2(t2), .f(f));
initial
begin
  $dumpfile("two_level_wave.vcd");
  $dumpvars(0,two_level_tb);
a=0; b=0; c=0; d=0;
#5 a=0; b=0; c=0; d=1;
#5 a=0; b=0; c=1; d=0;
#5 a=0; b=0; c=1; d=1;
#5 a=0; b=1; c=0; d=0;
#5 a=0; b=1; c=0; d=1;
#5 a=0; b=1; c=1; d=0;
#5 a=0; b=1; c=1; d=1;
#5 a=1; b=0; c=0; d=0;
#5 a=1; b=0; c=0; d=1;
#5 a=1; b=0; c=1; d=0;
#5 a=1; b=0; c=1; d=1;
#5 a=1; b=1; c=0; d=0;
#5 a=1; b=1; c=0; d=1;
#5 a=1; b=1; c=1; d=0;
#5 a=1; b=1; c=1; d=1;
#5 $finish;
end 
endmodule