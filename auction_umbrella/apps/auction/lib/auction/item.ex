defmodule Auction.Item do
  import Ecto.Changeset
  use Ecto.Schema

  schema "items" do
    field :title, :string
    field :description, :string
    field :ends_at, :utc_datetime
    timestamps()
  end

  def changeset(item, params \\ %{}) do
    item
    |> cast(params, [:title, :description, :ends_at]) # Así indico que parametros aceptar para actualizar
    |> validate_required(:title) # valida que el campo es requerido
    |> validate_length(:title, min: 3)
    |> validate_length(:description, max: 200)
    |> validate_change(:ends_at, &validate/2)
  end

  defp validate(:ends_at, ends_at_date) do
    case DateTime.compare(ends_at_date, DateTime.utc_now()) do
      :lt -> [ends_at: "ends_at cannot be in the past"]
      _ -> []
    end
  end
end
