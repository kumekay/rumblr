ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Rumblr.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Rumblr.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Rumblr.Repo)

