// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC777/ERC777.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

contract ICTToken is ERC777, Ownable {
    using Math for uint256;

    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) ERC777(name, symbol, new address[](0)) {
        _mint(msg.sender, initialSupply * 10**18, "", "");
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
