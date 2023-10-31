// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IApolloX {
    function mintAlp(address tokenIn, uint256 amount, uint256 minAlp, bool stake) external;
    function unStake(uint256 _amount) external;
    function burnAlp(address tokenOut, uint256 alpAmount, uint256 minOut, address receiver) external;
    function stakeOf(address account) external view returns (uint256);
}

// [
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "facetAddress",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "enum IDiamondCut.FacetCutAction",
//                         "name": "action",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "bytes4[]",
//                         "name": "functionSelectors",
//                         "type": "bytes4[]"
//                     }
//                 ],
//                 "indexed": false,
//                 "internalType": "struct IDiamondCut.FacetCut[]",
//                 "name": "_diamondCut",
//                 "type": "tuple[]"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "address",
//                 "name": "_init",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "bytes",
//                 "name": "_calldata",
//                 "type": "bytes"
//             }
//         ],
//         "name": "DiamondCut",
//         "type": "event"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "facetAddress",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "enum IDiamondCut.FacetCutAction",
//                         "name": "action",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "bytes4[]",
//                         "name": "functionSelectors",
//                         "type": "bytes4[]"
//                     }
//                 ],
//                 "internalType": "struct IDiamondCut.FacetCut[]",
//                 "name": "_diamondCut",
//                 "type": "tuple[]"
//             },
//             {
//                 "internalType": "address",
//                 "name": "_init",
//                 "type": "address"
//             },
//             {
//                 "internalType": "bytes",
//                 "name": "_calldata",
//                 "type": "bytes"
//             }
//         ],
//         "name": "diamondCut",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes4",
//                 "name": "_functionSelector",
//                 "type": "bytes4"
//             }
//         ],
//         "name": "facetAddress",
//         "outputs": [
//             {
//                 "internalType": "address",
//                 "name": "facetAddress_",
//                 "type": "address"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "facetAddresses",
//         "outputs": [
//             {
//                 "internalType": "address[]",
//                 "name": "facetAddresses_",
//                 "type": "address[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "_facet",
//                 "type": "address"
//             }
//         ],
//         "name": "facetFunctionSelectors",
//         "outputs": [
//             {
//                 "internalType": "bytes4[]",
//                 "name": "facetFunctionSelectors_",
//                 "type": "bytes4[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "facets",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "facetAddress",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bytes4[]",
//                         "name": "functionSelectors",
//                         "type": "bytes4[]"
//                     }
//                 ],
//                 "internalType": "struct IDiamondLoupe.Facet[]",
//                 "name": "facets_",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "role",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "previousAdminRole",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "newAdminRole",
//                 "type": "bytes32"
//             }
//         ],
//         "name": "RoleAdminChanged",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "role",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "account",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "sender",
//                 "type": "address"
//             }
//         ],
//         "name": "RoleGranted",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "role",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "account",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "sender",
//                 "type": "address"
//             }
//         ],
//         "name": "RoleRevoked",
//         "type": "event"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "role",
//                 "type": "bytes32"
//             }
//         ],
//         "name": "getRoleAdmin",
//         "outputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "",
//                 "type": "bytes32"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "role",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "index",
//                 "type": "uint256"
//             }
//         ],
//         "name": "getRoleMember",
//         "outputs": [
//             {
//                 "internalType": "address",
//                 "name": "",
//                 "type": "address"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "role",
//                 "type": "bytes32"
//             }
//         ],
//         "name": "getRoleMemberCount",
//         "outputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "",
//                 "type": "uint256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "role",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "address",
//                 "name": "account",
//                 "type": "address"
//             }
//         ],
//         "name": "grantRole",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "role",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "address",
//                 "name": "account",
//                 "type": "address"
//             }
//         ],
//         "name": "hasRole",
//         "outputs": [
//             {
//                 "internalType": "bool",
//                 "name": "",
//                 "type": "bool"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "role",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "address",
//                 "name": "account",
//                 "type": "address"
//             }
//         ],
//         "name": "renounceRole",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "role",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "address",
//                 "name": "account",
//                 "type": "address"
//             }
//         ],
//         "name": "revokeRole",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "amount",
//                 "type": "uint256"
//             }
//         ],
//         "name": "CloseTradeRemoveLiquidity",
//         "type": "event"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "tokenAddress",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "feeBasisPoints",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "taxBasisPoints",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "stable",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "dynamicFee",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "asMargin",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "uint16[]",
//                 "name": "weights",
//                 "type": "uint16[]"
//             }
//         ],
//         "name": "addToken",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint16[]",
//                 "name": "weights",
//                 "type": "uint16[]"
//             }
//         ],
//         "name": "changeWeight",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "amount",
//                 "type": "uint256"
//             }
//         ],
//         "name": "decreaseByCloseTrade",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "token",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "amount",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint8",
//                         "name": "decimals",
//                         "type": "uint8"
//                     }
//                 ],
//                 "internalType": "struct ITradingClose.SettleToken[]",
//                 "name": "",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "tokenAddress",
//                 "type": "address"
//             }
//         ],
//         "name": "getTokenByAddress",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "tokenAddress",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "weight",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "feeBasisPoints",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "taxBasisPoints",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "stable",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "dynamicFee",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "asMargin",
//                         "type": "bool"
//                     }
//                 ],
//                 "internalType": "struct IVault.Token",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "tokenAddress",
//                 "type": "address"
//             }
//         ],
//         "name": "getTokenForTrading",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "token",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "asMargin",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "uint8",
//                         "name": "decimals",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "price",
//                         "type": "uint256"
//                     }
//                 ],
//                 "internalType": "struct IVault.MarginToken",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "amount",
//                 "type": "uint256"
//             }
//         ],
//         "name": "increaseByCloseTrade",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "wbnb",
//                 "type": "address"
//             }
//         ],
//         "name": "initVaultFacet",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             }
//         ],
//         "name": "itemValue",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "tokenAddress",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "int256",
//                         "name": "value",
//                         "type": "int256"
//                     },
//                     {
//                         "internalType": "uint8",
//                         "name": "decimals",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "int256",
//                         "name": "valueUsd",
//                         "type": "int256"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "targetWeight",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "feeBasisPoints",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "taxBasisPoints",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "dynamicFee",
//                         "type": "bool"
//                     }
//                 ],
//                 "internalType": "struct IVault.LpItem",
//                 "name": "lpItem",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "maxWithdrawAbleUsd",
//         "outputs": [
//             {
//                 "internalType": "int256",
//                 "name": "",
//                 "type": "int256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "tokenAddress",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint16[]",
//                 "name": "weights",
//                 "type": "uint16[]"
//             }
//         ],
//         "name": "removeToken",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "securityMarginP",
//         "outputs": [
//             {
//                 "internalType": "uint16",
//                 "name": "",
//                 "type": "uint16"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint16",
//                 "name": "_securityMarginP",
//                 "type": "uint16"
//             }
//         ],
//         "name": "setSecurityMarginP",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "tokensV2",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "tokenAddress",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "weight",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "feeBasisPoints",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "taxBasisPoints",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "stable",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "dynamicFee",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "asMargin",
//                         "type": "bool"
//                     }
//                 ],
//                 "internalType": "struct IVault.Token[]",
//                 "name": "",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "totalValue",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "tokenAddress",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "int256",
//                         "name": "value",
//                         "type": "int256"
//                     },
//                     {
//                         "internalType": "uint8",
//                         "name": "decimals",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "int256",
//                         "name": "valueUsd",
//                         "type": "int256"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "targetWeight",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "feeBasisPoints",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "taxBasisPoints",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "dynamicFee",
//                         "type": "bool"
//                     }
//                 ],
//                 "internalType": "struct IVault.LpItem[]",
//                 "name": "lpItems",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "tokenAddress",
//                 "type": "address"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "asMargin",
//                 "type": "bool"
//             }
//         ],
//         "name": "updateAsMargin",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "tokenAddress",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "feeBasisPoints",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "taxBasisPoints",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "dynamicFee",
//                 "type": "bool"
//             }
//         ],
//         "name": "updateToken",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": false,
//                 "internalType": "address",
//                 "name": "account",
//                 "type": "address"
//             }
//         ],
//         "name": "Paused",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": false,
//                 "internalType": "address",
//                 "name": "account",
//                 "type": "address"
//             }
//         ],
//         "name": "Unpaused",
//         "type": "event"
//     },
//     {
//         "inputs": [],
//         "name": "pause",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "paused",
//         "outputs": [
//             {
//                 "internalType": "bool",
//                 "name": "",
//                 "type": "bool"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "unpause",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             },
//             {
//                 "internalType": "address",
//                 "name": "priceFeed",
//                 "type": "address"
//             }
//         ],
//         "name": "addChainlinkPriceFeed",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "chainlinkPriceFeeds",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "token",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "feedAddress",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "string",
//                         "name": "description",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "uint8",
//                         "name": "decimals",
//                         "type": "uint8"
//                     }
//                 ],
//                 "internalType": "struct IOraclePrice.PriceFeedInfo[]",
//                 "name": "priceFeeds",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             }
//         ],
//         "name": "getPriceFromChainlink",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "uint256",
//                         "name": "price",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint8",
//                         "name": "decimals",
//                         "type": "uint8"
//                     }
//                 ],
//                 "internalType": "struct IOraclePrice.PriceInfo",
//                 "name": "priceInfo",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             }
//         ],
//         "name": "removeChainlinkPriceFeed",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint64",
//                 "name": "price",
//                 "type": "uint64"
//             }
//         ],
//         "name": "confirmTriggerPrice",
//         "outputs": [
//             {
//                 "internalType": "bool",
//                 "name": "available",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "uint64",
//                 "name": "upper",
//                 "type": "uint64"
//             },
//             {
//                 "internalType": "uint64",
//                 "name": "lower",
//                 "type": "uint64"
//             }
//         ],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             }
//         ],
//         "name": "getPrice",
//         "outputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "",
//                 "type": "uint256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "getPriceFacadeConfig",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "uint16",
//                         "name": "lowPriceGapP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "highPriceGapP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "maxDelay",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "triggerLowPriceGapP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "triggerHighPriceGapP",
//                         "type": "uint16"
//                     }
//                 ],
//                 "internalType": "struct IPriceFacade.Config",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             }
//         ],
//         "name": "getPriceFromCacheOrOracle",
//         "outputs": [
//             {
//                 "internalType": "uint64",
//                 "name": "price",
//                 "type": "uint64"
//             },
//             {
//                 "internalType": "uint40",
//                 "name": "updatedAt",
//                 "type": "uint40"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint16",
//                 "name": "lowPriceGapP",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "highPriceGapP",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "maxPriceDelay",
//                 "type": "uint16"
//             }
//         ],
//         "name": "initPriceFacadeFacet",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "isOpen",
//                 "type": "bool"
//             }
//         ],
//         "name": "requestPrice",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "requestId",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "uint64",
//                 "name": "price",
//                 "type": "uint64"
//             }
//         ],
//         "name": "requestPriceCallback",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint16",
//                 "name": "lowPriceGapP",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "highPriceGapP",
//                 "type": "uint16"
//             }
//         ],
//         "name": "setLowAndHighPriceGapP",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint16",
//                 "name": "maxDelay",
//                 "type": "uint16"
//             }
//         ],
//         "name": "setMaxDelay",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint16",
//                 "name": "triggerLowPriceGapP",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "triggerHighPriceGapP",
//                 "type": "uint16"
//             }
//         ],
//         "name": "setTriggerLowAndHighPriceGapP",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "claimAllReward",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "_stakingToken",
//                 "type": "address"
//             }
//         ],
//         "name": "initializeStakeRewardFacet",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "_amount",
//                 "type": "uint256"
//             }
//         ],
//         "name": "stake",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "_user",
//                 "type": "address"
//             }
//         ],
//         "name": "stakeOf",
//         "outputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "",
//                 "type": "uint256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "totalStaked",
//         "outputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "",
//                 "type": "uint256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "_amount",
//                 "type": "uint256"
//             }
//         ],
//         "name": "unStake",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "amount",
//                 "type": "uint256"
//             }
//         ],
//         "name": "addReserves",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "apxPoolInfo",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "uint256",
//                         "name": "totalStaked",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "apxPerBlock",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "lastRewardBlock",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "accAPXPerShare",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "totalReward",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "reserves",
//                         "type": "uint256"
//                     }
//                 ],
//                 "internalType": "struct IApxReward.ApxPoolInfo",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "_rewardsToken",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "_apxPerBlock",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "_startBlock",
//                 "type": "uint256"
//             }
//         ],
//         "name": "initializeApxRewardFacet",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "_account",
//                 "type": "address"
//             }
//         ],
//         "name": "pendingApx",
//         "outputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "",
//                 "type": "uint256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "_apxPerBlock",
//                 "type": "uint256"
//             }
//         ],
//         "name": "updateApxPerBlock",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             }
//         ],
//         "name": "getMarketInfo",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "longQty",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "shortQty",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "lpLongAvgPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "lpShortAvgPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "int256",
//                         "name": "fundingFeeRate",
//                         "type": "int256"
//                     }
//                 ],
//                 "internalType": "struct ITradingReader.MarketInfo",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address[]",
//                 "name": "pairBases",
//                 "type": "address[]"
//             }
//         ],
//         "name": "getMarketInfos",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "longQty",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "shortQty",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "lpLongAvgPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "lpShortAvgPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "int256",
//                         "name": "fundingFeeRate",
//                         "type": "int256"
//                     }
//                 ],
//                 "internalType": "struct ITradingReader.MarketInfo[]",
//                 "name": "",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             }
//         ],
//         "name": "getPendingTrade",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "user",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "price",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint128",
//                         "name": "blockNumber",
//                         "type": "uint128"
//                     }
//                 ],
//                 "internalType": "struct ITrading.PendingTrade",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             }
//         ],
//         "name": "getPositionByHashV2",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "bytes32",
//                         "name": "positionHash",
//                         "type": "bytes32"
//                     },
//                     {
//                         "internalType": "string",
//                         "name": "pair",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "marginToken",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "margin",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "entryPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "openFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "executionFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "int256",
//                         "name": "fundingFee",
//                         "type": "int256"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "timestamp",
//                         "type": "uint40"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "holdingFee",
//                         "type": "uint96"
//                     }
//                 ],
//                 "internalType": "struct ITradingReader.Position",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             }
//         ],
//         "name": "getPositionsV2",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "bytes32",
//                         "name": "positionHash",
//                         "type": "bytes32"
//                     },
//                     {
//                         "internalType": "string",
//                         "name": "pair",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "marginToken",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "margin",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "entryPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "openFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "executionFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "int256",
//                         "name": "fundingFee",
//                         "type": "int256"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "timestamp",
//                         "type": "uint40"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "holdingFee",
//                         "type": "uint96"
//                     }
//                 ],
//                 "internalType": "struct ITradingReader.Position[]",
//                 "name": "",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address[]",
//                 "name": "tokens",
//                 "type": "address[]"
//             }
//         ],
//         "name": "traderAssets",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "enum ITradingReader.AssetPurpose",
//                         "name": "purpose",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "token",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "value",
//                         "type": "uint256"
//                     }
//                 ],
//                 "internalType": "struct ITradingReader.TraderAsset[]",
//                 "name": "",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "account",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "receiver",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "tokenOut",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "alpAmount",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "amountOut",
//                 "type": "uint256"
//             }
//         ],
//         "name": "BurnAlp",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "account",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "tokenOut",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "amountOut",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "tokenOutPrice",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "burnFeeUsd",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "alpAmount",
//                 "type": "uint256"
//             }
//         ],
//         "name": "BurnFee",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "account",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "tokenIn",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "amountIn",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "alpOut",
//                 "type": "uint256"
//             }
//         ],
//         "name": "MintAlp",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "account",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "tokenIn",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "amountIn",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "tokenInPrice",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "mintFeeUsd",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "alpAmount",
//                 "type": "uint256"
//             }
//         ],
//         "name": "MintFee",
//         "type": "event"
//     },
//     {
//         "inputs": [],
//         "name": "ALP",
//         "outputs": [
//             {
//                 "internalType": "address",
//                 "name": "",
//                 "type": "address"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "alpPrice",
//         "outputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "",
//                 "type": "uint256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "tokenOut",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "alpAmount",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "minOut",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "address",
//                 "name": "receiver",
//                 "type": "address"
//             }
//         ],
//         "name": "burnAlp",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "alpAmount",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "minOut",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "address payable",
//                 "name": "receiver",
//                 "type": "address"
//             }
//         ],
//         "name": "burnAlpBNB",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "coolingDuration",
//         "outputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "",
//                 "type": "uint256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "alpToken",
//                 "type": "address"
//             }
//         ],
//         "name": "initAlpManagerFacet",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "account",
//                 "type": "address"
//             }
//         ],
//         "name": "lastMintedTimestamp",
//         "outputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "",
//                 "type": "uint256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "tokenIn",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "amount",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "minAlp",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "stake",
//                 "type": "bool"
//             }
//         ],
//         "name": "mintAlp",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "minAlp",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "stake",
//                 "type": "bool"
//             }
//         ],
//         "name": "mintAlpBNB",
//         "outputs": [],
//         "stateMutability": "payable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "coolingDuration_",
//                 "type": "uint256"
//             }
//         ],
//         "name": "setCoolingDuration",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "uint16",
//                 "name": "index",
//                 "type": "uint16"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint16",
//                 "name": "openFeeP",
//                 "type": "uint16"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint16",
//                 "name": "closeFeeP",
//                 "type": "uint16"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint24",
//                 "name": "shareP",
//                 "type": "uint24"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint24",
//                 "name": "minCloseFeeP",
//                 "type": "uint24"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "string",
//                 "name": "name",
//                 "type": "string"
//             }
//         ],
//         "name": "AddFeeConfig",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "totalFee",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "daoAmount",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint24",
//                 "name": "brokerId",
//                 "type": "uint24"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "brokerAmount",
//                 "type": "uint256"
//             }
//         ],
//         "name": "CloseFee",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "totalFee",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "daoAmount",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint24",
//                 "name": "brokerId",
//                 "type": "uint24"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "brokerAmount",
//                 "type": "uint256"
//             }
//         ],
//         "name": "OpenFee",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "uint16",
//                 "name": "index",
//                 "type": "uint16"
//             }
//         ],
//         "name": "RemoveFeeConfig",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "oldDaoRepurchase",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "address",
//                 "name": "daoRepurchase",
//                 "type": "address"
//             }
//         ],
//         "name": "SetDaoRepurchase",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": false,
//                 "internalType": "uint16",
//                 "name": "oldDaoShareP",
//                 "type": "uint16"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint16",
//                 "name": "daoShareP",
//                 "type": "uint16"
//             }
//         ],
//         "name": "SetDaoShareP",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "uint16",
//                 "name": "index",
//                 "type": "uint16"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint16",
//                 "name": "openFeeP",
//                 "type": "uint16"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint16",
//                 "name": "closeFeeP",
//                 "type": "uint16"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint24",
//                 "name": "shareP",
//                 "type": "uint24"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint24",
//                 "name": "minCloseFeeP",
//                 "type": "uint24"
//             }
//         ],
//         "name": "UpdateFeeConfig",
//         "type": "event"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint16",
//                 "name": "index",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "string",
//                 "name": "name",
//                 "type": "string"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "openFeeP",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "closeFeeP",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "uint24",
//                 "name": "shareP",
//                 "type": "uint24"
//             },
//             {
//                 "internalType": "uint24",
//                 "name": "minCloseFeeP",
//                 "type": "uint24"
//             }
//         ],
//         "name": "addFeeConfig",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "closeFee",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint24",
//                 "name": "broker",
//                 "type": "uint24"
//             }
//         ],
//         "name": "chargeCloseFee",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "openFee",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint24",
//                 "name": "broker",
//                 "type": "uint24"
//             }
//         ],
//         "name": "chargeOpenFee",
//         "outputs": [
//             {
//                 "internalType": "uint24",
//                 "name": "",
//                 "type": "uint24"
//             }
//         ],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "daoConfig",
//         "outputs": [
//             {
//                 "internalType": "address",
//                 "name": "",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "",
//                 "type": "uint16"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint16",
//                 "name": "index",
//                 "type": "uint16"
//             }
//         ],
//         "name": "getFeeConfigByIndex",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "string",
//                         "name": "name",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "index",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "openFeeP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "closeFeeP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "enable",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "shareP",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "minCloseFeeP",
//                         "type": "uint24"
//                     }
//                 ],
//                 "internalType": "struct LibFeeManager.FeeConfig",
//                 "name": "",
//                 "type": "tuple"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "string",
//                         "name": "name",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "base",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "enum IPairsManager.PairType",
//                         "name": "pairType",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "enum IPairsManager.PairStatus",
//                         "name": "status",
//                         "type": "uint8"
//                     }
//                 ],
//                 "internalType": "struct IPairsManager.PairSimple[]",
//                 "name": "",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address[]",
//                 "name": "tokens",
//                 "type": "address[]"
//             }
//         ],
//         "name": "getFeeDetails",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "uint256",
//                         "name": "total",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "daoAmount",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "brokerAmount",
//                         "type": "uint256"
//                     }
//                 ],
//                 "internalType": "struct IFeeManager.FeeDetail[]",
//                 "name": "",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "daoRepurchase",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "daoShareP",
//                 "type": "uint16"
//             }
//         ],
//         "name": "initFeeManagerFacet",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint16",
//                 "name": "index",
//                 "type": "uint16"
//             }
//         ],
//         "name": "removeFeeConfig",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "daoRepurchase",
//                 "type": "address"
//             }
//         ],
//         "name": "setDaoRepurchase",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint16",
//                 "name": "daoShareP",
//                 "type": "uint16"
//             }
//         ],
//         "name": "setDaoShareP",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint16",
//                 "name": "index",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "openFeeP",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "closeFeeP",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "uint24",
//                 "name": "shareP",
//                 "type": "uint24"
//             },
//             {
//                 "internalType": "uint24",
//                 "name": "minCloseFeeP",
//                 "type": "uint24"
//             }
//         ],
//         "name": "updateFeeConfig",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "transactionHash",
//                 "type": "bytes32"
//             }
//         ],
//         "name": "CancelTransaction",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "transactionHash",
//                 "type": "bytes32"
//             }
//         ],
//         "name": "ExecuteTransaction",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "transactionHash",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "string",
//                 "name": "functionSignature",
//                 "type": "string"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "bytes",
//                 "name": "data",
//                 "type": "bytes"
//             }
//         ],
//         "name": "QueueTransaction",
//         "type": "event"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "transactionHash",
//                 "type": "bytes32"
//             }
//         ],
//         "name": "cancelTransaction",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "transactionHash",
//                 "type": "bytes32"
//             }
//         ],
//         "name": "executeTransaction",
//         "outputs": [
//             {
//                 "internalType": "bytes",
//                 "name": "",
//                 "type": "bytes"
//             }
//         ],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "string",
//                 "name": "functionSignature",
//                 "type": "string"
//             },
//             {
//                 "internalType": "bytes",
//                 "name": "data",
//                 "type": "bytes"
//             }
//         ],
//         "name": "queueTransaction",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             },
//             {
//                 "internalType": "string",
//                 "name": "name",
//                 "type": "string"
//             },
//             {
//                 "internalType": "enum IPairsManager.PairType",
//                 "name": "pairType",
//                 "type": "uint8"
//             },
//             {
//                 "internalType": "enum IPairsManager.PairStatus",
//                 "name": "status",
//                 "type": "uint8"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "uint256",
//                         "name": "maxLongOiUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "maxShortOiUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "fundingFeePerBlockP",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "minFundingFeeR",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "maxFundingFeeR",
//                         "type": "uint256"
//                     }
//                 ],
//                 "internalType": "struct IPairsManager.PairMaxOiAndFundingFeeConfig",
//                 "name": "pairConfig",
//                 "type": "tuple"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "slippageConfigIndex",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "feeConfigIndex",
//                 "type": "uint16"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "uint256",
//                         "name": "notionalUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "tier",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "maxLeverage",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "initialLostP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "liqLostP",
//                         "type": "uint16"
//                     }
//                 ],
//                 "internalType": "struct LibPairsManager.LeverageMargin[]",
//                 "name": "leverageMargins",
//                 "type": "tuple[]"
//             },
//             {
//                 "internalType": "uint40",
//                 "name": "longHoldingFeeRate",
//                 "type": "uint40"
//             },
//             {
//                 "internalType": "uint40",
//                 "name": "shortHoldingFeeRate",
//                 "type": "uint40"
//             }
//         ],
//         "name": "addPair",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "base",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "maxLongOiUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "maxShortOiUsd",
//                         "type": "uint256"
//                     }
//                 ],
//                 "internalType": "struct IPairsManager.UpdatePairMaxOiParam[]",
//                 "name": "params",
//                 "type": "tuple[]"
//             }
//         ],
//         "name": "batchUpdatePairMaxOi",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "enum IPairsManager.PairType",
//                 "name": "pairType",
//                 "type": "uint8"
//             },
//             {
//                 "internalType": "enum IPairsManager.PairStatus",
//                 "name": "status",
//                 "type": "uint8"
//             }
//         ],
//         "name": "batchUpdatePairStatus",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             }
//         ],
//         "name": "getPairByBaseV3",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "string",
//                         "name": "name",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "base",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "basePosition",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "enum IPairsManager.PairType",
//                         "name": "pairType",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "enum IPairsManager.PairStatus",
//                         "name": "status",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "maxLongOiUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "maxShortOiUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "fundingFeePerBlockP",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "minFundingFeeR",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "maxFundingFeeR",
//                         "type": "uint256"
//                     },
//                     {
//                         "components": [
//                             {
//                                 "internalType": "uint256",
//                                 "name": "notionalUsd",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "tier",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "maxLeverage",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "initialLostP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "liqLostP",
//                                 "type": "uint16"
//                             }
//                         ],
//                         "internalType": "struct LibPairsManager.LeverageMargin[]",
//                         "name": "leverageMargins",
//                         "type": "tuple[]"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "slippageConfigIndex",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "slippagePosition",
//                         "type": "uint16"
//                     },
//                     {
//                         "components": [
//                             {
//                                 "internalType": "string",
//                                 "name": "name",
//                                 "type": "string"
//                             },
//                             {
//                                 "internalType": "uint256",
//                                 "name": "onePercentDepthAboveUsd",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint256",
//                                 "name": "onePercentDepthBelowUsd",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "slippageLongP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "slippageShortP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "index",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "enum ISlippageManager.SlippageType",
//                                 "name": "slippageType",
//                                 "type": "uint8"
//                             },
//                             {
//                                 "internalType": "bool",
//                                 "name": "enable",
//                                 "type": "bool"
//                             }
//                         ],
//                         "internalType": "struct LibPairsManager.SlippageConfig",
//                         "name": "slippageConfig",
//                         "type": "tuple"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "feeConfigIndex",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "feePosition",
//                         "type": "uint16"
//                     },
//                     {
//                         "components": [
//                             {
//                                 "internalType": "string",
//                                 "name": "name",
//                                 "type": "string"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "index",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "openFeeP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "closeFeeP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "bool",
//                                 "name": "enable",
//                                 "type": "bool"
//                             },
//                             {
//                                 "internalType": "uint24",
//                                 "name": "shareP",
//                                 "type": "uint24"
//                             },
//                             {
//                                 "internalType": "uint24",
//                                 "name": "minCloseFeeP",
//                                 "type": "uint24"
//                             }
//                         ],
//                         "internalType": "struct LibFeeManager.FeeConfig",
//                         "name": "feeConfig",
//                         "type": "tuple"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "longHoldingFeeRate",
//                         "type": "uint40"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "shortHoldingFeeRate",
//                         "type": "uint40"
//                     }
//                 ],
//                 "internalType": "struct IPairsManager.PairView",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             }
//         ],
//         "name": "getPairConfig",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "uint256",
//                         "name": "maxLongOiUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "maxShortOiUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "fundingFeePerBlockP",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "minFundingFeeR",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "maxFundingFeeR",
//                         "type": "uint256"
//                     }
//                 ],
//                 "internalType": "struct IPairsManager.PairMaxOiAndFundingFeeConfig",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             }
//         ],
//         "name": "getPairFeeConfig",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "uint16",
//                         "name": "openFeeP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "closeFeeP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "shareP",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "minCloseFeeP",
//                         "type": "uint24"
//                     }
//                 ],
//                 "internalType": "struct IPairsManager.FeeConfig",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             }
//         ],
//         "name": "getPairForTrading",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "base",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "string",
//                         "name": "name",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "enum IPairsManager.PairType",
//                         "name": "pairType",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "enum IPairsManager.PairStatus",
//                         "name": "status",
//                         "type": "uint8"
//                     },
//                     {
//                         "components": [
//                             {
//                                 "internalType": "uint256",
//                                 "name": "maxLongOiUsd",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint256",
//                                 "name": "maxShortOiUsd",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint256",
//                                 "name": "fundingFeePerBlockP",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint256",
//                                 "name": "minFundingFeeR",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint256",
//                                 "name": "maxFundingFeeR",
//                                 "type": "uint256"
//                             }
//                         ],
//                         "internalType": "struct IPairsManager.PairMaxOiAndFundingFeeConfig",
//                         "name": "pairConfig",
//                         "type": "tuple"
//                     },
//                     {
//                         "components": [
//                             {
//                                 "internalType": "uint256",
//                                 "name": "notionalUsd",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "maxLeverage",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "initialLostP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "liqLostP",
//                                 "type": "uint16"
//                             }
//                         ],
//                         "internalType": "struct IPairsManager.LeverageMargin[]",
//                         "name": "leverageMargins",
//                         "type": "tuple[]"
//                     },
//                     {
//                         "components": [
//                             {
//                                 "internalType": "uint256",
//                                 "name": "onePercentDepthAboveUsd",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint256",
//                                 "name": "onePercentDepthBelowUsd",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "slippageLongP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "slippageShortP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "enum ISlippageManager.SlippageType",
//                                 "name": "slippageType",
//                                 "type": "uint8"
//                             }
//                         ],
//                         "internalType": "struct ISlippageManager.SlippageConfig",
//                         "name": "slippageConfig",
//                         "type": "tuple"
//                     },
//                     {
//                         "components": [
//                             {
//                                 "internalType": "uint16",
//                                 "name": "openFeeP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "closeFeeP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint24",
//                                 "name": "shareP",
//                                 "type": "uint24"
//                             },
//                             {
//                                 "internalType": "uint24",
//                                 "name": "minCloseFeeP",
//                                 "type": "uint24"
//                             }
//                         ],
//                         "internalType": "struct IPairsManager.FeeConfig",
//                         "name": "feeConfig",
//                         "type": "tuple"
//                     }
//                 ],
//                 "internalType": "struct IPairsManager.TradingPair",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "isLong",
//                 "type": "bool"
//             }
//         ],
//         "name": "getPairHoldingFeeRate",
//         "outputs": [
//             {
//                 "internalType": "uint40",
//                 "name": "holdingFeeRate",
//                 "type": "uint40"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             }
//         ],
//         "name": "getPairSlippageConfig",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "uint256",
//                         "name": "onePercentDepthAboveUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "onePercentDepthBelowUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "slippageLongP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "slippageShortP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "enum ISlippageManager.SlippageType",
//                         "name": "slippageType",
//                         "type": "uint8"
//                     }
//                 ],
//                 "internalType": "struct ISlippageManager.SlippageConfig",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "pairsV3",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "string",
//                         "name": "name",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "base",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "basePosition",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "enum IPairsManager.PairType",
//                         "name": "pairType",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "enum IPairsManager.PairStatus",
//                         "name": "status",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "maxLongOiUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "maxShortOiUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "fundingFeePerBlockP",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "minFundingFeeR",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "maxFundingFeeR",
//                         "type": "uint256"
//                     },
//                     {
//                         "components": [
//                             {
//                                 "internalType": "uint256",
//                                 "name": "notionalUsd",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "tier",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "maxLeverage",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "initialLostP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "liqLostP",
//                                 "type": "uint16"
//                             }
//                         ],
//                         "internalType": "struct LibPairsManager.LeverageMargin[]",
//                         "name": "leverageMargins",
//                         "type": "tuple[]"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "slippageConfigIndex",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "slippagePosition",
//                         "type": "uint16"
//                     },
//                     {
//                         "components": [
//                             {
//                                 "internalType": "string",
//                                 "name": "name",
//                                 "type": "string"
//                             },
//                             {
//                                 "internalType": "uint256",
//                                 "name": "onePercentDepthAboveUsd",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint256",
//                                 "name": "onePercentDepthBelowUsd",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "slippageLongP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "slippageShortP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "index",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "enum ISlippageManager.SlippageType",
//                                 "name": "slippageType",
//                                 "type": "uint8"
//                             },
//                             {
//                                 "internalType": "bool",
//                                 "name": "enable",
//                                 "type": "bool"
//                             }
//                         ],
//                         "internalType": "struct LibPairsManager.SlippageConfig",
//                         "name": "slippageConfig",
//                         "type": "tuple"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "feeConfigIndex",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "feePosition",
//                         "type": "uint16"
//                     },
//                     {
//                         "components": [
//                             {
//                                 "internalType": "string",
//                                 "name": "name",
//                                 "type": "string"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "index",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "openFeeP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "uint16",
//                                 "name": "closeFeeP",
//                                 "type": "uint16"
//                             },
//                             {
//                                 "internalType": "bool",
//                                 "name": "enable",
//                                 "type": "bool"
//                             },
//                             {
//                                 "internalType": "uint24",
//                                 "name": "shareP",
//                                 "type": "uint24"
//                             },
//                             {
//                                 "internalType": "uint24",
//                                 "name": "minCloseFeeP",
//                                 "type": "uint24"
//                             }
//                         ],
//                         "internalType": "struct LibFeeManager.FeeConfig",
//                         "name": "feeConfig",
//                         "type": "tuple"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "longHoldingFeeRate",
//                         "type": "uint40"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "shortHoldingFeeRate",
//                         "type": "uint40"
//                     }
//                 ],
//                 "internalType": "struct IPairsManager.PairView[]",
//                 "name": "",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             }
//         ],
//         "name": "removePair",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "feeConfigIndex",
//                 "type": "uint16"
//             }
//         ],
//         "name": "updatePairFee",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "fundingFeePerBlockP",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "minFundingFeeR",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "maxFundingFeeR",
//                 "type": "uint256"
//             }
//         ],
//         "name": "updatePairFundingFeeConfig",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint40",
//                 "name": "longHoldingFeeRate",
//                 "type": "uint40"
//             },
//             {
//                 "internalType": "uint40",
//                 "name": "shortHoldingFeeRate",
//                 "type": "uint40"
//             }
//         ],
//         "name": "updatePairHoldingFeeRate",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "uint256",
//                         "name": "notionalUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "tier",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "maxLeverage",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "initialLostP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "liqLostP",
//                         "type": "uint16"
//                     }
//                 ],
//                 "internalType": "struct LibPairsManager.LeverageMargin[]",
//                 "name": "leverageMargins",
//                 "type": "tuple[]"
//             }
//         ],
//         "name": "updatePairLeverageMargin",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "maxLongOiUsd",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "maxShortOiUsd",
//                 "type": "uint256"
//             }
//         ],
//         "name": "updatePairMaxOi",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "slippageConfigIndex",
//                 "type": "uint16"
//             }
//         ],
//         "name": "updatePairSlippage",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "base",
//                 "type": "address"
//             },
//             {
//                 "internalType": "enum IPairsManager.PairStatus",
//                 "name": "status",
//                 "type": "uint8"
//             }
//         ],
//         "name": "updatePairStatus",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint24",
//                 "name": "id",
//                 "type": "uint24"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "commissionP",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "address",
//                 "name": "receiver",
//                 "type": "address"
//             },
//             {
//                 "internalType": "string",
//                 "name": "name",
//                 "type": "string"
//             },
//             {
//                 "internalType": "string",
//                 "name": "url",
//                 "type": "string"
//             }
//         ],
//         "name": "addBroker",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "start",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint8",
//                 "name": "length",
//                 "type": "uint8"
//             }
//         ],
//         "name": "brokers",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "string",
//                         "name": "name",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "string",
//                         "name": "url",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "receiver",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "id",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "commissionP",
//                         "type": "uint16"
//                     },
//                     {
//                         "components": [
//                             {
//                                 "internalType": "address",
//                                 "name": "token",
//                                 "type": "address"
//                             },
//                             {
//                                 "internalType": "uint256",
//                                 "name": "total",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint256",
//                                 "name": "pending",
//                                 "type": "uint256"
//                             }
//                         ],
//                         "internalType": "struct IBrokerManager.CommissionInfo[]",
//                         "name": "commissions",
//                         "type": "tuple[]"
//                     }
//                 ],
//                 "internalType": "struct IBrokerManager.BrokerInfo[]",
//                 "name": "",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint24",
//                 "name": "id",
//                 "type": "uint24"
//             }
//         ],
//         "name": "getBrokerById",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "string",
//                         "name": "name",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "string",
//                         "name": "url",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "receiver",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "id",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "commissionP",
//                         "type": "uint16"
//                     },
//                     {
//                         "components": [
//                             {
//                                 "internalType": "address",
//                                 "name": "token",
//                                 "type": "address"
//                             },
//                             {
//                                 "internalType": "uint256",
//                                 "name": "total",
//                                 "type": "uint256"
//                             },
//                             {
//                                 "internalType": "uint256",
//                                 "name": "pending",
//                                 "type": "uint256"
//                             }
//                         ],
//                         "internalType": "struct IBrokerManager.CommissionInfo[]",
//                         "name": "commissions",
//                         "type": "tuple[]"
//                     }
//                 ],
//                 "internalType": "struct IBrokerManager.BrokerInfo",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint24",
//                 "name": "id",
//                 "type": "uint24"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "commissionP",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "address",
//                 "name": "receiver",
//                 "type": "address"
//             },
//             {
//                 "internalType": "string",
//                 "name": "name",
//                 "type": "string"
//             },
//             {
//                 "internalType": "string",
//                 "name": "url",
//                 "type": "string"
//             }
//         ],
//         "name": "initBrokerManagerFacet",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint24",
//                 "name": "id",
//                 "type": "uint24"
//             }
//         ],
//         "name": "removeBroker",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint24",
//                 "name": "id",
//                 "type": "uint24"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "commissionP",
//                 "type": "uint16"
//             }
//         ],
//         "name": "updateBrokerCommissionP",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint24",
//                 "name": "id",
//                 "type": "uint24"
//             },
//             {
//                 "internalType": "string",
//                 "name": "name",
//                 "type": "string"
//             }
//         ],
//         "name": "updateBrokerName",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint24",
//                 "name": "id",
//                 "type": "uint24"
//             },
//             {
//                 "internalType": "address",
//                 "name": "receiver",
//                 "type": "address"
//             }
//         ],
//         "name": "updateBrokerReceiver",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint24",
//                 "name": "id",
//                 "type": "uint24"
//             },
//             {
//                 "internalType": "string",
//                 "name": "url",
//                 "type": "string"
//             }
//         ],
//         "name": "updateBrokerUrl",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint24",
//                 "name": "id",
//                 "type": "uint24"
//             }
//         ],
//         "name": "withdrawCommission",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "orderHash",
//                 "type": "bytes32"
//             }
//         ],
//         "name": "CancelLimitOrder",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "orderHash",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "enum ITradingChecker.Refund",
//                 "name": "refund",
//                 "type": "uint8"
//             }
//         ],
//         "name": "ExecuteLimitOrderRejected",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "orderHash",
//                 "type": "bytes32"
//             }
//         ],
//         "name": "ExecuteLimitOrderSuccessful",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "orderHash",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "enum ITradingChecker.Refund",
//                 "name": "refund",
//                 "type": "uint8"
//             }
//         ],
//         "name": "LimitOrderRefund",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "orderHash",
//                 "type": "bytes32"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "price",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     }
//                 ],
//                 "indexed": false,
//                 "internalType": "struct IBook.OpenDataInput",
//                 "name": "data",
//                 "type": "tuple"
//             }
//         ],
//         "name": "OpenLimitOrder",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "orderHash",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "oldSl",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "sl",
//                 "type": "uint256"
//             }
//         ],
//         "name": "UpdateOrderSl",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "orderHash",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "oldTp",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "tp",
//                 "type": "uint256"
//             }
//         ],
//         "name": "UpdateOrderTp",
//         "type": "event"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "orderHash",
//                 "type": "bytes32"
//             }
//         ],
//         "name": "cancelLimitOrder",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "bytes32",
//                         "name": "hash",
//                         "type": "bytes32"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "price",
//                         "type": "uint64"
//                     }
//                 ],
//                 "internalType": "struct IBook.KeeperExecution[]",
//                 "name": "executeOrders",
//                 "type": "tuple[]"
//             }
//         ],
//         "name": "executeLimitOrder",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "orderHash",
//                 "type": "bytes32"
//             }
//         ],
//         "name": "getLimitOrderByHash",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "bytes32",
//                         "name": "orderHash",
//                         "type": "bytes32"
//                     },
//                     {
//                         "internalType": "string",
//                         "name": "pair",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "limitPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "timestamp",
//                         "type": "uint40"
//                     }
//                 ],
//                 "internalType": "struct ILimitOrder.LimitOrderView",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             }
//         ],
//         "name": "getLimitOrders",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "bytes32",
//                         "name": "orderHash",
//                         "type": "bytes32"
//                     },
//                     {
//                         "internalType": "string",
//                         "name": "pair",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "limitPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "timestamp",
//                         "type": "uint40"
//                     }
//                 ],
//                 "internalType": "struct ILimitOrder.LimitOrderView[]",
//                 "name": "",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "price",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     }
//                 ],
//                 "internalType": "struct IBook.OpenDataInput",
//                 "name": "data",
//                 "type": "tuple"
//             }
//         ],
//         "name": "openLimitOrder",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "orderHash",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "uint64",
//                 "name": "stopLoss",
//                 "type": "uint64"
//             }
//         ],
//         "name": "updateOrderSl",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "orderHash",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "uint64",
//                 "name": "takeProfit",
//                 "type": "uint64"
//             }
//         ],
//         "name": "updateOrderTp",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "orderHash",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "uint64",
//                 "name": "takeProfit",
//                 "type": "uint64"
//             },
//             {
//                 "internalType": "uint64",
//                 "name": "stopLoss",
//                 "type": "uint64"
//             }
//         ],
//         "name": "updateOrderTpAndSl",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "user",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint32",
//                         "name": "userOpenOrderIndex",
//                         "type": "uint32"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "limitPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "timestamp",
//                         "type": "uint40"
//                     }
//                 ],
//                 "internalType": "struct ILimitOrder.LimitOrder",
//                 "name": "order",
//                 "type": "tuple"
//             }
//         ],
//         "name": "checkLimitOrderTp",
//         "outputs": [],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "user",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint32",
//                         "name": "userOpenTradeIndex",
//                         "type": "uint32"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "entryPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "margin",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "openFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "int256",
//                         "name": "longAccFundingFeePerShare",
//                         "type": "int256"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "executionFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "timestamp",
//                         "type": "uint40"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "holdingFeeRate",
//                         "type": "uint40"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "openBlock",
//                         "type": "uint256"
//                     }
//                 ],
//                 "internalType": "struct ITrading.OpenTrade",
//                 "name": "ot",
//                 "type": "tuple"
//             }
//         ],
//         "name": "checkMarketTradeTp",
//         "outputs": [],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "price",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "isLong",
//                 "type": "bool"
//             }
//         ],
//         "name": "checkProtectionPrice",
//         "outputs": [
//             {
//                 "internalType": "bool",
//                 "name": "",
//                 "type": "bool"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bool",
//                 "name": "isLong",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "stopLoss",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "entryPrice",
//                 "type": "uint256"
//             }
//         ],
//         "name": "checkSl",
//         "outputs": [
//             {
//                 "internalType": "bool",
//                 "name": "",
//                 "type": "bool"
//             }
//         ],
//         "stateMutability": "pure",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "isLong",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "takeProfit",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "entryPrice",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "leverage_10000",
//                 "type": "uint256"
//             }
//         ],
//         "name": "checkTp",
//         "outputs": [
//             {
//                 "internalType": "bool",
//                 "name": "",
//                 "type": "bool"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "user",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint32",
//                         "name": "userOpenOrderIndex",
//                         "type": "uint32"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "limitPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "timestamp",
//                         "type": "uint40"
//                     }
//                 ],
//                 "internalType": "struct ILimitOrder.LimitOrder",
//                 "name": "order",
//                 "type": "tuple"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "marketPrice",
//                 "type": "uint256"
//             }
//         ],
//         "name": "executeLimitOrderCheck",
//         "outputs": [
//             {
//                 "internalType": "bool",
//                 "name": "result",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "uint96",
//                 "name": "openFee",
//                 "type": "uint96"
//             },
//             {
//                 "internalType": "uint96",
//                 "name": "executionFee",
//                 "type": "uint96"
//             },
//             {
//                 "internalType": "enum ITradingChecker.Refund",
//                 "name": "refund",
//                 "type": "uint8"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "user",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint32",
//                         "name": "userOpenTradeIndex",
//                         "type": "uint32"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "entryPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "margin",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "openFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "int256",
//                         "name": "longAccFundingFeePerShare",
//                         "type": "int256"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "executionFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "timestamp",
//                         "type": "uint40"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "holdingFeeRate",
//                         "type": "uint40"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "openBlock",
//                         "type": "uint256"
//                     }
//                 ],
//                 "internalType": "struct ITrading.OpenTrade",
//                 "name": "ot",
//                 "type": "tuple"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "marketPrice",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "closePrice",
//                 "type": "uint256"
//             }
//         ],
//         "name": "executeLiquidateCheck",
//         "outputs": [
//             {
//                 "internalType": "bool",
//                 "name": "needLiq",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "int256",
//                 "name": "pnl",
//                 "type": "int256"
//             },
//             {
//                 "internalType": "int256",
//                 "name": "fundingFee",
//                 "type": "int256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "closeFee",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "holdingFee",
//                 "type": "uint256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "user",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "price",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint128",
//                         "name": "blockNumber",
//                         "type": "uint128"
//                     }
//                 ],
//                 "internalType": "struct ITrading.PendingTrade",
//                 "name": "pt",
//                 "type": "tuple"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "marketPrice",
//                 "type": "uint256"
//             }
//         ],
//         "name": "marketTradeCallbackCheck",
//         "outputs": [
//             {
//                 "internalType": "bool",
//                 "name": "result",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "uint96",
//                 "name": "openFee",
//                 "type": "uint96"
//             },
//             {
//                 "internalType": "uint96",
//                 "name": "executionFee",
//                 "type": "uint96"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "entryPrice",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "enum ITradingChecker.Refund",
//                 "name": "refund",
//                 "type": "uint8"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "price",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     }
//                 ],
//                 "internalType": "struct IBook.OpenDataInput",
//                 "name": "data",
//                 "type": "tuple"
//             }
//         ],
//         "name": "openLimitOrderCheck",
//         "outputs": [],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "price",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     }
//                 ],
//                 "internalType": "struct IBook.OpenDataInput",
//                 "name": "data",
//                 "type": "tuple"
//             }
//         ],
//         "name": "openMarketTradeCheck",
//         "outputs": [],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "oldExecutionFeeUsd",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "executionFeeUsd",
//                 "type": "uint256"
//             }
//         ],
//         "name": "SetExecutionFeeUsd",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": false,
//                 "internalType": "uint24",
//                 "name": "oldMaxTakeProfitP",
//                 "type": "uint24"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint24",
//                 "name": "maxTakeProfitP",
//                 "type": "uint24"
//             }
//         ],
//         "name": "SetMaxTakeProfitP",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "uint16",
//                         "name": "leverage",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "maxTakeProfitP",
//                         "type": "uint24"
//                     }
//                 ],
//                 "indexed": false,
//                 "internalType": "struct ITradingConfig.MaxTpRatioForLeverage[]",
//                 "name": "maxTpRatios",
//                 "type": "tuple[]"
//             }
//         ],
//         "name": "SetMaxTpRatioForLeverage",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "oldMinNotionalUsd",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "minNotionalUsd",
//                 "type": "uint256"
//             }
//         ],
//         "name": "SetMinNotionalUsd",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "uint16",
//                 "name": "oldTradeSwitches",
//                 "type": "uint16"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "uint16",
//                 "name": "tradeSwitches",
//                 "type": "uint16"
//             }
//         ],
//         "name": "SetTradeSwitches",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint64",
//                 "name": "upperPrice",
//                 "type": "uint64"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint64",
//                 "name": "lowerPrice",
//                 "type": "uint64"
//             }
//         ],
//         "name": "UpdateProtectionPrice",
//         "type": "event"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "leverage_10000",
//                 "type": "uint256"
//             }
//         ],
//         "name": "getPairMaxTpRatio",
//         "outputs": [
//             {
//                 "internalType": "uint24",
//                 "name": "",
//                 "type": "uint24"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             }
//         ],
//         "name": "getPairMaxTpRatios",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "uint16",
//                         "name": "leverage",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "maxTakeProfitP",
//                         "type": "uint24"
//                     }
//                 ],
//                 "internalType": "struct ITradingConfig.MaxTpRatioForLeverage[]",
//                 "name": "",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             }
//         ],
//         "name": "getProtectionPrice",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "uint40",
//                         "name": "updatedAt",
//                         "type": "uint40"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "upperPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "lowerPrice",
//                         "type": "uint64"
//                     }
//                 ],
//                 "internalType": "struct ITradingConfig.PriceProtection",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "getTradingConfig",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "uint256",
//                         "name": "executionFeeUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "minNotionalUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "maxTakeProfitP",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "limitOrder",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "executeLimitOrder",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "marketTrading",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "userCloseTrading",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "tpSlCloseTrading",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "liquidateTrading",
//                         "type": "bool"
//                     }
//                 ],
//                 "internalType": "struct ITradingConfig.TradingConfig",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "executionFeeUsd",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "minNotionalUsd",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint24",
//                 "name": "maxTakeProfitP",
//                 "type": "uint24"
//             }
//         ],
//         "name": "initTradingConfigFacet",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "executionFeeUsd",
//                 "type": "uint256"
//             }
//         ],
//         "name": "setExecutionFeeUsd",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint24",
//                 "name": "maxTakeProfitP",
//                 "type": "uint24"
//             }
//         ],
//         "name": "setMaxTakeProfitP",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "uint16",
//                         "name": "leverage",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "maxTakeProfitP",
//                         "type": "uint24"
//                     }
//                 ],
//                 "internalType": "struct ITradingConfig.MaxTpRatioForLeverage[]",
//                 "name": "maxTpRatios",
//                 "type": "tuple[]"
//             }
//         ],
//         "name": "setMaxTpRatioForLeverage",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "minNotionalUsd",
//                 "type": "uint256"
//             }
//         ],
//         "name": "setMinNotionalUsd",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bool",
//                 "name": "limitOrder",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "executeLimitOrder",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "marketTrade",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "userCloseTrade",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "tpSlCloseTrade",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "liquidateTradeSwitch",
//                 "type": "bool"
//             }
//         ],
//         "name": "setTradingSwitches",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "upperPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "lowerPrice",
//                         "type": "uint64"
//                     }
//                 ],
//                 "internalType": "struct ITradingConfig.PriceConfig[]",
//                 "name": "priceConfigs",
//                 "type": "tuple[]"
//             }
//         ],
//         "name": "updateProtectionPrice",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "lastBlock",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "int256",
//                 "name": "longAccFundingFeePerShare",
//                 "type": "int256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "marketPrice",
//                 "type": "uint256"
//             }
//         ],
//         "name": "UpdatePairAccFundingFeePerShare",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "lastBlock",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "longQty",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "shortQty",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "int256",
//                 "name": "longAccFundingFeePerShare",
//                 "type": "int256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint64",
//                 "name": "lpLongAvgPrice",
//                 "type": "uint64"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint64",
//                 "name": "lpShortAvgPrice",
//                 "type": "uint64"
//             }
//         ],
//         "name": "UpdatePairPositionInfo",
//         "type": "event"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             }
//         ],
//         "name": "getPairQty",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "uint256",
//                         "name": "longQty",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "shortQty",
//                         "type": "uint256"
//                     }
//                 ],
//                 "internalType": "struct ITradingCore.PairQty",
//                 "name": "",
//                 "type": "tuple"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             }
//         ],
//         "name": "lastLongAccFundingFeePerShare",
//         "outputs": [
//             {
//                 "internalType": "int256",
//                 "name": "longAccFundingFeePerShare",
//                 "type": "int256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "lpNotionalUsd",
//         "outputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "notionalUsd",
//                 "type": "uint256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "targetToken",
//                 "type": "address"
//             }
//         ],
//         "name": "lpUnrealizedPnlUsd",
//         "outputs": [
//             {
//                 "internalType": "int256",
//                 "name": "totalUsd",
//                 "type": "int256"
//             },
//             {
//                 "internalType": "int256",
//                 "name": "tokenUsd",
//                 "type": "int256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [],
//         "name": "lpUnrealizedPnlUsd",
//         "outputs": [
//             {
//                 "internalType": "int256",
//                 "name": "totalUsd",
//                 "type": "int256"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "token",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "int256",
//                         "name": "unPnlUsd",
//                         "type": "int256"
//                     }
//                 ],
//                 "internalType": "struct ITradingCore.LpMarginTokenUnPnl[]",
//                 "name": "tokenUnPnlUsd",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "marketPrice",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "qty",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "isLong",
//                 "type": "bool"
//             }
//         ],
//         "name": "slippagePrice",
//         "outputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "",
//                 "type": "uint256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "uint256",
//                         "name": "longQty",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "shortQty",
//                         "type": "uint256"
//                     }
//                 ],
//                 "internalType": "struct ITradingCore.PairQty",
//                 "name": "pairQty",
//                 "type": "tuple"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "uint256",
//                         "name": "onePercentDepthAboveUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "onePercentDepthBelowUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "slippageLongP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "slippageShortP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "enum ISlippageManager.SlippageType",
//                         "name": "slippageType",
//                         "type": "uint8"
//                     }
//                 ],
//                 "internalType": "struct ISlippageManager.SlippageConfig",
//                 "name": "sc",
//                 "type": "tuple"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "marketPrice",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "qty",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "isLong",
//                 "type": "bool"
//             }
//         ],
//         "name": "slippagePrice",
//         "outputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "",
//                 "type": "uint256"
//             }
//         ],
//         "stateMutability": "pure",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "limitPrice",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "qty",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "isLong",
//                 "type": "bool"
//             }
//         ],
//         "name": "triggerPrice",
//         "outputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "",
//                 "type": "uint256"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "uint256",
//                         "name": "longQty",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "shortQty",
//                         "type": "uint256"
//                     }
//                 ],
//                 "internalType": "struct ITradingCore.PairQty",
//                 "name": "pairQty",
//                 "type": "tuple"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "uint256",
//                         "name": "onePercentDepthAboveUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "onePercentDepthBelowUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "slippageLongP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "slippageShortP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "enum ISlippageManager.SlippageType",
//                         "name": "slippageType",
//                         "type": "uint8"
//                     }
//                 ],
//                 "internalType": "struct ISlippageManager.SlippageConfig",
//                 "name": "sc",
//                 "type": "tuple"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "limitPrice",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "qty",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "isLong",
//                 "type": "bool"
//             }
//         ],
//         "name": "triggerPrice",
//         "outputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "",
//                 "type": "uint256"
//             }
//         ],
//         "stateMutability": "pure",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             }
//         ],
//         "name": "updatePairPositionInfo",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "pairBase",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "userPrice",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "marketPrice",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "qty",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "isLong",
//                 "type": "bool"
//             },
//             {
//                 "internalType": "bool",
//                 "name": "isOpen",
//                 "type": "bool"
//             }
//         ],
//         "name": "updatePairPositionInfo",
//         "outputs": [
//             {
//                 "internalType": "int256",
//                 "name": "longAccFundingFeePerShare",
//                 "type": "int256"
//             }
//         ],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "amount",
//                 "type": "uint256"
//             }
//         ],
//         "name": "FundingFeeAddLiquidity",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "price",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     }
//                 ],
//                 "indexed": false,
//                 "internalType": "struct IBook.OpenDataInput",
//                 "name": "trade",
//                 "type": "tuple"
//             }
//         ],
//         "name": "MarketPendingTrade",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "beforeMargin",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "margin",
//                 "type": "uint256"
//             }
//         ],
//         "name": "UpdateMargin",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "oldSl",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "sl",
//                 "type": "uint256"
//             }
//         ],
//         "name": "UpdateTradeSl",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "oldTp",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "tp",
//                 "type": "uint256"
//             }
//         ],
//         "name": "UpdateTradeTp",
//         "type": "event"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "uint96",
//                 "name": "amount",
//                 "type": "uint96"
//             }
//         ],
//         "name": "addMargin",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             }
//         ],
//         "name": "closeTrade",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "price",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     }
//                 ],
//                 "internalType": "struct IBook.OpenDataInput",
//                 "name": "data",
//                 "type": "tuple"
//             }
//         ],
//         "name": "openMarketTrade",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint256",
//                 "name": "lpReceiveFundingFeeUsd",
//                 "type": "uint256"
//             }
//         ],
//         "name": "settleLpFundingFee",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "uint64",
//                 "name": "stopLoss",
//                 "type": "uint64"
//             }
//         ],
//         "name": "updateTradeSl",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "uint64",
//                 "name": "takeProfit",
//                 "type": "uint64"
//             }
//         ],
//         "name": "updateTradeTp",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "uint64",
//                 "name": "takeProfit",
//                 "type": "uint64"
//             },
//             {
//                 "internalType": "uint64",
//                 "name": "stopLoss",
//                 "type": "uint64"
//             }
//         ],
//         "name": "updateTradeTpAndSl",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "orderHash",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "enum IOrderAndTradeHistory.ActionType",
//                 "name": "aType",
//                 "type": "uint8"
//             }
//         ],
//         "name": "cancelLimitOrder",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "uint64",
//                         "name": "closePrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "int96",
//                         "name": "fundingFee",
//                         "type": "int96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "closeFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "int96",
//                         "name": "pnl",
//                         "type": "int96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "holdingFee",
//                         "type": "uint96"
//                     }
//                 ],
//                 "internalType": "struct IOrderAndTradeHistory.CloseInfo",
//                 "name": "data",
//                 "type": "tuple"
//             },
//             {
//                 "internalType": "enum IOrderAndTradeHistory.ActionType",
//                 "name": "aType",
//                 "type": "uint8"
//             }
//         ],
//         "name": "closeTrade",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "orderHash",
//                 "type": "bytes32"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "user",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "entryPrice",
//                         "type": "uint64"
//                     }
//                 ],
//                 "internalType": "struct IOrderAndTradeHistory.OrderInfo",
//                 "name": "order",
//                 "type": "tuple"
//             }
//         ],
//         "name": "createLimitOrder",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "start",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint8",
//                 "name": "size",
//                 "type": "uint8"
//             }
//         ],
//         "name": "getOrderAndTradeHistoryV2",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "bytes32",
//                         "name": "hash",
//                         "type": "bytes32"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "timestamp",
//                         "type": "uint40"
//                     },
//                     {
//                         "internalType": "string",
//                         "name": "pair",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "enum IOrderAndTradeHistory.ActionType",
//                         "name": "actionType",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "entryPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "margin",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "openFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "executionFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "closePrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "int96",
//                         "name": "fundingFee",
//                         "type": "int96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "closeFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "int96",
//                         "name": "pnl",
//                         "type": "int96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "holdingFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "openTimestamp",
//                         "type": "uint40"
//                     }
//                 ],
//                 "internalType": "struct IOrderAndTradeHistory.OrderAndTradeHistory[]",
//                 "name": "datas",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "uint96",
//                         "name": "margin",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "openFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "executionFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "openTimestamp",
//                         "type": "uint40"
//                     }
//                 ],
//                 "internalType": "struct IOrderAndTradeHistory.TradeInfo",
//                 "name": "trade",
//                 "type": "tuple"
//             }
//         ],
//         "name": "limitTrade",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "user",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "amountIn",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "entryPrice",
//                         "type": "uint64"
//                     }
//                 ],
//                 "internalType": "struct IOrderAndTradeHistory.OrderInfo",
//                 "name": "order",
//                 "type": "tuple"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "uint96",
//                         "name": "margin",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "openFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "executionFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "openTimestamp",
//                         "type": "uint40"
//                     }
//                 ],
//                 "internalType": "struct IOrderAndTradeHistory.TradeInfo",
//                 "name": "trade",
//                 "type": "tuple"
//             }
//         ],
//         "name": "marketTrade",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "uint96",
//                 "name": "newMargin",
//                 "type": "uint96"
//             }
//         ],
//         "name": "updateMargin",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "address",
//                         "name": "user",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint32",
//                         "name": "userOpenTradeIndex",
//                         "type": "uint32"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "entryPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "margin",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "openFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "int256",
//                         "name": "longAccFundingFeePerShare",
//                         "type": "int256"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "executionFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "timestamp",
//                         "type": "uint40"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     },
//                     {
//                         "internalType": "uint40",
//                         "name": "holdingFeeRate",
//                         "type": "uint40"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "openBlock",
//                         "type": "uint256"
//                     }
//                 ],
//                 "indexed": false,
//                 "internalType": "struct ITrading.OpenTrade",
//                 "name": "ot",
//                 "type": "tuple"
//             }
//         ],
//         "name": "OpenMarketTrade",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "enum ITradingChecker.Refund",
//                 "name": "refund",
//                 "type": "uint8"
//             }
//         ],
//         "name": "PendingTradeRefund",
//         "type": "event"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "bytes32",
//                         "name": "orderHash",
//                         "type": "bytes32"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "user",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "entryPrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "pairBase",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "tokenIn",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "margin",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "stopLoss",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "takeProfit",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "uint24",
//                         "name": "broker",
//                         "type": "uint24"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "isLong",
//                         "type": "bool"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "openFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "executionFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "uint80",
//                         "name": "qty",
//                         "type": "uint80"
//                     }
//                 ],
//                 "internalType": "struct ITradingOpen.LimitOrder",
//                 "name": "order",
//                 "type": "tuple"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "marketPrice",
//                 "type": "uint256"
//             }
//         ],
//         "name": "limitOrderDeal",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "upperPrice",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "lowerPrice",
//                 "type": "uint256"
//             }
//         ],
//         "name": "marketTradeCallback",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "closePrice",
//                 "type": "uint256"
//             }
//         ],
//         "name": "CloseRejectedByProtectionPrice",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "amount",
//                 "type": "uint256"
//             }
//         ],
//         "name": "CloseTradeAddLiquidity",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "token",
//                 "type": "address"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "amount",
//                 "type": "uint256"
//             }
//         ],
//         "name": "CloseTradeReceived",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "uint64",
//                         "name": "closePrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "int96",
//                         "name": "fundingFee",
//                         "type": "int96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "closeFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "int96",
//                         "name": "pnl",
//                         "type": "int96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "holdingFee",
//                         "type": "uint96"
//                     }
//                 ],
//                 "indexed": false,
//                 "internalType": "struct IOrderAndTradeHistory.CloseInfo",
//                 "name": "closeInfo",
//                 "type": "tuple"
//             }
//         ],
//         "name": "CloseTradeSuccessful",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "enum ITradingClose.ExecutionType",
//                 "name": "executionType",
//                 "type": "uint8"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint64",
//                 "name": "execPrice",
//                 "type": "uint64"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint64",
//                 "name": "marketPrice",
//                 "type": "uint64"
//             }
//         ],
//         "name": "ExecuteCloseRejected",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "address",
//                 "name": "user",
//                 "type": "address"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "enum ITradingClose.ExecutionType",
//                 "name": "executionType",
//                 "type": "uint8"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "uint64",
//                         "name": "closePrice",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "int96",
//                         "name": "fundingFee",
//                         "type": "int96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "closeFee",
//                         "type": "uint96"
//                     },
//                     {
//                         "internalType": "int96",
//                         "name": "pnl",
//                         "type": "int96"
//                     },
//                     {
//                         "internalType": "uint96",
//                         "name": "holdingFee",
//                         "type": "uint96"
//                     }
//                 ],
//                 "indexed": false,
//                 "internalType": "struct IOrderAndTradeHistory.CloseInfo",
//                 "name": "closeInfo",
//                 "type": "tuple"
//             }
//         ],
//         "name": "ExecuteCloseSuccessful",
//         "type": "event"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "bytes32",
//                 "name": "tradeHash",
//                 "type": "bytes32"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "upperPrice",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "lowerPrice",
//                 "type": "uint256"
//             }
//         ],
//         "name": "closeTradeCallback",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "bytes32",
//                         "name": "tradeHash",
//                         "type": "bytes32"
//                     },
//                     {
//                         "internalType": "uint64",
//                         "name": "price",
//                         "type": "uint64"
//                     },
//                     {
//                         "internalType": "enum ITradingClose.ExecutionType",
//                         "name": "executionType",
//                         "type": "uint8"
//                     }
//                 ],
//                 "internalType": "struct ITradingClose.TpSlOrLiq[]",
//                 "name": "arr",
//                 "type": "tuple[]"
//             }
//         ],
//         "name": "executeTpSlOrLiq",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "uint16",
//                 "name": "index",
//                 "type": "uint16"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "enum ISlippageManager.SlippageType",
//                 "name": "slippageType",
//                 "type": "uint8"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "onePercentDepthAboveUsd",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "onePercentDepthBelowUsd",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint16",
//                 "name": "slippageLongP",
//                 "type": "uint16"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint16",
//                 "name": "slippageShortP",
//                 "type": "uint16"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "string",
//                 "name": "name",
//                 "type": "string"
//             }
//         ],
//         "name": "AddSlippageConfig",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "uint16",
//                 "name": "index",
//                 "type": "uint16"
//             }
//         ],
//         "name": "RemoveSlippageConfig",
//         "type": "event"
//     },
//     {
//         "anonymous": false,
//         "inputs": [
//             {
//                 "indexed": true,
//                 "internalType": "uint16",
//                 "name": "index",
//                 "type": "uint16"
//             },
//             {
//                 "indexed": true,
//                 "internalType": "enum ISlippageManager.SlippageType",
//                 "name": "slippageType",
//                 "type": "uint8"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "onePercentDepthAboveUsd",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint256",
//                 "name": "onePercentDepthBelowUsd",
//                 "type": "uint256"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint16",
//                 "name": "slippageLongP",
//                 "type": "uint16"
//             },
//             {
//                 "indexed": false,
//                 "internalType": "uint16",
//                 "name": "slippageShortP",
//                 "type": "uint16"
//             }
//         ],
//         "name": "UpdateSlippageConfig",
//         "type": "event"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "string",
//                 "name": "name",
//                 "type": "string"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "index",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "enum ISlippageManager.SlippageType",
//                 "name": "slippageType",
//                 "type": "uint8"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "onePercentDepthAboveUsd",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "onePercentDepthBelowUsd",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "slippageLongP",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "slippageShortP",
//                 "type": "uint16"
//             }
//         ],
//         "name": "addSlippageConfig",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint16",
//                 "name": "index",
//                 "type": "uint16"
//             }
//         ],
//         "name": "getSlippageConfigByIndex",
//         "outputs": [
//             {
//                 "components": [
//                     {
//                         "internalType": "string",
//                         "name": "name",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "onePercentDepthAboveUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint256",
//                         "name": "onePercentDepthBelowUsd",
//                         "type": "uint256"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "slippageLongP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "slippageShortP",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "uint16",
//                         "name": "index",
//                         "type": "uint16"
//                     },
//                     {
//                         "internalType": "enum ISlippageManager.SlippageType",
//                         "name": "slippageType",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "bool",
//                         "name": "enable",
//                         "type": "bool"
//                     }
//                 ],
//                 "internalType": "struct LibPairsManager.SlippageConfig",
//                 "name": "",
//                 "type": "tuple"
//             },
//             {
//                 "components": [
//                     {
//                         "internalType": "string",
//                         "name": "name",
//                         "type": "string"
//                     },
//                     {
//                         "internalType": "address",
//                         "name": "base",
//                         "type": "address"
//                     },
//                     {
//                         "internalType": "enum IPairsManager.PairType",
//                         "name": "pairType",
//                         "type": "uint8"
//                     },
//                     {
//                         "internalType": "enum IPairsManager.PairStatus",
//                         "name": "status",
//                         "type": "uint8"
//                     }
//                 ],
//                 "internalType": "struct IPairsManager.PairSimple[]",
//                 "name": "",
//                 "type": "tuple[]"
//             }
//         ],
//         "stateMutability": "view",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint16",
//                 "name": "index",
//                 "type": "uint16"
//             }
//         ],
//         "name": "removeSlippageConfig",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     },
//     {
//         "inputs": [
//             {
//                 "internalType": "uint16",
//                 "name": "index",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "enum ISlippageManager.SlippageType",
//                 "name": "slippageType",
//                 "type": "uint8"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "onePercentDepthAboveUsd",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint256",
//                 "name": "onePercentDepthBelowUsd",
//                 "type": "uint256"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "slippageLongP",
//                 "type": "uint16"
//             },
//             {
//                 "internalType": "uint16",
//                 "name": "slippageShortP",
//                 "type": "uint16"
//             }
//         ],
//         "name": "updateSlippageConfig",
//         "outputs": [],
//         "stateMutability": "nonpayable",
//         "type": "function"
//     }
// ]
