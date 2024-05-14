// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract MyToken {

    // public variables here
    string public tName = "ARMANDO";
    string public tAbb = "AMD";
    uint public supply = 0;

    // mapping variable here
    mapping(address => uint) public bal; //if you pass an address it will return the balance
    
    // mint function public for easy access
    function mint (address add, uint val) public {
        supply += val;
        bal[add] += val; 
    }
    // burn function
    function burn (address add, uint val) public {
        if (bal[add] >= val){
        supply -= val;
        bal[add] -= val; 
        }
    }
}
