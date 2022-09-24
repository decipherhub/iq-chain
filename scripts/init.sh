rm -rf ~/.iq-chain

MONIKER=iq-chain-test
CHAINID=iq-chain-1
KEYRING=test

iq-chaind init $MONIKER --chain-id $CHAINID

iq-chaind config keyring-backend $KEYRING

iq-chaind keys add genkey
iq-chaind keys add relayer
iq-chaind keys add boosik
iq-chaind keys add sangyun
iq-chaind keys add soojin
iq-chaind keys add wujinger

iq-chaind add-genesis-account $(iq-chaind keys show genkey -a) 10000000000uiq
iq-chaind add-genesis-account $(iq-chaind keys show relayer -a) 10000000000uiq
iq-chaind add-genesis-account $(iq-chaind keys show boosik -a) 10000000000uiq
iq-chaind add-genesis-account $(iq-chaind keys show sangyun -a) 10000000000uiq
iq-chaind add-genesis-account $(iq-chaind keys show soojin -a) 10000000000uiq
iq-chaind add-genesis-account $(iq-chaind keys show wujinger -a) 10000000000uiq

iq-chaind gentx genkey 1000000000uiq --chain-id $CHAINID


iq-chaind collect-gentxs

# update staking genesis
cat $HOME/.iq-chain/config/genesis.json | jq '.app_state["staking"]["params"]["bond_denom"]="uiq"' > $HOME/.iq-chain/config/tmp_genesis.json && mv $HOME/.iq-chain/config/tmp_genesis.json $HOME/.iq-chain/config/genesis.json
cat $HOME/.iq-chain/config/genesis.json | jq '.app_state["staking"]["params"]["max_entries"]="10"' > $HOME/.iq-chain/config/tmp_genesis.json && mv $HOME/.iq-chain/config/tmp_genesis.json $HOME/.iq-chain/config/genesis.json

# update mint denom
cat $HOME/.iq-chain/config/genesis.json | jq '.app_state["mint"]["params"]["mint_denom"]="uiq"' > $HOME/.iq-chain/config/tmp_genesis.json && mv $HOME/.iq-chain/config/tmp_genesis.json $HOME/.iq-chain/config/genesis.json

# update crisis variable to uiq
cat $HOME/.iq-chain/config/genesis.json | jq '.app_state["crisis"]["constant_fee"]["denom"]="uiq"' > $HOME/.iq-chain/config/tmp_genesis.json && mv $HOME/.iq-chain/config/tmp_genesis.json $HOME/.iq-chain/config/genesis.json

# udpate gov genesis
cat $HOME/.iq-chain/config/genesis.json | jq '.app_state["gov"]["voting_params"]["voting_period"]="120s"' > $HOME/.iq-chain/config/tmp_genesis.json && mv $HOME/.iq-chain/config/tmp_genesis.json $HOME/.iq-chain/config/genesis.json
cat $HOME/.iq-chain/config/genesis.json | jq '.app_state["gov"]["deposit_params"]["min_deposit"][0]["denom"]="uiq"' > $HOME/.iq-chain/config/tmp_genesis.json && mv $HOME/.iq-chain/config/tmp_genesis.json $HOME/.iq-chain/config/genesis.json