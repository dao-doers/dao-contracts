pragma solidity ^0.5.2;

import "./ERC20.sol";

contract Token is ERC20 {
  string private _name;
  string private _symbol;

  constructor(string memory name_, string memory symbol_, uint256 supply) public {
    _name = name_;
    _symbol = symbol_;
    _mint(msg.sender, supply);
  }

  function name() public view returns (string memory) {
    return _name;
  }

  /**
    * @dev Returns the symbol of the token, usually a shorter version of the
    * name.
    */
  function symbol() public view returns (string memory) {
    return _symbol;
  }

  function decimals() public view returns (uint8) {
    return 18;
  }
}
