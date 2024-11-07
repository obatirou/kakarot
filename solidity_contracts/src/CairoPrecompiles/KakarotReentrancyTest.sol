// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import {WhitelistedCallCairoLib} from "./WhitelistedCallCairoLib.sol";
import {CairoLib} from "kakarot-lib/CairoLib.sol";

contract KakarotReentrancyTest {
    uint256 immutable kakarot;

    constructor(uint256 kakarotAddress_) {
        kakarot = kakarotAddress_;
    }

    function whitelistedDelegatecallKakarot(string memory functionName, uint256[] memory data) external {
        WhitelistedCallCairoLib.delegatecallCairo(kakarot, functionName, data);
    }

    function whitelistedStaticcallKakarot(string memory functionName, uint256[] memory data) external view {
        WhitelistedCallCairoLib.staticcallCairo(kakarot, functionName, data);
    }

    function whitelistedCallKakarot(string memory functionName, uint256[] memory data) external {
        WhitelistedCallCairoLib.callCairo(kakarot, functionName, data);
    }

    function staticcallKakarot(string memory functionName, uint256[] memory data) external view {
        CairoLib.staticcallCairo(kakarot, functionName, data);
    }

    function callKakarot(string memory functionName, uint256[] memory data) external {
        CairoLib.callCairo(kakarot, functionName, data);
    }
}
