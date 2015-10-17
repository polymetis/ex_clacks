defmodule ExClacks do
  import Plug.Conn
  alias Plug.Conn



  def call(conn, _opts \\ []) do
    conn
    |> Conn.put_resp_header("x-clacks-overhead", "GNU Terry Pratchett")
  end

end
