defmodule Omnirooms.Repo do
  use Ecto.Repo,
    otp_app: :omnirooms,
    adapter: Ecto.Adapters.Postgres
end
