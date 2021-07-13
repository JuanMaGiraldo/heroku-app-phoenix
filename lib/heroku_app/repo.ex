defmodule HerokuApp.Repo do
  use Ecto.Repo,
    otp_app: :heroku_app,
    adapter: Ecto.Adapters.Postgres
end
