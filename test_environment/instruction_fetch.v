`include "pc_register.v"
`include "rom.v"

module instruction_fetch (

    input wire clk,
    input wire rst,

    output wire [31:0] instruction_output

);

  wire [5:0] pc;
  wire rom_ce;


  pc_register pc_reg0(
      .clk(clk),
      .rst(rst),
      .pc (pc),
      .ce (rom_ce)

  );

  rom rom0(
      .ce  (rom_ce),
      .addr(pc),
      .instruction(instruction_output)
  );



endmodule
