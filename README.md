# Hack Compiler Optimization/Inlining Issue
This repository demonstrates a subtle issue in Hack where unexpected results can arise from function calls due to compiler optimization or inlining. The code appears straightforward, but depending on how the compiler handles function calls, the output might deviate from the expected value.

## Problem Description
The provided Hack code consists of three simple functions (`foo`, `bar`, `baz`) and a `main` function. Each function performs a basic arithmetic operation. When executing the code, one would expect a specific output. However, unexpected outputs might occur due to compiler optimizations or inlining.

## Potential Causes
* **Compiler Optimization:** The compiler might optimize function calls, potentially altering the order of operations or removing intermediate function calls.
* **Function Inlining:** Inlining functions can cause the compiler to replace the function calls directly with the function bodies, which might lead to issues if the compiler doesn't handle dependencies correctly.

## Reproduction Steps
1. Clone this repository.
2. Compile and run the provided Hack code using the Hack compiler.
3. Observe the output and compare it to the expected output.