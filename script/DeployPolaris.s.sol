// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {Polaris} from "../src/Polaris.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployPolaris is Script {
    function run() external returns (Polaris) {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();

        vm.startBroadcast(deployer);
        Polaris polaris = new Polaris();
        vm.stopBroadcast();
        return polaris;
    }
}
