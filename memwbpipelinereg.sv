module MEMWBpipelinereg (clk, rstn, WB_EN_IN, MEM_R_EN_IN, destIn, ALUResIn, memReadValIn, WB_EN, MEM_R_EN, dest, ALURes, memReadVal);
input logic clk, rstn;
input logic WB_EN_IN, MEM_R_EN_IN;
input logic [4:0] destIn;
input logic [31:0] ALUResIn, memReadValIn;
output logic WB_EN, MEM_R_EN;
output logic [4:0] dest;
output logic [31:0] ALURes, memReadVal;

always_ff @(posedge clk)
begin
    if (!rstn)
    {WB_EN, MEM_R_EN, dest, ALURes, memReadVal} <= '0;
    else
    begin
    WB_EN <= WB_EN_IN;
    MEM_R_EN <= MEM_R_EN_IN;
    dest <= destIn;
    ALURes <= ALUResIn;
    memReadVal <= memReadValIn;
    end
end

endmodule : MEMWBpipelinereg