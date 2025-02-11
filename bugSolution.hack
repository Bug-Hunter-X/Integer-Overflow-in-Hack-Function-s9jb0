```hack
function foo(x: int): int {
  // Check for potential overflow before adding 1
  if (x >= 2147483647) {
    return 0; // Or handle the overflow appropriately
  }
  return x + 1;
}

function bar(x: int): int {
    // Check for potential overflow before multiplying by 2
    if (x >= 1073741823) {
        return 0; // Or handle the overflow appropriately
    }
  return foo(x) * 2;
}

function main(): void {
  echo bar(5);
  echo bar(1073741823);
}
```