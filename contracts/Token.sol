// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

contract SoundX is ERC20 {
   address owner;
    constructor(uint256 initialSupply) ERC20("SoundX", "SXT") {
      owner = msg.sender;
        _mint(owner, initialSupply);
    }
    // update to ownable contract
   function approveTokenTransferByContract (uint amount) public {
     require(msg.sender == owner, "Only called by contract owner");
       _approve(owner, address(this), amount );
       emit Approval(owner, address(this), amount);
   }
  
}