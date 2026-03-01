`timescale 10ns/1ns
module adder_tb;
reg a,b,c;
wire sum,carry;
  adder uut(.a(a), .b(b), .c(c), .sum(sum), .carry(carry));
initial begin 
  $dumpfile("adder_wave.vcd");
  $dumpvars(0,adder_tb);
a=0; b=0; c=0;
#5 a=0; b=0; c=1;
#5 a=0; b=1; c=0;
#5 a=0; b=1; c=1;
#5 a=1; b=0; c=0;
#5 a=1; b=0; c=1;
#5 a=1; b=1; c=0;
#5 a=1; b=1; c=1;
#5 $finish;
end
endmodule