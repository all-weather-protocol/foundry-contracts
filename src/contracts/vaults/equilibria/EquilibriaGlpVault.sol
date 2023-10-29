// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import "../../3rd/equilibria/IEqbZap.sol";
import "../../3rd/pendle/IPendleRouter.sol";
import "../../3rd/pendle/IPendleBooster.sol";
import "./BaseEquilibriaVault.sol";

contract EquilibriaGlpVault is BaseEquilibriaVault {
  using SafeERC20 for IERC20;
  using Math for uint256;

  IERC20 public immutable fsGLP;

  constructor(
    address initialOwner,
    IERC20Metadata asset_,
    string memory name_,
    string memory symbol_
  ) BaseEquilibriaVault(initialOwner, asset_, name_, symbol_) {
    _initializePid(1);
    fsGLP = IERC20(0x1aDDD80E6039594eE970E5872D247bf0414C8903);
  }

  function totalUnstakedAssets() public view override returns (uint256) {
    // ideally, the asset() of this vault should be fsGLP
    // return fsGLP.balanceOf(address(this));
    return IERC20(asset()).balanceOf(address(this));
  }
}
