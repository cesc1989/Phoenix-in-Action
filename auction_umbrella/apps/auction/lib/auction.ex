defmodule Auction do
  alias Auction.{FakeRepo, Item}

  # Instead of calling Auction.FakeRepo directly in each function,
  # you can set your preferred repo at the top of the file as a module attribute
  @repo FakeRepo

  def list_items do
    @repo.all(Item)
  end

  def get_item(id) do
    @repo.get!(Item, id) # Está llamando FakeRepo.get!/2
  end

  def get_item_by(attrs) do
    @repo.get_by(Item, attrs)
  end
end
