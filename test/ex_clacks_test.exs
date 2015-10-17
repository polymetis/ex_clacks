defmodule ExClacksTest do
  use ExUnit.Case
  doctest ExClacks
  use Plug.Test

  test "You know they'll never really die while the Trunk is alive[...]" do
    conn = conn(:head, "/")
      |> ExClacks.call

    assert Plug.Conn.get_resp_header(conn, "x-clacks-overhead") == ["GNU Terry Pratchett"]
  end
end
