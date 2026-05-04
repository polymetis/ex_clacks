defmodule ExClacksTest do
  use ExUnit.Case
  import Plug.Test
  import Plug.Conn

  describe "init/1" do
    test "returns the options unchanged" do
      assert ExClacks.init([]) == []
      assert ExClacks.init(foo: :bar) == [foo: :bar]
    end
  end

  describe "call/2" do
    test "You know they'll never really die while the Trunk is alive[...]" do
      conn = ExClacks.call(conn(:get, "/"), ExClacks.init([]))

      assert get_resp_header(conn, "x-clacks-overhead") == ["GNU Terry Pratchett"]
    end

    test "preserves other response headers already on the conn" do
      conn =
        conn(:get, "/")
        |> put_resp_header("x-other", "value")
        |> ExClacks.call(ExClacks.init([]))

      assert get_resp_header(conn, "x-clacks-overhead") == ["GNU Terry Pratchett"]
      assert get_resp_header(conn, "x-other") == ["value"]
    end

    test "sets the header regardless of HTTP method" do
      for method <- [:get, :post, :put, :patch, :delete, :head] do
        conn = ExClacks.call(conn(method, "/"), ExClacks.init([]))
        assert get_resp_header(conn, "x-clacks-overhead") == ["GNU Terry Pratchett"]
      end
    end
  end
end
