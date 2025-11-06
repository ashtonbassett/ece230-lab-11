module d_ff(

input D, clk,
output reg Q,
output Qbar
);

initial begin
    Q = 0; 
 end
 
 always @(posedge clk) begin
    Q <= D;
 end
 
 assign Qbar = ~Q;
 

endmodule
