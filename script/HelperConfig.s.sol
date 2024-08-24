// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";

contract HelperConfig is Script {
    struct NetworkConfig {
        address deployer;
    }

    NetworkConfig public activeNetworkConfig;
    address public DEPLOYER_ADDRESS = 0x5Cdc9010D01d6744Dd9213A0e28aa780210eC544;

    constructor() {
        if (block.chainid == 84532) {
            activeNetworkConfig = getBaseSepoliaEthConfig();
        } else if (block.chainid == 59141) {
            activeNetworkConfig = getLineaSepoliaEthConfig();
        } else {
            revert("Unsupported network");
        }
    }

    function getBaseSepoliaEthConfig() public view returns (NetworkConfig memory) {
        return NetworkConfig({deployer: DEPLOYER_ADDRESS});
    }

    function getLineaSepoliaEthConfig() public view returns (NetworkConfig memory) {
        return NetworkConfig({deployer: DEPLOYER_ADDRESS});
    }
}
