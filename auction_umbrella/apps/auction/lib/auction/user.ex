defmodule Auction.User do
  use Ecto.Schema

  schema "users" do
    field :username, :string
    field :email_address, :string

    # virtual: true hace que no se guarde en la bd
    field :password, :string, virtual: true
    field :hashed_password, :string
    timestamps()
  end
end
