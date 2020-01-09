defmodule NanoPlanner.PlanItem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "plan_items" do
    field :description, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(plan_item, attrs) do
    plan_item
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end