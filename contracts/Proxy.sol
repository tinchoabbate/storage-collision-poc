pragma solidity ^0.4.24;

contract Proxy {
    address public implementation;
    event ProxyCalled();

    constructor (address implementationAddress) public {
        implementation = implementationAddress;
    }

    function () external {
        implementation.delegatecall(
            bytes4(keccak256(abi.encodePacked("foo()")))
        );
    }
}
