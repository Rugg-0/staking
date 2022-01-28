// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

interface ERC20 {

  function transfer(address to, uint value) external returns (bool);

}

contract TokenPool {

    address _stakeAddress = 0x1BBb58a03c0472A82DCA97f24d8ec032f4Ad3C65; //testnet stake pool contract address
    
    function distributePool(address receiver) public {
        require(msg.sender == _stakeAddress, "incorrect stake address");
        ERC20(0xC17b598A3B464c4342dB8d5be3b4E5372e05e446).transfer(receiver, 1); //testnet ERC-20 token address
    }

}