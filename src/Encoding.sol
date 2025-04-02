//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Encoding{
    function combineStrings() public pure returns (string memory) {
        return string(abi.encodePacked("Hello ", "World"));
    }

    function encodeNumber() public pure returns(bytes memory){
        bytes memory number = abi.encode(1);
        return number;
    }

    function encodeString() public pure returns(bytes memory){
        bytes memory string_value = abi.encode("Hello World");
        return string_value;
    }

    function encodeStringPacked() public pure returns (bytes memory) {
        return abi.encodePacked("Hello World");
    }
    function encodeStringBytes() public pure returns(bytes memory){
       bytes memory someString = bytes("Hello World");
       return someString;
    }

    function decodeString() public pure returns(string memory){
        string memory someString = abi.decode(encodeString(), (string));
        return someString;
    }


    function muitiEncode() public pure returns (bytes memory) {
          bytes memory someString = abi.encode("Hello World","It's bigger");
          return someString;
    }

    function multiDecode() public pure returns(string memory,string memory){
             (string memory someString,string memory otherString) = abi.decode(muitiEncode(), (string,string));
             return (someString,otherString);
    }

    function mutliEncodePacked() public pure returns (bytes memory) {
        return abi.encodePacked("Hello World","It's bigger");
    }

    function multiStringCastPacked() public pure returns(string memory){
        string memory someString = string(mutliEncodePacked());
        return someString;
    }
}
