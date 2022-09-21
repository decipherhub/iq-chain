package iqchain_test

import (
	"testing"

	keepertest "github.com/decipherhub/iq-chain/testutil/keeper"
	"github.com/decipherhub/iq-chain/testutil/nullify"
	"github.com/decipherhub/iq-chain/x/iqchain"
	"github.com/decipherhub/iq-chain/x/iqchain/types"
	"github.com/stretchr/testify/require"
)

func TestGenesis(t *testing.T) {
	genesisState := types.GenesisState{
		Params: types.DefaultParams(),

		// this line is used by starport scaffolding # genesis/test/state
	}

	k, ctx := keepertest.IqchainKeeper(t)
	iqchain.InitGenesis(ctx, *k, genesisState)
	got := iqchain.ExportGenesis(ctx, *k)
	require.NotNil(t, got)

	nullify.Fill(&genesisState)
	nullify.Fill(got)

	// this line is used by starport scaffolding # genesis/test/assert
}
