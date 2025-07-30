// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ProofOfHelp {
    address public owner;

    struct HelpRecord {
        address helper;
        address recipient;
        string message;
        uint256 timestamp;
    }

    HelpRecord[] public allHelpRecords;
    mapping(address => uint256) public reputation;

    event HelpGiven(address indexed helper, address indexed recipient, string message, uint256 timestamp);

    constructor() {
        owner = msg.sender;
    }

    function giveHelp(address _recipient, string memory _message) external {
        require(msg.sender != _recipient, "Cannot help yourself");
        require(_recipient != address(0), "Invalid recipient address");

        HelpRecord memory record = HelpRecord({
            helper: msg.sender,
            recipient: _recipient,
            message: _message,
            timestamp: block.timestamp
        });

        allHelpRecords.push(record);
        reputation[msg.sender] += 1;

        emit HelpGiven(msg.sender, _recipient, _message, block.timestamp);
    }

    function getAllRecords() external view returns (HelpRecord[] memory) {
        return allHelpRecords;
    }

    function getReputation(address _user) external view returns (uint256) {
        return reputation[_user];
    }

    function getHelpCount() external view returns (uint256) {
        return allHelpRecords.length;
    }
}
