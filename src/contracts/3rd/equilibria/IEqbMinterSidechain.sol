// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

interface IEqbMinterSidechain {
  function DENOMINATOR() external view returns (uint256);

  function getFactor() external view returns (uint256);
}
