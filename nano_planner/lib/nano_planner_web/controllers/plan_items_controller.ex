defmodule NanoPlannerWeb.PlanItemsController do
  use NanoPlannerWeb, :controller
  alias NanoPlanner.Repo
  alias NanoPlanner.PlanItem

  def index(conn, _params) do
    plan_items = Repo.all(PlanItem)
    render(conn, "index.html", plan_items: plan_items)
  end
end
