# ExClacks

A `Plug` that adds `x-clacks-overhead: GNU Terry Pratchett` to your HTTP
response headers when added to a pipeline of plugs.

For a deeper explanation of why you would want to do this please visit
[gnuterrypratchett.com](http://www.gnuterrypratchett.com).

Or better yet, read [Going Postal](http://www.goodreads.com/book/show/64222.Going_Postal)
or really any of [Terry Pratchett's books](http://www.goodreads.com/author/show/1654.Terry_Pratchett).

## Example

```elixir
pipeline :browser do
  plug :accepts, ["html"]
  plug :fetch_session
  plug ExClacks
end
```

## Installation

Add `ex_clacks` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:ex_clacks, "~> 1.0"}]
end
```

## License

MIT — see [LICENSE.md](LICENSE.md).
