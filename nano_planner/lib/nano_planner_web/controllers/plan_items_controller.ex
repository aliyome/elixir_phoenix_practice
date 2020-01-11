defmodule NanoPlannerWeb.PlanItemsController do
  use NanoPlannerWeb, :controller
  alias NanoPlanner.Repo
  alias NanoPlanner.PlanItem
  import Ecto.Query

  def index(conn, _params) do
    plan_items = PlanItem |> order_by(:starts_at) |> Repo.all()
    render(conn, "index.html", plan_items: plan_items)
  end
end
