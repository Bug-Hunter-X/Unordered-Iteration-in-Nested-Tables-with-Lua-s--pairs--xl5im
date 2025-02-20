# Lua Nested Table Iteration Bug

This repository demonstrates a potential issue with using `pairs` to iterate over nested tables in Lua.  The problem stems from the fact that `pairs` does not guarantee any specific iteration order.  In scenarios requiring a particular order (e.g., depth-first traversal), this can lead to unexpected or incorrect results.

## The Bug

The `bug.lua` file contains a function `foo` that recursively iterates through a nested table. The order in which the function processes the nested tables is not deterministic because `pairs` is used. This can become a problem if the order is significant to the application's logic.

## The Solution

The `bugSolution.lua` file offers a solution using a different iteration method to ensure a specific order. The solution uses a recursive depth-first traversal that guarantees a predictable order, making the code more robust and easier to reason about.

## How to Reproduce

1. Clone this repository.
2. Run `bug.lua`. Note that the output might vary depending on the Lua interpreter's implementation.
3. Run `bugSolution.lua`. The output will be consistent across different Lua interpreters, demonstrating the fixed ordering.

This example highlights the importance of understanding the behavior of Lua's iterators and choosing the appropriate method based on the requirements of your application.