# StorkNet

## 1. Struct : 
<p>
  
    struct DataStruct {
        address x;
        uint256 y;
        uint256 z;
    } 

</p>

## 2. Inputs: 
<p>
  
Tuples: <br>

    ["0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",5,true] 
    ["0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db",17,false]
    ["0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2",9,false]


Bytes: 

    0x0000000000000000000000005b38da6a701c568545dcfcb03fcb875f56beddc400000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000001
    0x0000000000000000000000004b20993bc481177ec7e8f571cecae8a9e22c02db00000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000000000000000000000000000000000000000
    0x000000000000000000000000ab8483f64d9c6d1ecf9b849ae677dd3315835cb200000000000000000000000000000000000000000000000000000000000000090000000000000000000000000000000000000000000000000000000000000000
</p>

## 3. Gas Used:
<p>
 
| STORE/CHAIN 	| EVM-Chain 	| ABI_ENCODE 	| ABI_DECODE 	|
|-------------	|-----------	|------------	|------------	|
| 1           	|   115613  	|    26392   	|    24183   	|
| 2           	|   78601   	|    26380   	|    24183   	|
| 3           	|   78601   	|    26380   	|    24183   	|
| TOTAL       	|   272815  	|    79152   	|    72549   	|

  
| COMPUTE/CHAIN 	| EVM-Chain 	| ABI_ENCODE 	| ABI_DECODE 	|
|---------------	|-----------	|------------	|------------	|
| 1             	|   23384   	|    44211   	|    45940   	|
| 2             	|   48421   	|    71310   	|    74668   	|
| 3             	|   59301   	|    95486   	|   100473   	|
| TOTAL          	|   131106  	|   211007   	|   221081   	|
  
  
    100*(1-encoded/storing) = 31.45% reduction in gas

    100*(1-decoded/storing) = 30.12% reduction in gas

</p>


| Operation         	| Rinkeby URL                                                                                        	|
|-------------------	|----------------------------------------------------------------------------------------------------	|
| Contract Creation 	| https://rinkeby.etherscan.io/tx/0x0600220752d6fe7ebdea8563136f991b24e44c1f95a00ca7c5070844d5b324b9 	|
| Contract address  	|           https://rinkeby.etherscan.io/address/0x4b77afb502e18f32c1efeced704279685157349e          	|

| Operation                 	|                            Rinkeby Tx ID                           	|
|---------------------------	|:------------------------------------------------------------------:	|
| Store 1                   	| 0x84c5fdd046c24b3944cfb9186c701f75f1e56298b7eb576ecd10ba4b5f7c0de4 	|
| Store 2                   	| 0x38a73090bd5e4d55708a08b0562f5863a46d16630ccd9ca56b37a4c6041f885f 	|
| Store 3                   	| 0x065675f1a20464595dffeff913b49b1f75fa233cb78360eb3dce133614d6cbb6 	|
| Find Max                  	| 0x2a789b75cbaa2deca4ab08c7c47a56866056b07c5f11e416fe97f3df3ffe75da 	|
| Reset Max                 	| 0x64f919edf9636a5ba8a5dbb17af258710cb8c8af57a36e058c59181fc47f8c4c 	|
| Encode 1                  	| 0x9b9cf8669cb0f98352d1f57714906918abf5d4c934d48b8187720b51e271971a 	|
| Encode 2                  	| 0x47b532b065741861a0a4d097a2e411448c2c4f618f3da7952293065cadb56dec 	|
| Encode 3                  	| 0x34b351abca6c67ed38fb62da1b4c7ecd226210377c8e29e66d73969b2b351b2f 	|
| Find Max [Decoded] Size 1 	| 0xe809c856c8f1c75679678bf87456abd29646ff13b488dc93d5c1c2ab58723744 	|
| Find Max [Decoded] Size 2 	| 0x4a22fe8091d975d524e4102b009b1cd2eb5dc5eabd06a2438acdcc34664fa703 	|
| Find Max [Decoded] Size 3 	| 0x3566be48ca18e2ccce8b52891a8293c001964c39850af1821d49d5c5e86f53d2 	|
| Reset Max                 	| 0x4daa5f5f988936a3dbad19ca577af9a1faa98d6cd4827b073b5da7b4ff27f324 	|
| Find Max [Encoded] Size 1 	| 0xb0f2caa041d6a60b81ec75d139f83c4b166aca6ce0e707c84f4ce2199689a604 	|
| Find Max [Encoded] Size 2 	| 0xf9b55840f016ae46e052b706cbb3c9236daf7510d97547e00e0e02ef1d6be689 	|
| Find Max [Encoded] Size 3 	| 0x6758a0f2ecc6e3fb9b7eb01677e47440802253c12eebd12bf38ce1a493020c71 	|

