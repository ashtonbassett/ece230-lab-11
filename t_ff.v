module t_ff (

input T, clk,
output reg Q,
output Qbar

);

initial begin
    Q = 0;
end

always @(posedge clk) begin

if(T)
    Q <= ~Q;
else
    Q <= Q;
end

assign Qbar = ~Q;


endmodule
