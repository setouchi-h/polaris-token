// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";

contract Polaris is ERC721 {
    uint256 private s_nextTokenId;

    constructor() ERC721("Polaris", "POLARIS") {}

    function safeMint(address to) public {
        uint256 tokenId = s_nextTokenId++;
        _safeMint(to, tokenId);
    }

    function _baseURI() internal pure override returns (string memory) {
        return "data:application/json;base64,";
    }

    function tokenURI(uint256) public view override returns (string memory) {
        return string(
            abi.encodePacked(
                _baseURI(),
                Base64.encode(
                    bytes(
                        abi.encodePacked(
                            '{"name": "',
                            name(),
                            '", "description": "A Polaris NFT!.", "attributes": [{"trait_type": "polaris", "value": 100}], "image": "ipfs://QmVnxgB2HGe4EV4QWagMJK3J8ReavfHxfjDSy5v7gNuGGN"}'
                        )
                    )
                )
            )
        );
    }
}
