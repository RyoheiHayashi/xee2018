defmodule Xee2018Web.PageController do
  use Xee2018Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
