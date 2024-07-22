module jkff (input J, input K, input clk, input rst, output reg Q, output reg Qn);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            Q <= 0;
        end else begin
            case ({J, K})
                2'b00: Q <= Q;
                2'b01: Q <= 0;
                2'b10: Q <= 1;
                2'b11: Q <= ~Q;
                default: Q <= Q;
            endcase
        end
    end
endmodule
