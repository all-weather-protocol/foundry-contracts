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
import {BasePortfolio} from "../src/contracts/BasePortfolio.sol";
import {SwapData, SwapType} from "../src/contracts/3rd/pendle/IPSwapAggregator.sol";
import {IPendleRouter} from "../src/contracts/3rd/pendle/IPendleRouter.sol";
import {IWETH} from "../src/contracts/utils/IWETH.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

contract PermanentPortfolioLPTokenTest is Test {
    address public constant ownerAddress = 0x2B9AcFd85440B7828DB8E54694Ee07b2B056B30C;
    PermanentPortfolioLPToken public permanentPortfolioLPToken;
    EquilibriaGlpVault public equilibriaGlpVault;
    EquilibriaGDAIVault public equilibriaGDAIVault;
    EquilibriaRETHVault public equilibriaRETHVault;
    EquilibriaPendleVault public equilibriaPendleVault;
    MagicArbitrumVault public magicVault;
    RadiantArbitrumVault public radiantVault;
    address public wethAddress = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
    IWETH public weth = IWETH(wethAddress);
    address payable public payableWethAddress = payable(0x82aF49447D8a07e3bd95BD0d56f35241523fBab1);
    IERC20Metadata public constant glpMarketPool = IERC20Metadata(0x7D49E5Adc0EAAD9C027857767638613253eF125f);
    IERC20Metadata public constant gDAIMarketPool = IERC20Metadata(0xa0192f6567f8f5DC38C53323235FD08b318D2dcA);
    IERC20Metadata public constant rethMarketPool = IERC20Metadata(0x14FbC760eFaF36781cB0eb3Cb255aD976117B9Bd);
    IERC20Metadata public constant pendleMarketPool = IERC20Metadata(0x24e4Df37ea00C4954d668e3ce19fFdcffDEc2cF6);
    IERC20Metadata public constant sushiSwapMagicLpTokenAddress =
        IERC20Metadata(0xB7E50106A5bd3Cf21AF210A755F9C8740890A8c9);
    IERC20Metadata public constant radiantDlpAddress = IERC20Metadata(0x32dF62dc3aEd2cD6224193052Ce665DC18165841);
    address public constant radiantLendingPoolAddress = 0xF4B1486DD74D07706052A33d31d7c0AAFD0659E1;

    BasePortfolio.PortfolioAllocationOfSingleCategory[] public vaultAllocations = [
        BasePortfolio.PortfolioAllocationOfSingleCategory({protocol: "SushiSwap-MagicETH", percentage: 8}),
        BasePortfolio.PortfolioAllocationOfSingleCategory({protocol: "RadiantArbitrum-DLP", percentage: 15}),
        BasePortfolio.PortfolioAllocationOfSingleCategory({protocol: "Equilibria-GLP", percentage: 35}),
        BasePortfolio.PortfolioAllocationOfSingleCategory({protocol: "Equilibria-GDAI", percentage: 12}),
        BasePortfolio.PortfolioAllocationOfSingleCategory({protocol: "Equilibria-RETH", percentage: 6}),
        BasePortfolio.PortfolioAllocationOfSingleCategory({protocol: "Equilibria-PENDLE", percentage: 24})
    ];
    uint256 amountAfterChargingFee = 1e17;
    IPendleRouter.ApproxParams public glpSy = IPendleRouter.ApproxParams({
        guessMin: 0x424632919822edcd,
        guessMax: 0xa5af7e6bfc575282,
        guessOffchain: 0x52d7bf35fe2ba941,
        maxIteration: 14,
        eps: 1000000000000000
    });
    IPendleRouter.TokenInput public glpInput = IPendleRouter.TokenInput({
        tokenIn: 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1,
        netTokenIn: 0x7BF8D14F6FF000,
        tokenMintSy: 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1,
        bulk: 0x0000000000000000000000000000000000000000,
        pendleSwap: 0x0000000000000000000000000000000000000000,
        swapData: SwapData({
            swapType: SwapType.NONE,
            extRouter: 0x0000000000000000000000000000000000000000,
            extCalldata: bytes(""),
            needScale: false
        })
    });
    IPendleRouter.ApproxParams public gdaiGuessPtReceivedFromSy = IPendleRouter.ApproxParams({
        guessMin: 0x2cb85bbfb91fc5be,
        guessMax: 0x6fcce55f4ecf6e5c,
        guessOffchain: 0x37e672afa767b72e,
        maxIteration: 14,
        eps: 1000000000000000
    });
    IPendleRouter.TokenInput public gdaiInput = IPendleRouter.TokenInput({
        tokenIn: 0xDA10009cBd5D07dd0CeCc66161FC93D7c9000da1,
        netTokenIn: 0x0101342c7999aa6b72,
        tokenMintSy: 0xDA10009cBd5D07dd0CeCc66161FC93D7c9000da1,
        bulk: 0x0000000000000000000000000000000000000000,
        pendleSwap: 0x0000000000000000000000000000000000000000,
        swapData: SwapData({
            swapType: SwapType.NONE,
            extRouter: 0x0000000000000000000000000000000000000000,
            extCalldata: bytes(""),
            needScale: false
        })
    });
    IPendleRouter.ApproxParams public rethGuessPtReceivedFromSy = IPendleRouter.ApproxParams({
        guessMin: 0x0360d43e6ae7fc,
        guessMax: 0x0872129c0b43f8,
        guessOffchain: 0x0439094e05a1fc,
        maxIteration: 14,
        eps: 1000000000000000
    });
    IPendleRouter.TokenInput public rethInput = IPendleRouter.TokenInput({
        tokenIn: 0xEC70Dcb4A1EFa46b8F2D97C310C9c4790ba5ffA8,
        netTokenIn: 0x129e459849a1d2,
        tokenMintSy: 0xEC70Dcb4A1EFa46b8F2D97C310C9c4790ba5ffA8,
        bulk: 0x0000000000000000000000000000000000000000,
        pendleSwap: 0x0000000000000000000000000000000000000000,
        swapData: SwapData({
            swapType: SwapType.NONE,
            extRouter: 0x0000000000000000000000000000000000000000,
            extCalldata: bytes(""),
            needScale: false
        })
    });
    IPendleRouter.ApproxParams public pendleGuessPtReceivedFromSy = IPendleRouter.ApproxParams({
        guessMin: 0x013970cb2e24407c,
        guessMax: 0x030f99fbf35aa136,
        guessOffchain: 0x0187ccfdf9ad509b,
        maxIteration: 14,
        eps: 1000000000000000
    });
    IPendleRouter.TokenInput public pendleInput = IPendleRouter.TokenInput({
        tokenIn: 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1,
        netTokenIn: 0x550263a42f8000,
        tokenMintSy: 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1,
        bulk: 0x0000000000000000000000000000000000000000,
        pendleSwap: 0x0000000000000000000000000000000000000000,
        swapData: SwapData({
            swapType: SwapType.NONE,
            extRouter: 0x0000000000000000000000000000000000000000,
            extCalldata: bytes(""),
            needScale: false
        })
    });
    bytes public gdaiOneInchDataGDAI =
        hex"e449022e000000000000000000000000000000000000000000000000002a8131d217c000000000000000000000000000000000000000000000000000875ed40a1afb60f90000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000000100000000000000000000000031fa55e03bad93c7f8affdd2ec616ebfde2460018b1ccac8";
    bytes public rethOneInchDataRETH =
        hex"e449022e00000000000000000000000000000000000000000000000000154098e90be0000000000000000000000000000000000000000000000000000009cc906b1947b20000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000000100000000000000000000000009ba302a3f5ad2bf8853266e271b005a5b3716fe8b1ccac8";
    bytes public oneInchDataMagic =
        hex"e449022e000000000000000000000000000000000000000000000000000e2b109b5d4000000000000000000000000000000000000000000000000000598de52c2f8f6c9a0000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000000180000000000000000000000059d72ddb29da32847a4665d08ffc8464a7185fae8b1ccac8";

    BasePortfolio.DepositData public depositPayload = BasePortfolio.DepositData({
        amount: amountAfterChargingFee,
        receiver: ownerAddress,
        glpMinLpOut: 0x010a07a4a1df668bf0,
        glpGuessPtReceivedFromSy: glpSy,
        glpInput: glpInput,
        gdaiMinLpOut: 0x6eaa4fd933407088,
        gdaiGuessPtReceivedFromSy: gdaiGuessPtReceivedFromSy,
        gdaiInput: gdaiInput,
        gdaiOneInchDataGDAI: gdaiOneInchDataGDAI,
        rethMinLpOut: 0x08e6f70fe8b44a,
        rethGuessPtReceivedFromSy: rethGuessPtReceivedFromSy,
        rethInput: rethInput,
        rethOneInchDataRETH: rethOneInchDataRETH,
        oneInchDataMagic: oneInchDataMagic,
        pendleMinLpOut: 0x03fb283d27033711,
        pendleGuessPtReceivedFromSy: pendleGuessPtReceivedFromSy,
        pendleInput: pendleInput
    });
    address oneInchAddress = 0x1111111254EEB25477B68fb85Ed929f73A960582;


    function setUp() public {
        vm.startPrank(ownerAddress);

        // Deploy the contract
        equilibriaGlpVault = new EquilibriaGlpVault(ownerAddress, glpMarketPool, "Equilibria-GLP", "ALP-EQB-GLP");
        equilibriaGDAIVault = new EquilibriaGDAIVault(ownerAddress, gDAIMarketPool, "Equilibria-GDAI", "ALP-EQB-GDAI");
        equilibriaGDAIVault.updateOneInchAggregatorAddress(oneInchAddress);
        equilibriaRETHVault = new EquilibriaRETHVault(ownerAddress, rethMarketPool, "Equilibria-RETH", "ALP-EQB-RETH");
        equilibriaRETHVault.updateOneInchAggregatorAddress(oneInchAddress);
        equilibriaPendleVault =
            new EquilibriaPendleVault(ownerAddress, pendleMarketPool, "Equilibria-PENDLE", "ALP-EQB-PENDLE");
        magicVault =
            new MagicArbitrumVault(ownerAddress, sushiSwapMagicLpTokenAddress, "SushiSwap-MagicETH", "ALP-MAGIC-ETH");
        magicVault.updateOneInchAggregatorAddress(oneInchAddress);
        radiantVault = new RadiantArbitrumVault(ownerAddress, radiantDlpAddress, radiantLendingPoolAddress);
        permanentPortfolioLPToken =
        new PermanentPortfolioLPToken(ownerAddress, wethAddress, "PermanentLP", "PNLP", address(equilibriaGlpVault), address(equilibriaGDAIVault), address(equilibriaRETHVault), payable(address(magicVault)), address(equilibriaPendleVault), address(radiantVault));
        permanentPortfolioLPToken.setVaultAllocations(vaultAllocations);

        // chores
        weth.deposit{value: 1e18}();
        weth.approve(address(permanentPortfolioLPToken), type(uint256).max);
        (, uint256 portfolioShares) = Math.tryDiv(amountAfterChargingFee, permanentPortfolioLPToken.getUnitOfShares());

        vm.stopPrank();
    }

    // Assuming you have a contract structure with a function getPortfolioAllocation in permanentPortfolioLPToken
    function test_checkAllocation(address portfolioContract) public view {
        // Get the protocol names and percentages from your contract's storage
        (string[] memory protocolArray,) = permanentPortfolioLPToken.getPortfolioAllocation();

        // Check if each protocol in the portfolio allocation is in the allocation list
        for (uint256 i = 0; i < protocolArray.length; i++) {
            bool found = false;
            for (uint256 j = 0; j < vaultAllocations.length; j++) {
                if (
                    keccak256(abi.encodePacked(protocolArray[i]))
                        == keccak256(abi.encodePacked(vaultAllocations[j].protocol))
                ) {
                    found = true;
                    break;
                }
            }

            // Assert that the protocol is in the allocation list
            require(found, string(abi.encodePacked(protocolArray[i], " is not in the allocation list")));
        }
    }

    function test_should_be_able_to_execute_arbitrary_func_for_rescuing_fund() public {
        console2.log("weth balance: %s", weth.balanceOf(ownerAddress));
        console2.log("================");
        vm.prank(ownerAddress);
        permanentPortfolioLPToken.deposit(depositPayload);
    }
}
