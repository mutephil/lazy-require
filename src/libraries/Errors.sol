// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

library Errors {

    string constant public error = "this is an error";

    function get_error() public view returns (string memory) {
        return "this is an error"; 
    }

    function get_memory_error() public view returns (string memory) {
        return error; 
    }

}
