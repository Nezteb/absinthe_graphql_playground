default: run

.PHONY: setup
setup:
	mix escript.install hex protobuf
	protoc --elixir_out=plugins=grpc:./lib/ *.proto
	mix deps.get

.PHONY: run
run:
	mix format
	mix compile
	mix test

