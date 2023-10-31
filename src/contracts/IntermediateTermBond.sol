// SPDX-License-Identifier: MIT
// The code defines a Solidity contract called AllWeatherPortfolioLPToken that inherits from ERC20. It takes in several parameters on construction, including asset, radiantVaultAddr, and dpxVaultAddr. The contract has several functions that do the following:

// deposit: Takes in an amount and transfers tokens of asset from the user to the contract, then distributes the asset into two protocols (DPX and Radiant) based on a portfolioAllocation. The user receives an ERC20 token (AWVLP) in proportion to their deposit.
// redeem: Takes in a number of shares and an account, then redeems all DPX LP Tokens and sends them to the account. Only DPX LP tokens are redeemed. The proportion of redeemed tokens is distributed to the sender's ERC20 tokens (AWVLP).
// claimableRewards: Takes in an account, calculates the user's claimable rewards across both protocols and returns them.
// claim: Takes in an account and reward tokens, and claims all the available rewards across both protocols, sending them to the account.
// The code imports several open source libraries and uses various data structures like struct, bytes, and mapping. The SPDX-License-Identifier specifies the license for the code (MIT in this case).

pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./vaults/equilibria/EquilibriaGlpVault.sol";
import "./BasePortfolio.sol";

contract IntermediateTermBond is BasePortfolio {
    using SafeERC20 for IERC20;
    using Math for uint256;

    constructor(
        address initialOwner,
        address asset_,
        string memory name_,
        string memory symbol_,
        address apolloxVaultAddr
    ) BasePortfolio(initialOwner, asset_, name_, symbol_) {
        require(apolloxVaultAddr != address(0), "apolloxVaultAddr cannot be zero");
        vaults = [AbstractVault(EquilibriaGlpVault(apolloxVaultAddr))];
    }
}
