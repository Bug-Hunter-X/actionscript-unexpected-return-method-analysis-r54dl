# ActionScript Unexpected Return in Method

This repository demonstrates an uncommon ActionScript bug involving unexpected returns within a method.  The issue occurs when a return statement is used prematurely, potentially causing resource leaks or unexpected behavior if cleanup or other actions are dependent on reaching the end of the method.

## Bug Description

The `someMethod()` function contains a conditional return. If `someCondition` is true, the function returns immediately.  However, if this happens, subsequent lines might not execute, leading to resources not being released or operations left incomplete.

## How to Reproduce

1. Clone this repository.
2. Compile and run the `bug.as` file. (You will need an Actionscript compiler like Flex SDK).
3. Observe the potential issue that may occur when `someCondition` evaluates to true.

## Solution

The solution involves either restructuring the code to handle cleanup properly or using a more robust approach that does not rely on early returns to avoid such issues.

## Files
* `bug.as`: Contains the code with the bug.
* `bugSolution.as`: Shows the corrected code, demonstrating different possible solutions.