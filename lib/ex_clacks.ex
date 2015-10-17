defmodule ExClacks do
  alias Plug.Conn

  @doc """
  This adds 'x-clacks-overhead: GNU Terry Pratchett' to your http response headers
  when added to a pipeline of plugs.

  #Example:
  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug ExClacks
  end
  """

  def init(options) do
    options
  end

  def call(conn, _opts \\ []) do
    conn
    |> Conn.put_resp_header("x-clacks-overhead", "GNU Terry Pratchett")
  end

end
