// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {PermanentPortfolioLPToken} from "../src/contracts/PermanentPortfolioLPToken.sol";
import {EquilibriaGlpVault} from "../src/contracts/vaults/equilibria/EquilibriaGlpVault.sol";
import {EquilibriaGDAIVault} from "../src/contracts/vaults/equilibria/EquilibriaGDAIVault.sol";
import {EquilibriaRETHVault} from "../src/contracts/vaults/equilibria/EquilibriaRETHVault.sol";
import {EquilibriaPendleVault} from "../src/contracts/vaults/equilibria/EquilibriaPendleVault.sol";
import {MagicArbitrumVault} from "../src/contracts/vaults/sushiswap/MagicArbitrumVault.sol";
import {RadiantArbitrumVault} from "../src/contracts/vaults/radiant/RadiantArbitrumVault.sol";


import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

contract PermanentPortfolioLPTokenTest is Test {
    address public constant ownerAddress = 0x038919c63AfF9c932C77a0C9c9D98eABc1a4dd08;
    PermanentPortfolioLPToken public permanentPortfolioLPToken;
    EquilibriaGlpVault public equilibriaGlpVault;
    EquilibriaGDAIVault public equilibriaGDAIVault;
    EquilibriaRETHVault public equilibriaRETHVault;
    EquilibriaPendleVault public equilibriaPendleVault;
    MagicArbitrumVault public magicVault;
    RadiantArbitrumVault public radiantVault;
    address public wethAddress = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
    address payable public payableWethAddress = payable(0x82aF49447D8a07e3bd95BD0d56f35241523fBab1);
    IERC20Metadata public constant glpMarketPool = IERC20Metadata(0x7D49E5Adc0EAAD9C027857767638613253eF125f);
    IERC20Metadata public constant gDAIMarketPool = IERC20Metadata(0xa0192f6567f8f5DC38C53323235FD08b318D2dcA);
    IERC20Metadata public constant rethMarketPool = IERC20Metadata(0x14FbC760eFaF36781cB0eb3Cb255aD976117B9Bd);
    IERC20Metadata public constant pendleMarketPool = IERC20Metadata(0x24e4Df37ea00C4954d668e3ce19fFdcffDEc2cF6);
    IERC20Metadata public constant sushiSwapMagicLpTokenAddress = IERC20Metadata(0xB7E50106A5bd3Cf21AF210A755F9C8740890A8c9);
    IERC20Metadata public constant radiantDlpAddress = IERC20Metadata(0x32dF62dc3aEd2cD6224193052Ce665DC18165841);
    address public constant radiantLendingPoolAddress = 0xF4B1486DD74D07706052A33d31d7c0AAFD0659E1;

    function setUp() public {
        equilibriaGlpVault = new EquilibriaGlpVault(ownerAddress, glpMarketPool, "Equilibria-GLP", "ALP-EQB-GLP");
        equilibriaGDAIVault = new EquilibriaGDAIVault(ownerAddress, gDAIMarketPool, "Equilibria-GDAI", "ALP-EQB-GDAI");
        equilibriaRETHVault = new EquilibriaRETHVault(ownerAddress, rethMarketPool, "Equilibria-RETH", "ALP-EQB-RETH");
        equilibriaPendleVault = new EquilibriaPendleVault(ownerAddress, pendleMarketPool, "Equilibria-PENDLE", "ALP-EQB-PENDLE");
        magicVault = new MagicArbitrumVault(ownerAddress, sushiSwapMagicLpTokenAddress, "SushiSwap-MagicETH", "ALP-MAGIC-ETH");
        radiantVault = new RadiantArbitrumVault(ownerAddress, radiantDlpAddress, radiantLendingPoolAddress);

        permanentPortfolioLPToken = new PermanentPortfolioLPToken(ownerAddress, wethAddress, "PermanentLP", "PNLP", address(equilibriaGlpVault), address(equilibriaGDAIVault), address(equilibriaRETHVault), payable(address(magicVault)), address(equilibriaPendleVault), address(radiantVault));
    }

    // function test_Increment() public {
    //     counter.increment();
    //     assertEq(counter.number(), 1);
    // }

    // function testFuzz_SetNumber(uint256 x) public {
    //     counter.setNumber(x);
    //     assertEq(counter.number(), x);
    // }
}
