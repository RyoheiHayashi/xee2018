defmodule Xee2018.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Xee2018.Accounts.User


  schema "users" do
    field :uname, :string
    field :crypted_password, :string
    field :login_count, :integer, default: 0
    field :made_experiments_count, :integer, default: 0
    field :password, :string, virtual: true
    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs \\ %{}) do
    user
    |> cast(attrs, [:uname, :crypted_password, :login_count, :made_experiments_count, :password, :inserted_at, :updated_at])
    |> validate_required([:uname, :password])
    |> validate_length(:uname, min: 1, max: 254)
    |> update_change(:uname, &String.downcase/1)
    |> unique_constraint(:uname)
    |> validate_length(:password, min: 3, max: 254)
    |> put_pass_hash()
  end

  defp put_pass_hash(changeset) do
    case changeset do
      %Ecto.Changeset{valid?: true, changes: %{password: pass}} ->
        put_change(changeset, :crypted_password, Comeonin.Bcrypt.hashpwsalt(pass))
      _ ->
        changeset
    end
  end
end
