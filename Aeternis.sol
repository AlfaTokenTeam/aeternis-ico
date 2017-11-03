pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Aeternis is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Aeternis(address _owner)  UpgradeableToken(_owner) {
    name = "Aeternis";
    symbol = " AET";
    totalSupply = 1000000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}