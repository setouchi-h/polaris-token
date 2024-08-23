// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PolarisToken is ERC20 {
    constructor() ERC20("Polaris Token", "POLARIS") {}

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}
