defmodule ExClacksTest do
  use ExUnit.Case
  import Plug.Test
  import Plug.Conn

  test "You know they'll never really die while the Trunk is alive[...]" do
    conn = ExClacks.call(conn(:get, "/"), ExClacks.init([]))

    assert get_resp_header(conn, "x-clacks-overhead") == ["GNU Terry Pratchett"]
  end
end
