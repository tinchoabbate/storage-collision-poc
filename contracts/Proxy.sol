pragma solidity ^0.5.0;

contract Proxy {
    address public implementation;

    constructor (address implementationAddress) public {
        implementation = implementationAddress;
    }

    function () external {
        implementation.delegatecall(
            abi.encodeWithSignature("foo()")
        );
    }
}
