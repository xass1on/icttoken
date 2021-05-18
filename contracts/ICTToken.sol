// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC777/ERC777.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

contract ICTToken is ERC777, Ownable {
    using Math for uint256;

    uint256 constant _totalSupply = 1428600000;

    uint256 constant _tokenToOffer = 124793954;
    uint256 constant _tokenReserve1 = 90330230;
    uint256 constant _tokenReserve2 = 90330230;
    uint256 constant _tokenToDistribute1 = 280786396;
    uint256 constant _tokenToDistribute2 = 280786396;
    uint256 constant _tokenToDistribute3 = 280786397;
    uint256 constant _tokenToDistribute4 = 280786397;

    string constant _tokenName = "ICTToken";
    string constant _tokenSymbol = "ICTT";

    address constant _tokenOfferAddress =
        0xCfc3dfD6e040A1C783eE4910916332Eb926D908A;
    address constant _tokenReserveAddress1 =
        0xCfc3dfD6e040A1C783eE4910916332Eb926D908A;
    address constant _tokenReserveAddress2 =
        0xCfc3dfD6e040A1C783eE4910916332Eb926D908A;
    address constant _tokenDistributeAddres1 =
        0xCfc3dfD6e040A1C783eE4910916332Eb926D908A;
    address constant _tokenDistributeAddres2 =
        0xCfc3dfD6e040A1C783eE4910916332Eb926D908A;
    address constant _tokenDistributeAddres3 =
        0xCfc3dfD6e040A1C783eE4910916332Eb926D908A;
    address constant _tokenDistributeAddres4 =
        0xCfc3dfD6e040A1C783eE4910916332Eb926D908A;

    constructor() ERC777(_tokenName, _tokenSymbol, new address[](0)) {
        _mint(_tokenOfferAddress, _tokenToOffer * 10**18, "", "");
        _mint(_tokenReserveAddress1, _tokenReserve1 * 10**18, "", "");
        _mint(_tokenReserveAddress2, _tokenReserve2 * 10**18, "", "");
        _mint(_tokenDistributeAddres1, _tokenToDistribute1 * 10**18, "", "");
        _mint(_tokenDistributeAddres2, _tokenToDistribute2 * 10**18, "", "");
        _mint(_tokenDistributeAddres3, _tokenToDistribute3 * 10**18, "", "");
        _mint(_tokenDistributeAddres4, _tokenToDistribute4 * 10**18, "", "");
        transferOwnership(msg.sender);
    }

    fallback() external payable {
        revert();
    }

    receive() external payable {
        revert();
    }

    function mint(address to, uint256 amount) public onlyOwner {
        to;
        amount;
        revert();
    }

    function burn(uint256 amount, bytes memory data) public override onlyOwner {
        revert();
    }

    function operatorBurn(
        address account,
        uint256 amount,
        bytes memory data,
        bytes memory operatorData
    ) public pure override {
        account;
        amount;
        data;
        operatorData;
        revert();
    }
}
