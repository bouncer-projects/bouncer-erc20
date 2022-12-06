// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract BouncerErc20 is ERC20, ERC20Burnable, Ownable {
    uint8 decimal;

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimal
    ) ERC20(_name, _symbol) {
        decimal = _decimal;
    }

    function decimals() public view override returns(uint8) {
        return decimal;
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}
