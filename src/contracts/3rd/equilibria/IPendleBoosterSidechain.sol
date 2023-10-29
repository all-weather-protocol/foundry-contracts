// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

interface IPendleBoosterSidechain {
  function farmEqbShare() external view returns (uint256);

  function DENOMINATOR() external view returns (uint256);
}
