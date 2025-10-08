defmodule AuctionWeb.SessionController do
  use AuctionWeb, :controller

  def new(conn, _params) do
    render(conn, :new)
  end

  def create(conn, %{"user" => user}) do
    # later
  end

  def delete(conn, _params) do
    # later
  end
end
