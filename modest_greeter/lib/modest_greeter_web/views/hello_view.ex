defmodule ModestGreeterWeb.HelloView do
  use ModestGreeterWeb, :view

  def info(assigns), do: IO.inspect(assigns)
end
