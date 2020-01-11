defmodule NanoPlannerWeb.PlanItemsView do
  use NanoPlannerWeb, :view
  alias Timex.Format.DateTime.Formatters.Strftime

  def format_duration(%NanoPlanner.PlanItem{} = item) do
    s = item.starts_at |> utc_to_jst()
    e = item.ends_at |> utc_to_jst()

    if Timex.to_date(s) == Timex.to_date(e) do
      "#{format_jst(s)}"
    else
      "#{format_jst(s)} - #{format_jst(e)}"
    end
  end

  def format_wday(datetime) do
    Enum.at(~w(日月火水木金土), Timex.days_to_beginning_of_week(datetime, :sun))
  end

  defp format_jst(%DateTime{} = jst) do
    if jst.year == Timex.now().year do
      Strftime.format!(jst, "%-m/%-d %H:%M")
    else
      Strftime.format!(jst, "%Y/%-m/%-d %H:%M")
    end
  end

  defp utc_to_jst(%DateTime{} = utc) do
    tokyo_tz = Timex.Timezone.get("Asia/Tokyo")
    utc |> Timex.Timezone.convert(tokyo_tz)
  end
end
