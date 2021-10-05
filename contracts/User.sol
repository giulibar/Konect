// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.6.7;

contract User {
    struct _User  {
        address adrr;
        string name;
        string biography;
        mapping (address => bool) contacts;
        address [] contactsAddr;
    }
    mapping (address => _User) private users;

    function register(string memory name, string memory bio, address[] memory contacts) public{
        users[msg.sender]  = _User(msg.sender, name, bio, contacts);
    }

    // modify to pass an array of contacts, more efficient
    function addContact(address account) public {
        if (users[msg.sender].contacts[account] == false){
            users[msg.sender].contacts[account] = true;
            users[msg.sender].contactsAddr.push(account);    
        }
    }

    // modify to pass an array of contacts, more efficient
    function deleteContact(address account) public {users[msg.sender];
        address[] storage contAdr = users[msg.sender].contactsAddr;
        users[msg.sender].contacts[account] = false;
        for (uint i=0 ; i< contAdr.length; i++){
            if (contAdr[i] == account){
                contAdr[i] = contAdr[contAdr.length -1];
                contAdr.pop();
            }
        }
    }

    function getContacts() public view returns (address[] memory){
        return users[msg.sender].contactsAddr;
    }

}