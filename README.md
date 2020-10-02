# 5 stage pipelined RISCV processor
This a prototype version of RV32I set of RISCV where only a particular set of instructions are implemented. More details related to RISC V can be found on their instruction manual available at the site www.riscv.org.
 
# Features
1. It has 5 pipeline stages i.e. fetch phase, decode phase, execute phase, memory and writeback phase.
2. Instructions which are implemented are:
               a. Arithmetic and logical instructions: AND, OR, ADD, SUB, ADDI
               b. Control flow instructions: BEQ
               c. Load and store instructions: LW, SW
3. For BEQ instruction, equal to comparator has been moved to decode phase so that only 1 instructions needs to be flushed if branch is taken instead of two.
4. Since outcome of branch instructions gets decided in decode phase, the processor always fetches the subsequent instructions and if branch is taken it flushes this instruction and takes the next instruction at the appropriate address.
5. Data and instructions memory are separate.
6. Instruction memory is read only memory and for the purpose of testing it we already load it with the instructions during initialization.
7. Forwarding if data is there to execute and decode phase from memory and writeback phase.
8. Separate unit- Hazard Unit, apart from controller unit handles all the stalling and forwarding operations.

# circuit Diagram

<img src="https://github.com/garvitgupta08/5-stage-pipelined-RISCV-processor/blob/master/circuit.PNG" width="700" height="500" />

# An Overview
Brief explanation of the modules can be found here https://docs.google.com/presentation/d/1XLTiSCzBOmXFytmNbCX9RxN0Lh-PKl5T5riLXr2KlQ0/edit?usp=sharing
