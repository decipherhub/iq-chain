module github.com/decipherhub/iq-chain

go 1.16

replace github.com/cosmos/ibc-go/v3 => github.com/decipherhub/ibc-go/v3 v3.0.0-decipher

require (
	github.com/armon/go-metrics v0.4.0 // indirect
	github.com/cosmos/cosmos-sdk v0.45.8
	github.com/cosmos/ibc-go/v3 v3.0.0-00010101000000-000000000000
	github.com/gogo/protobuf v1.3.3
	github.com/golang/protobuf v1.5.2
	github.com/golangci/golangci-lint v1.48.0 // indirect
	github.com/gorilla/mux v1.8.0
	github.com/grpc-ecosystem/grpc-gateway v1.16.0
	github.com/ignite-hq/cli v0.20.3
	github.com/spf13/cast v1.5.0
	github.com/spf13/cobra v1.5.0
	github.com/stretchr/testify v1.8.0
	github.com/tendermint/tendermint v0.34.21
	github.com/tendermint/tm-db v0.6.6
	golang.org/x/xerrors v0.0.0-20220609144429-65e65417b02f // indirect
	google.golang.org/genproto v0.0.0-20220822174746-9e6da59bd2fc
	google.golang.org/grpc v1.48.0
	gopkg.in/yaml.v2 v2.4.0
)

replace (
	github.com/gogo/protobuf => github.com/regen-network/protobuf v1.3.3-alpha.regen.1
	github.com/keybase/go-keychain => github.com/99designs/go-keychain v0.0.0-20191008050251-8e49817e8af4
	google.golang.org/grpc => google.golang.org/grpc v1.33.2
)
