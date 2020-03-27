defmodule BraveryWeb.Router do
  use BraveryWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug BraveryWeb.Auth, repo: Bravery.Repo
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BraveryWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/merch", ProductController, :index
    get "/blog", PostController, :index
    resources "/users", UserController, only: [:index, :show, :new, :create]
    resources "/sessions", SessionController, only: [:new, :create, :delete]
  end

  # Other scopes may use custom stacks.
  # scope "/api", BraveryWeb do
  #   pipe_through :api
  # end
end
