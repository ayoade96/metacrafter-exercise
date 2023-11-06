// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract Token {
    
    string public name = "Dambaz";
    string public tokenAbbr = "DMB";
    uint public totalSupply = 0;

    mapping(address => uint) balances;

    function mint(address _address, uint _value ) public {
        totalSupply += _value;
        balances[_address] += _value;

    }

     function burn(address _address, uint _value ) public {
        if ( balances[_address] >= _value) {
        totalSupply += _value;
        balances[_address] += _value;
        }
    }    
}