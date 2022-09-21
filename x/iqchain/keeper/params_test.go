package keeper_test

import (
	"testing"

	testkeeper "github.com/decipherhub/iq-chain/testutil/keeper"
	"github.com/decipherhub/iq-chain/x/iqchain/types"
	"github.com/stretchr/testify/require"
)

func TestGetParams(t *testing.T) {
	k, ctx := testkeeper.IqchainKeeper(t)
	params := types.DefaultParams()

	k.SetParams(ctx, params)

	require.EqualValues(t, params, k.GetParams(ctx))
}
