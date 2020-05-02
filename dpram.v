module dpram(
    m_clock, p_reset,
    addr1, addr2, wdata1, wdata2, rdata1, rdata2, we1, we2
);
    input m_clock;
    input p_reset;

    input [31:0] addr1;
    input [31:0] addr2;
    input [31:0] wdata1;
    input [31:0] wdata2;
    output [31:0] rdata1;
    output [31:0] rdata2;
    input we1;
    input we2;

    reg [7:0] mem [65535:0];

    always @(posedge m_clock) begin
        if (we1) begin
            mem[addr1] <= wdata1[7:0];
            mem[addr1 + 1] <= wdata1[15:0];
            mem[addr1 + 2] <= wdata1[23:16];
            mem[addr1 + 3] <= wdata1[31:24];
        end
    end

    always @(posedge m_clock) begin
        if (we2) begin
            mem[addr2] <= wdata2[7:0];
            mem[addr2 + 1] <= wdata2[15:0];
            mem[addr2 + 2] <= wdata2[23:16];
            mem[addr2 + 3] <= wdata2[31:24];
        end
    end

    assign rdata1 = {mem[addr1 + 3], mem[addr1 + 2], mem[addr1 + 1], mem[addr1]};
    assign rdata2 = {mem[addr2 + 3], mem[addr2 + 2], mem[addr2 + 1], mem[addr2]};

endmodule