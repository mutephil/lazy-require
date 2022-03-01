// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import {IError} from "./interfaces/IError.sol";
import "./libraries/Errors.sol";

contract Contract {

    

    string public constant ERROR = "this is an error";

    /*
    IError internal immutable errors;
    constructor(address _errors)  {
        errors = IError(_errors);
    }
    */

    function native_require(bool pass) public {
        require(pass, "this is an error");
    }

    function manual_revert(bool fail) public {
        if (fail) revert("this is an error");
    }

    function native_callback_require(bool pass) public {
        require(pass, Errors.get_error());
    }

    function memory_require(bool pass) public {
        string memory error = "this is an error";
        require(pass, error);
    }

    function callback_require(bool fail) public {
        if (fail) revert(Errors.error);
    }


}
