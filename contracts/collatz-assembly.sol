// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract HelloWorld {
  function collatz(uint256 n) public pure returns (uint256 res) {
    res = 0;
    uint256 num = n;
    assembly {
      for {let i := 0} lt(i, 10) {i := add(i, 1)} {
        num := n
        for {} lt(1, num) {res := add(res, 1) } {
          if lt(mod(num, 2), 1) {
            num := div(num, 2)
            continue 
          }
          num := add(1, mul(3, num))
        }
      }
    }
    return res;
  }
}
