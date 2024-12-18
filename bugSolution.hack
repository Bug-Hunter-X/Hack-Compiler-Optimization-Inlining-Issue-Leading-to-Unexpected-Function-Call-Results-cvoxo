// No direct solution, the focus here is raising awareness of potential subtle issues.
// The compiler needs to guarantee consistent evaluation without altering the order of operations or prematurely optimizing calls away.
// One option could be using compiler flags to disable certain optimizations during development/testing to isolate the problem.
// Using a more explicit style that limits opportunities for such optimizations might be an alternative but can make code less readable.

function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) - 1;
}

function main(): void {
  echo baz(5); // Expected output: 11
} 