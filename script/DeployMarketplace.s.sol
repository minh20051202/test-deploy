// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;
import {Marketplace} from "../src/Marketplace.sol";
import {Script} from "forge-std/Script.sol";

contract DeployMarketplace is Script {
    function run() external returns (Marketplace) {
        address nftAddress = vm.envAddress("MYNFT_CONTRACT_ADDRESS");
        uint256 feeDecimal = vm.envUint("FEE_DECIMAL");
        uint256 feeRate = vm.envUint("FEE_RATE");
        address feeRecipient = vm.envAddress("FEE_RECIPIENT");

        vm.startBroadcast();
        Marketplace myNFT = new Marketplace(
            nftAddress,
            feeDecimal,
            feeRate,
            feeRecipient
        );
        vm.stopBroadcast();
        return myNFT;
    }
}
