pragma solidity ^0.4.13;

import 'zeppelin-solidity/contracts/token/MintableToken.sol';

contract NADP is MintableToken {
  string public name = "NADP";
  string public symbol = "NADP";
  uint256 public decimals = 18;
}
