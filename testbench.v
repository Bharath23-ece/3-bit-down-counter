module testbench;
reg clk;
reg reset;
wire [2:0]count;
counter_3bit uut(.clk(clk),.reset(reset),.count(count));
always #5 clk=~clk;
initial begin
    clk=0;
    reset=1;
    #8 reset=0;
    #200 $finish;
end
initial begin
    $monitor("time=%t,reset=%b,count=%b",$time,reset,count);
    $dumpfile("counter.vcd");
    $dumpvars(0,testbench);
end
endmodule

