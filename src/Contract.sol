// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import {IError} from "./interfaces/IError.sol";

contract Contract {

    IError internal immutable errors;
    constructor(address _errors)  {
        errors = IError(_errors);
    }

    function native_require(bool pass) public {
        require(pass, "this is an error");
    }

    function memory_require(bool pass) public {
        string memory error = "this is an error";
        require(pass, error);
    }

    function callback_require(bool fail) public {
        if (fail) {
            revert(errors.get_error());
        }
    }

    function manual_revert(bool fail) public {
        if (fail) {
            revert("this is an error");
        }
    }

}
