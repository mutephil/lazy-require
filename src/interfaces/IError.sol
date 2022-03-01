// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

interface IError {
    function get_error() external view returns (string memory); 
}
