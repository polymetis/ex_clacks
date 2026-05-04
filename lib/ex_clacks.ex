defmodule ExClacks do
  @moduledoc """
  A `Plug` that adds the `x-clacks-overhead: GNU Terry Pratchett` HTTP
  response header to every response that passes through it.

  A small tribute. See [gnuterrypratchett.com](http://www.gnuterrypratchett.com)
  for the why.

  ## Example

      pipeline :browser do
        plug :accepts, ["html"]
        plug :fetch_session
        plug ExClacks
      end
  """

  @behaviour Plug

  alias Plug.Conn

  @impl true
  def init(opts), do: opts

  @impl true
  def call(conn, _opts) do
    Conn.put_resp_header(conn, "x-clacks-overhead", "GNU Terry Pratchett")
  end
end
