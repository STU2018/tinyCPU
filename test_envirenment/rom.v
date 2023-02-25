module rom(

    input  wire        ce,
    input  wire [ 5:0] addr,
    output reg  [31:0] instruction

);

  reg [31:0] rom[63:0];

  initial $readmemh("rom.data", rom);

  always @(*) begin
    if (ce == 1'b0) begin
      instruction <= 32'h0;
    end else begin
      instruction <= rom[addr];
    end
  end

endmodule
