# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     NanoPlanner.Repo.insert!(%NanoPlanner.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias NanoPlanner.Repo, as: Repo
alias NanoPlanner.PlanItem, as: PlanItem

Repo.insert!(%PlanItem{
  name: "読書",
  description: "「走れメロス」を読む"
})
