defmodule ReversingPlug do
  use Plug.Builder

  plug :hello
  plug :reverse
  plug :sender

  def hello(conn, _opts) do
    %Plug.Conn{conn | resp_body: "Hello world"}
  end

  def reverse(conn, _opts) do
    %Plug.Conn{conn | resp_body: String.reverse(conn.resp_body)}
  end

  def sender(conn, _opts) do 
    conn
    |> Plug.Conn.put_resp_content_type("text/plain")
    |> Plug.Conn.send_resp(200, conn.resp_body)
  end

end