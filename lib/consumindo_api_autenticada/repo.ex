defmodule ConsumindoApiAutenticada.Repo do
  use Ecto.Repo,
    otp_app: :consumindo_api_autenticada,
    adapter: Ecto.Adapters.Postgres
end
