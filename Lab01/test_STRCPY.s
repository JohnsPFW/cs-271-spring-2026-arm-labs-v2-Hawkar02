// =============================================================================
// CS 271 Computer Architecture - Lab 01: String Copy (STRCPY)
// Purdue University Fort Wayne
// =============================================================================
// STUDENT NAME: ___________________
// DATE:         ___________________
// =============================================================================
// OBJECTIVE:
//   Implement a loop that copies a null-terminated string from a source
//   address to a destination address, simulating the classic C strcpy()
//   function.
//
// MEMORY LAYOUT:
//   - Source string starts at address 0x50 (80 decimal)
//   - Destination buffer starts at address 0x13C (316 decimal)
//   - The source string is: "Hello" (5 characters + null terminator)
//
// EXPECTED OUTCOME:
//   - The string "Hello" should be copied to the destination
//   - Your loop should iterate 6 times (5 letters + 1 null terminator)
//   - Simulation output: "[EDUCORE LOG]: Apollo has landed"
//
// INSTRUCTIONS:
//   1. Complete the TODO sections below (5 lines of code total)
//   2. Run: make sim_lab01
//   3. Verify success with "Apollo has landed" message
//   4. (Optional) Open Surfer to view waveforms
// =============================================================================

    .text
    .global _start

_start:
    // ---------------------------------------------------------
    // Initialize registers
    // ---------------------------------------------------------
    MOVZ    X0, #5      // Loop counter = 5
    MOVZ    X1, #1      // Constant value 1 (for inc/dec)
    MOVZ    X4, #0      // Running sum = 0
    MOVZ    X5, #0      // Iteration counter = 0

// -------------------------------------------------------------
// Counted Loop
// -------------------------------------------------------------
sum_loop:
    ADD     X4, X4, X0      // Add counter to running sum
    ADD     X5, X5, X1      // Increment iteration count
    SUBS    X0, X0, X1      // Decrement counter and set flags
    B.NE    sum_loop        // Loop while X0 != 0

// -------------------------------------------------------------
// Done
// -------------------------------------------------------------
done:
    YIELD

// =============================================================================

