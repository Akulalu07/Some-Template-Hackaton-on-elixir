defmodule BackendWeb.HelloController do
  use BackendWeb, :controller

  def index(conn, _params) do
    json(conn, %{message: "Hello!"})
  end
end
