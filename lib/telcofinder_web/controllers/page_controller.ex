defmodule TelcofinderWeb.PageController do
  use TelcofinderWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
