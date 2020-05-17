module dpram(
    m_clock, p_reset,
    addr_r, addr_w, wdata, rdata, we
);
    input m_clock;
    input p_reset;

    input [31:0] addr_r;
    input [31:0] addr_w;
    input [31:0] wdata;
    output [31:0] rdata;
    input we;

    parameter MEM_CAPACITY = 4096;
    reg [7:0] mem [(MEM_CAPACITY - 1):0];
    integer i;

    always @(posedge m_clock) begin
        if (we) begin
            mem[addr_w] <= wdata[7:0];
            mem[addr_w + 1] <= wdata[15:0];
            mem[addr_w + 2] <= wdata[23:16];
            mem[addr_w + 3] <= wdata[31:24];
        end
    end

    initial begin
        for (i = 0; i < MEM_CAPACITY; i++) begin
            mem[i] = 8'h00;
        end
        $readmemh("programs/multiply.txt", mem);
    end

    assign rdata = {mem[addr_r + 3], mem[addr_r + 2], mem[addr_r + 1], mem[addr_r]};

endmodule