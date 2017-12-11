pragma solidity ^0.4.13;

import './NADP.sol';
import 'zeppelin-solidity/contracts/crowdsale/CappedCrowdsale.sol';


contract NADPPresale is CappedCrowdsale {

  function NADPPresale(uint256 _cap, uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet)
    CappedCrowdsale(_cap)
    Crowdsale(_startTime, _endTime, _rate, _wallet) {
  }

  // creates the token to be sold.
  // override this method to have crowdsale of a specific MintableToken token.
  function createTokenContract() internal returns (MintableToken) {
    return new NADP();
  }
}
