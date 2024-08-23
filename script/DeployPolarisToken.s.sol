// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {PolarisToken} from "../src/PolarisToken.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployPolarisToken is Script {
    function run() external returns (PolarisToken) {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();

        vm.startBroadcast(deployer);
        PolarisToken polarisToken = new PolarisToken();
        vm.stopBroadcast();

        return polarisToken;
    }
}
