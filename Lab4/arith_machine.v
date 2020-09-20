// arith_machine: execute a series of arithmetic instructions from an instruction cache
//
// except (output) - set to 1 when an unrecognized instruction is to be executed.
// clock  (input)  - the clock signal
// reset  (input)  - set to 1 to set all registers to zero, set to 0 for normal execution.

module arith_machine(except, clock, reset);
    output      except;
    input       clock, reset;

    wire [31:0] inst;  
    wire [31:0] PC = 32'h0;
    wire [31:0] nextPC = 32'h0;
    wire [31:0] instruction;

    // DO NOT comment out or rename this module
    // or the test bench will break
    register #(32) PC_reg(PC, nextPC, clock, 1'b1, 1'b0);

    // DO NOT comment out or rename this module
    // or the test bench will break
    instruction_memory im(instruction, PC);

    // DO NOT comment out or rename this module
    // or the test bench will break
    regfile rf ( /* connect signals */ );

    /* add other modules */
    alu32 pcplus4(nextPC, , , , PC, 32'h4,`ALU_ADD);
    assign except = 0;
   
endmodule // arith_machine
