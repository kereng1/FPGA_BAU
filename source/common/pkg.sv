
package pkg;

// Enum for ALU operation types
// giving readable names to the operations
// Note: SUB is 4'b1000 to reflect funct7=1 (used to distinguish SUB from ADD).
    typedef enum logic [3:0] {
        ALU_ADD  = 4'b0000, // Addition:        result = a + b
        ALU_SUB  = 4'b1000, // Subtraction:     result = a - b
        ALU_SLT  = 4'b0010, // Set if less than (signed): result = (a < b) ? 1 : 0
        ALU_SLTU = 4'b0011, // Set if less than (unsigned)
        ALU_SLL  = 4'b0001, // Shift left logical: result = a << b[4:0]
        ALU_SRL  = 4'b0101, // Shift right logical: result = a >> b[4:0]
        ALU_SRA  = 4'b1101, // Shift right arithmetic: result = signed(a) >>> b[4:0]
        ALU_XOR  = 4'b0100, // Bitwise XOR:     result = a ^ b
        ALU_OR   = 4'b0110, // Bitwise OR:      result = a | b
        ALU_AND  = 4'b0111  // Bitwise AND:     result = a & b
    } t_alu_op;

endpackage