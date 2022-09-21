package keeper_test

import (
	"context"
	"testing"

	sdk "github.com/cosmos/cosmos-sdk/types"
	keepertest "github.com/decipherhub/iq-chain/testutil/keeper"
	"github.com/decipherhub/iq-chain/x/iqchain/keeper"
	"github.com/decipherhub/iq-chain/x/iqchain/types"
)

func setupMsgServer(t testing.TB) (types.MsgServer, context.Context) {
	k, ctx := keepertest.IqchainKeeper(t)
	return keeper.NewMsgServerImpl(*k), sdk.WrapSDKContext(ctx)
}
