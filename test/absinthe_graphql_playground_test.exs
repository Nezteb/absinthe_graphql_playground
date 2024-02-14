defmodule AbsintheGraphqlPlaygroundTest do
  use ExUnit.Case

  test "greets the world" do
    {:ok, channel} = GRPC.Stub.connect("localhost:50051")
    request = %Helloworld.HelloRequest{name: "grpc-elixir"}
    {:ok, reply} = channel |> Helloworld.Greeter.Stub.say_hello(request)

    assert reply.message == "Hello grpc-elixir"
  end

  @tag :skip
  test "reproduce https://github.com/elixir-grpc/grpc/issues/347 in unit test if possible?" do
    assert false
  end
end
