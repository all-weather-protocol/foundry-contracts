// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import "../../3rd/apolloX/IApolloX.sol";
import "../../interfaces/AbstractVault.sol";

abstract contract ApolloXBscVault is AbstractVault {
  using SafeERC20 for IERC20;
  using Math for uint256;

  event WithdrawFailed(address token);

  IApolloX public immutable apolloX;
  IERC20 public constant ALP = IERC20(0x4E47057f45adF24ba41375a175dA0357cB3480E5);

  constructor(
    address initialOwner,
    IERC20Metadata asset_,
    address radiantLending_
  ) ERC4626(asset_) ERC20("RadiantArbitrum-DLP", "ALP-ra-dlp") Ownable(initialOwner) {
    apolloX = IApolloX(radiantLending_);
  }

  function totalLockedAssets() public view override returns (uint256) {
    return 0;
  }

  function totalStakedButWithoutLockedAssets()
    public
    view
    override
    returns (uint256)
  {
    return apolloX.stakeOf(address(this));
  }

  function totalUnstakedAssets() public view override returns (uint256) {
    return ALP.balanceOf(address(this));
  }

  // function _zapIn(uint256 amount) internal override returns (uint256) {
  //   uint256 currentAllowance = WETH.allowance(address(this), address(lockZap));
  //   if (currentAllowance > 0) {
  //     SafeERC20.forceApprove(WETH, address(lockZap), 0);
  //   }
  //   SafeERC20.forceApprove(WETH, address(lockZap), amount);
  //   uint256 shares = lockZap.zap(false, amount, 0, 3);
  //   return shares;
  // }

  // function redeem() public override {
  //   // TODO(david): should only redeem _shares amount of dLP
  //   uint256 radiantDlpShares = MULTIFEE_DISTRIBUTION
  //     .withdrawExpiredLocksForWithOptions(address(this), 1, true);
  //   require(radiantDlpShares != 0, "dLP lock has not expired yet");
  //   super.redeem(radiantDlpShares, msg.sender, msg.sender);
  //   claim();
  // }

  // function claim() public override {
  //   IFeeDistribution.RewardData[]
  //     memory claimableRewards = getClaimableRewards();
  //   if (claimableRewards.length != 0) {
  //     MULTIFEE_DISTRIBUTION.getAllRewards();
  //     super.claimRewardsFromVaultToPortfolioVault(claimableRewards);
  //   }
  // }

  // function getClaimableRewards()
  //   public
  //   view
  //   override
  //   returns (IFeeDistribution.RewardData[] memory rewards)
  // {
  //   // pro rata: portfolio's share / total shares in this vault
  //   uint256 portfolioSharesInThisVault = balanceOf(msg.sender);
  //   uint256 totalVaultShares = totalSupply();
  //   // slither-disable-next-line incorrect-equality
  //   if (portfolioSharesInThisVault == 0 || totalVaultShares == 0) {
  //     return new IFeeDistribution.RewardData[](0);
  //   }
  //   IFeeDistribution.RewardData[]
  //     memory radiantRewardData = MULTIFEE_DISTRIBUTION.claimableRewards(
  //       address(this)
  //     );
  //   return
  //     _calculateClaimableRewards(
  //       radiantRewardData,
  //       portfolioSharesInThisVault,
  //       totalVaultShares
  //     );
  // }

  // function _calculateClaimableRewards(
  //   IFeeDistribution.RewardData[] memory radiantRewardData,
  //   uint256 portfolioSharesInThisVault,
  //   uint256 totalVaultShares
  // ) internal pure returns (IFeeDistribution.RewardData[] memory rewards) {
  //   for (uint256 i = 0; i < radiantRewardData.length; i++) {
  //     // slither-disable-next-line incorrect-equality
  //     if (radiantRewardData[i].amount == 0) {
  //       continue;
  //     }
  //     radiantRewardData[i].amount = Math.mulDiv(
  //       radiantRewardData[i].amount,
  //       portfolioSharesInThisVault,
  //       totalVaultShares
  //     );
  //   }
  //   return radiantRewardData;
  // }
}
