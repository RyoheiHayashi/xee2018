defmodule Xee2018Web.Router do
  use Xee2018Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Xee2018Web.Locale
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Xee2018Web do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/users", UserController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Xee2018Web do
  #   pipe_through :api
  # end
end
