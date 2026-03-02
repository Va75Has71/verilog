`timescale 10ns/1ns
module xor_gate_tb;
reg a,b;
wire y;
xor_gate uut(.a(a), .b(b), .y(y));
initial begin 
$dumpfile("xor_wave.vcd");
$dumpvars(0,xor_gate_tb);
a=0; b=0;
#5 a=0; b=1;
#5 a=1; b=0;
#5 a=1; b=1;
#5 $finish;
end
endmodule