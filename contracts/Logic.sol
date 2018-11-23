pragma solidity ^0.4.24;


contract Logic {
    address public someAddress;
    
    constructor () public {
        // Give someAddress a value different than zero
        // to prove that it's never written by foo()
        someAddress = address(0x123);
    }

    /**
     * Function that will be called by the proxy via delegatecall.
     * At first sight, it writes to the this contract state variable
     * `someAddress`, located in the first slot of the storage.
     * When called via delegatecall, it will keep writing to the first slot
     * of the storage, but this time it will overwrite whatever value there's
     * in that slot in the context of the calling contract (i.e. the proxy).
     */
    function foo() public {
        someAddress = address(0);
    }
}
