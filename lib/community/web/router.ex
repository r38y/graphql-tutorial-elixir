defmodule Community.Web.Router do
  use Community.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Community.Web do
    pipe_through :api
  end
end
