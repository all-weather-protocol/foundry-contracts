// MyCounterProxy.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

contract Proxy is TransparentUpgradeableProxy {
    constructor(address _logic, address admin, bytes memory data) TransparentUpgradeableProxy(_logic, admin, data) {}
}
