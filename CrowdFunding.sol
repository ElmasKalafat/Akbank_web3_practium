// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract CrowdSource{
    struct request{
        string description;  //the purpose of request
        uint value;          //the amount of money needed
        address recipiant;   //the address of the vendor
        bool complete;
    }



    address public manager;
    uint public MinimumContribution;
    address[] public approvals;

    function campaign(uint minimum)public{
        manager = msg.sender;
        MinimumContribution = minimum; //so whoever contributes to the contract is added
    }

    function contribute() public payable{        // The *require* function kicks out anyone that has not added value to the *minimumContribution* and pushes a contributor to the approvals list
        require(msg.value > MinimumContribution);  
        approvals.push(msg.sender);
    }
}
