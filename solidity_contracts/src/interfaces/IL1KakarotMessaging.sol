// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

interface IL1KakarotMessaging {
    /// @notice Sends a message to a contract on L2.
    /// @dev The bytes are split into individual uint256 values to use with the Starknet messaging system.
    /// @dev This function must be called with a value sufficient to pay for the L1 message fee.
    /// @param to The address of the contract on L2 to send the message to.
    /// @param value The value to send to the contract on L2. The value is taken from the L2 contract address.
    /// @param data The data to send to the contract on L2.
    function sendMessageToL2(address to, uint248 value, bytes memory data) external payable;

    /// @notice Consumes a message sent from L2.
    /// @param fromAddress L2 address sending the message.
    /// @param payload The payload of the message to consume.
    function consumeMessageFromL2(address fromAddress, bytes calldata payload) external;
}
