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
    string constant _tokenSymbol = "ICTG";

    address constant _tokenOfferAddress =
        0x19Dba30a1979813c7dFC099f85d180f2145C4318;
    address constant _tokenReserveAddress1 =
        0x70d52a41400b01427903b6a18AeD15b7Eb9AdA67;
    address constant _tokenReserveAddress2 =
        0x573C73Eaff7D111F964D91DDACFC2b69c85180d6;
    address constant _tokenDistributeAddres1 =
        0xcE0a2C3f51C9F3a68B67307f57C9b86dfe100E75;
    address constant _tokenDistributeAddres2 =
        0xc2cc60DD7eea6382Fdf74F3812bd73716b24225A;
    address constant _tokenDistributeAddres3 =
        0x0cf0b3c83AC0A78ceFD04d179D19B9537EbD5e00;
    address constant _tokenDistributeAddres4 =
        0x3f11Ca630d0d80BDC1b41F414958FFAa4D95Bc33;

    constructor() ERC777(_tokenName, _tokenSymbol, new address[](0)) {
        _mint(_tokenOfferAddress, _tokenToOffer * 10**18, "", "");
        _mint(_tokenReserveAddress1, _tokenReserve1 * 10**18, "", "");
        _mint(_tokenReserveAddress2, _tokenReserve2 * 10**18, "", "");
        _mint(_tokenDistributeAddres1, _tokenToDistribute1 * 10**18, "", "");
        _mint(_tokenDistributeAddres2, _tokenToDistribute2 * 10**18, "", "");
        _mint(_tokenDistributeAddres3, _tokenToDistribute3 * 10**18, "", "");
        _mint(_tokenDistributeAddres4, _tokenToDistribute4 * 10**18, "", "");
    }

    fallback() external payable {
        revert();
    }

    receive() external payable {
        revert();
    }

    function burn() public pure {
        revert();
    }

    function operatorBurn() public pure {
        revert();
    }
}
