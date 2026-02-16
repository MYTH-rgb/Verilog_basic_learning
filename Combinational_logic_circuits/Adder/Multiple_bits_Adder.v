module Multiple_bits_Adder 
#(
    parameter WIDTH = 4
)

(
    input [WIDTH - 1:0] Data_1,
    input [WIDTH - 1:0] Data_2,
    input Carry_in,
    output reg [WIDTH - 1:0] Sum,
    output reg Carry_out
);
    reg [WIDTH:0] carry_temp;
    always @(Data_1 or Data_2 or Carry_in) begin
        carry_temp[0] = Carry_in;
        for (integer i = 0; i <= WIDTH - 1; i = i + 1) begin
                {carry_temp[i + 1], Sum[i]} = Data_1[i] + Data_2[i] + carry_temp[i];
        end
        Carry_out = carry_temp[WIDTH];
    end
    

endmodule