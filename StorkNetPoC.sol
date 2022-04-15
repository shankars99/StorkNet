// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract StorkData {
    struct DataStruct {
        address x;
        uint256 y;
        bool z;
    }

    // gas 23493
    uint256 public max;

    event UploadComplete(address indexed _from, DataStruct _value);
    event UploadCompleteEncode(address indexed _from, bytes _data);

    // gas for reading 1 30673
    // gas for reading 2 30685
    // gas for reading 3 30685
    DataStruct[] public dataStruct;

    // gas for storing 1 115613
    // gas for storing 2 78601
    // gas for storing 3 78601
    function storeData(DataStruct calldata data) public { 
        dataStruct.push(data);
        emit UploadComplete(msg.sender, data);
    }

    // gas for encoding 26392
    // gas for encoding 26380
    // gas for encoding 26380
    function encode(DataStruct calldata data) public { 
        emit UploadCompleteEncode(msg.sender, abi.encode(data));
    }

    // gas for decoding 24183
    // gas for decoding 24183
    // gas for decoding 24183
    function decode(bytes calldata data) public pure returns (DataStruct memory structData)
    { 
        structData = abi.decode(data, (DataStruct));
    }

    // gas for execution with size 1 23384
    // gas for execution with size 2 48421
    // gas for execution with size 3 59301
    function findMax() public {
        for(uint8 i = 1; i<dataStruct.length; ++i){
            if(dataStruct[i].y > max){
                max = dataStruct[i].y;
            }
        }
    }

    // gas for execution [-decode] 
    // size 1 44211 
    // size 2 27099
    // size 3 24176
    function findMaxEncode_PreDecode(DataStruct calldata data) public {
        if(data.y > max){
            max = data.y;
        }
    }

    //made the aboe an array and then badabing badaboom its perfect now (test this) 
    function findMaxEncode_PreDecode_ARRAY(DataStruct[] calldata data) public {
        for(uint8 i = 1; i<data.length; ++i){
            if(data[i].y > max){
                max = data[i].y;
            }
        }
    }

    // gas for execution [+decode]
    // size 1 45940 
    // size 2 28728 
    // size 3 25805
    function findMaxEncoded_PostDecode(bytes calldata data) public {
        DataStruct memory structData = decode(data);
        if(structData.y > max){
            max = structData.y;
        }
    }

    // gas for resetting value of max 21489 
    function resetMax() external {
        max = 0;
    }
}