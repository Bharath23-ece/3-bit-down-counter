module counter_3bit(input clk, input reset, output reg [2:0]count);
always@(negedge clk)begin
    if(reset)begin
        count<=3'b111;
    end
    else begin
        count<=count-1'b1;
    end
end
endmodule
