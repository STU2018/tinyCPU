`include "instruction_fetch.v"

module instruction_fetch_testBench;
  reg         CLOCK_50;
  reg         rst;
  wire [31:0] inst;


  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, instruction_fetch_testBench);          

    CLOCK_50 = 1'b0;
    forever #10 CLOCK_50 = ~CLOCK_50;
  end

  initial begin
    rst = 1'b1;
    #195 rst = 1'b0;
    #500 $stop;
  end

  instruction_fetch inst_fetch0(
      .clk(CLOCK_50),
      .rst(rst),
      .instruction_output(inst)
  );

endmodule
