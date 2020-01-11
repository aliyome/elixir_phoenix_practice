defmodule NanoPlannerWeb.PlanItemsView do
  use NanoPlannerWeb, :view
  alias Timex.Format.DateTime.Formatters.Strftime

  def format_duration(item) do
    s = item.starts_at |> utc_to_jst()
    e = item.ends_at |> utc_to_jst()
    "#{format_utc(s)} - #{format_utc(e)}"
  end

  defp format_utc(utc) do
    Strftime.format!(utc, "%Y/%m/%d %H:%M")
  end

  defp utc_to_jst(utc) do
    tokyo_tz = Timex.Timezone.get("Asia/Tokyo")
    utc |> Timex.Timezone.convert(tokyo_tz)
  end
end
