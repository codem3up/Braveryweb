defmodule BraveryWeb.UserView do
  use BraveryWeb, :view
  alias BraveryWeb.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
