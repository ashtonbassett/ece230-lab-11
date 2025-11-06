module jk_ff (
input J, K, clk,
output reg Q,
output Qbar
);

wire D;

assign D = (J & ~Q) | (~K & Q);


initial begin
    Q = 0;
end

always @(posedge clk) begin
    Q <= D;
end

assign Qbar = ~Q;


endmodule
