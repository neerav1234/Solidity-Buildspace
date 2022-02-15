pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint totalWaves;
    mapping(address => uint) noOfWaves;
    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }
    function wave() public {
        totalWaves += 1;
        noOfWaves[msg.sender]++;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
    function howManyTimes(address friend) public view returns (uint) {
        console.log("%s waved %d times", friend, noOfWaves[friend]);
        return noOfWaves[friend];
    }
    
}