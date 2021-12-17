// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract SoundX {

  address owner;
  mapping(address => uint) Reward;
  
  constructor () {
    owner = msg.sender;
  }
  function contractBalance () private returns( uint) {
      uint balance =  balanceOf(address(this));
      return balance;
  }

  function rewardUser () public {
    uint contractBalance = contractBalance();
  }

  function checkBalanceToken () {}
}