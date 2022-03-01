// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import {IError} from "./interfaces/IError.sol";

contract Errors is IError{

    string internal constant ERROR = "this is an error";

    function get_error() external view returns (string memory) {
        return ERROR;
    }
}
