// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract HelloWorld {
  function collatz(uint256 n) public pure returns (uint256 res) {
    res = 0;
    for (uint i = 0; i < 10; i++) {
      uint256 number = n;
      while (number > 1) {
        if (number % 2 == 0) {
          number = number / 2;
        } else {
          number = 3 * number + 1;
        }
        res += 1;
      }
    }
    return res;
  }
}
