// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {PermanentPortfolioLPToken} from "../src/contracts/PermanentPortfolioLPToken.sol";
import {EquilibriaGlpVault} from "../src/contracts/vaults/equilibria/EquilibriaGlpVault.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

contract PermanentPortfolioLPTokenTest is Test {
    address public constant ownerAddress = 0x038919c63AfF9c932C77a0C9c9D98eABc1a4dd08;
    PermanentPortfolioLPToken public permanentPortfolioLPToken;
    EquilibriaGlpVault public equilibriaGlpVault;
    address public wethAddress = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
    address payable public payableWethAddress = payable(0x82aF49447D8a07e3bd95BD0d56f35241523fBab1);
    IERC20Metadata public constant glpMarketPool = IERC20Metadata(0x7D49E5Adc0EAAD9C027857767638613253eF125f);


    function setUp() public {
        equilibriaGlpVault = new EquilibriaGlpVault(ownerAddress, glpMarketPool, "Equilibria-GLP", "ALP-EQB-GLP");
        permanentPortfolioLPToken = new PermanentPortfolioLPToken(ownerAddress, wethAddress, "PermanentLP", "PNLP", address(equilibriaGlpVault), wethAddress, wethAddress, payableWethAddress, wethAddress, wethAddress);
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
