// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "foundry-devops/src/DevOpsTools.sol";
import {HelperConfig} from "./HelperConfig.s.sol";
import {PolarisToken} from "../src/PolarisToken.sol";

contract MintPolarisToken is Script {
    function mint(address polarisTokenAddress, address deployer, address recipient, uint256 amount) public {
        vm.startBroadcast(deployer);
        PolarisToken polarisToken = PolarisToken(polarisTokenAddress);
        polarisToken.mint(recipient, amount);
        vm.stopBroadcast();
    }

    function mintUsingConfig(address polarisTokenAddress, address recipient) public {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();
        mint(polarisTokenAddress, deployer, recipient, 100 ether);
    }

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("PolarisToken", block.chainid);
        // ここでrecipientを指定
        address recipient = 0x5162Fa0091405C957C83ceBa659EbE256dBC111b;
        mintUsingConfig(mostRecentlyDeployed, recipient);
    }
}
