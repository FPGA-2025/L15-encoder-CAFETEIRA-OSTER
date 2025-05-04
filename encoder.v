module Encoder (
    input wire clk,
    input wire rst_n,

    input wire horario,
    input wire antihorario,

    output reg A, // horario
    output reg B // antihorario
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            A <= 0;
            B <= 0;
        end else begin
            if (horario && antihorario) begin
                A <= 0;
                B <= 0;
            end else begin
                if (horario) begin
                    A <= 1;
                    B <= 0;
                end else begin
                    if (antihorario) begin
                        A <= 0;
                        B <= 1;
                    end else begin
                        A <= 0;
                        B <= 0;
                    end
                end
            end
        end
    end
endmodule
