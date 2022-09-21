package keeper

import (
	"github.com/decipherhub/iq-chain/x/iqchain/types"
)

var _ types.QueryServer = Keeper{}
