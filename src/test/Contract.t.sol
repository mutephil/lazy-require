// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";

import {Contract} from "../Contract.sol";
import {Errors} from "../Errors.sol";

contract ContractTest is DSTest {

    Contract dummy;
    Errors errors;

    function setUp() public {
        errors = new Errors();
        dummy = new Contract(address(errors));
    }

    function testFailNativeRequire() public {
        dummy.native_require(false);
    }

    function testFailMemoryRequire() public {
        dummy.memory_require(false);
    }

    function testFailCallbackRequire() public {
        dummy.callback_require(true);
    }
    function testFailManualRevert() public {
        dummy.callback_require(true);
    }

    function testNativeRequire() public {
        dummy.native_require(true);
    }

    function testMemoryRequire() public {
        dummy.memory_require(true);
    }

    function testCallbackRequire() public {
        dummy.callback_require(false);
    }
    function testManualRevert() public {
        dummy.callback_require(false);
    }



}
