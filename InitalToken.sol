pragma solidity ^0.4.17;

/**

 @title Nectar, Antz.io token
 
 Implementation of Nectar, the token for the Antz.io platform
 
 */

    // Token Name
    string public constant NAME = "Nectar";
    
    // Token Symbol
    string public constant SYMBOL = "NCTR";
    
    // Token decimals
    uint public constant DECIMALS = 18;
    
    // This creates an array with all balances
    mapping (address => uint256) public balanceOf;

    // Initializes contract with initial supply tokens to the creator of the contract
    function Nectar(
        uint256 initialSupply
    ) {
        balanceOf[msg.sender] = initialSupply;              // Give the creator all initial tokens
    }

    // Send coins
    function transfer(address _to, uint256 _value) {
        require(balanceOf[msg.sender] >= _value);           // Check if the sender has enough
        require(balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
        balanceOf[msg.sender] -= _value;                    // Subtract from the sender
        balanceOf[_to] += _value;                           // Add the same to the recipient
    }
}