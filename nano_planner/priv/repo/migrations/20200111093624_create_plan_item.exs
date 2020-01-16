defmodule NanoPlanner.Repo.Migrations.CreatePlanItem do
  use Ecto.Migration

  def change do
    create table(:plan_item) do

      timestamps()
    end

  end
end
