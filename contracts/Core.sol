// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.6.7;

contract Core {
     mapping(address => bool) users;

    function register(address account) public {
        if (users[account] == false){ 
            users[account] = true;
        }
    }
}
