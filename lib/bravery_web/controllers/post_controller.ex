defmodule BraveryWeb.PostController do
  use BraveryWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
