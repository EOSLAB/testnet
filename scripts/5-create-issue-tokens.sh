#!/bin/bash

cleos push action eosio create ~/testnet/data/create-token.json -p eosio@active
cleos push action eosio issue ~/testnet/data/issue-token.json -p eosio@active