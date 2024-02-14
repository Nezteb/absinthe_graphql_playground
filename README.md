# Absinthe GraphQL Playground

Trying to build a minimal reproduction example of the issue described in https://github.com/elixir-grpc/grpc/issues/347

```
make setup
make run
```

### Notes

Main reproduction step:

> Change adapter from GRPC.Client.Adapters.Gun to GRPC.Client.Adapters.Mint

System:

> OS: Ubuntu 22.04.3 LTS
> 
> Erlang: 25.1.2
> 
> Elixir: 1.14.1

Mix lockfile:

>    cowboy 2.10.0 (Hex package) (rebar3)
> 
>    locked at 2.10.0 (cowboy) 3afdccb7
> 
>    cowlib 2.12.1 (Hex package) (rebar3)
> 
>    locked at 2.12.1 (cowlib) 163b73f6
> 
>    grpc 0.7.0 (Hex package) (mix)
> 
>    locked at 0.7.0 (grpc) 632a9507
> 
>    gun 2.0.1 (Hex package) (rebar3)
> 
>    locked at 2.0.1 (gun) a10bc8d6


### TODO

- [ ] Use more current versions of Elixir/Erlang and see if issue persists
- [ ] Get local environment set up with exact same versions as original reporter
- [ ] See if bug can be reproduced in unit test
- [ ] See if bug can be reproduced with minimal client/server setup