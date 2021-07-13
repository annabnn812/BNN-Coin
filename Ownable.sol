pragma solidity >=0.4.21 <0.8.4;

contract Ownable {

    address owner;

    function Ownabler() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address newOwner) public onlyOwner {
        owner = newOwner;
    }

}
