defmodule Bravery.Repo do
  use Ecto.Repo,
    otp_app: :bravery,
    adapter: Ecto.Adapters.Postgres
end
