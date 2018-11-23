pragma solidity ^0.4.24;

contract Proxy {
    address public implementation;

    constructor (address implementationAddress) public {
        implementation = implementationAddress;
    }

    function () external {
        implementation.delegatecall(
            bytes4(keccak256(abi.encodePacked("foo()")))
        );
    }
}
