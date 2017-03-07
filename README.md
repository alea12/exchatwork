# ExChatwork

ChatWork API Interface for Elixir.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `exchatwork` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:exchatwork, "~> 0.1.0"}]
end
```

## Usage

```elixir
$ iex -S mix
iex> response = ExChatwork.get_rooms("YOUR_API_KEY")
iex> response.status_code
iex> response.headers
iex> response.body
```

## Docs

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/exchatwork](https://hexdocs.pm/exchatwork).

## License

MIT
