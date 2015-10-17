# ExClacks
This adds 'x-clacks-overhead: GNU Terry Pratchett' to your http response headers when added to a pipeline of plugs.

For a deeper explantion of why you would want to do this please visit http://www.gnuterrypratchett.com

Or better yet read [Going Postal](http://www.goodreads.com/book/show/64222.Going_Postal) or really any of [Terry Prachett's books](http://www.goodreads.com/author/show/1654.Terry_Pratchett)

####Example:
```elixir
  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug ExClacks
  end
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add ex_clacks to your list of dependencies in `mix.exs`:

        def deps do
          [{:ex_clacks, "~> 0.0.1"}]
        end

  2. Ensure ex_clacks is started before your application:

        def application do
          [applications: [:ex_clacks]]
        end
