defmodule ReversingPlugTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts ReversingPlug.init([])

  test "reverses hello world" do
    conn = conn(:get, "/")
    conn = ReversingPlug.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "dlrow olleH"
  end
end
