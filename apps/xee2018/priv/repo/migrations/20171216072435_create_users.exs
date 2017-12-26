defmodule Xee2018.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :uname, :string
      add :crypted_password, :string
      add :login_count, :integer, default: 0
      add :made_experiments_count, :integer, default: 0

      timestamps()
    end

  end
end
