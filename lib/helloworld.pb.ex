defmodule Helloworld.HelloRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, type: :string
end

defmodule Helloworld.HelloReply do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :message, 1, type: :string
end

defmodule Helloworld.Greeter.Service do
  @moduledoc false

  use GRPC.Service, name: "helloworld.Greeter", protoc_gen_elixir_version: "0.12.0"

  rpc :SayHello, Helloworld.HelloRequest, Helloworld.HelloReply

  rpc :SayHelloStreamReply, Helloworld.HelloRequest, stream(Helloworld.HelloReply)

  rpc :SayHelloBidiStream, stream(Helloworld.HelloRequest), stream(Helloworld.HelloReply)
end

defmodule Helloworld.Greeter.Stub do
  @moduledoc false

  use GRPC.Stub, service: Helloworld.Greeter.Service
end