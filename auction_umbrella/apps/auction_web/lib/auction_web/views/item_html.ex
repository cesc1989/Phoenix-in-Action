defmodule AuctionWeb.ItemHTML do
  use AuctionWeb, :html

  embed_templates "item/*"

  def item_form(assigns) do
    ~H"""
    <.simple_form :let={f} for={@item} action={@action}>
      <.input field={f[:title]} label="Title" />
      <.input field={f[:description]} type="textarea" label="Description" />
      <.input field={f[:ends_at]} type="datetime-local" label="Auction ends at" />

      <:actions>
        <.button>Submit</.button>
      </:actions>
    </.simple_form>
    """
  end
end