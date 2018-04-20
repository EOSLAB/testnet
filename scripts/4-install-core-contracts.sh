#!/bin/bash

# eosio.system
cleos set contract eosio \
  ~/testnet/contracts/eosio.system \
  ~/testnet/contracts/eosio.system/eosio.system.wast \
  ~/testnet/contracts/eosio.system/eosio.system.abi

# eosio.token
cleos set contract eosio \
  ~/testnet/contracts/eosio.token \
  ~/testnet/contracts/eosio.token/eosio.token.wast \
  ~/testnet/contracts/eosio.token/eosio.token.abi