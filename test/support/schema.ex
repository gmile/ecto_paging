defmodule Ecto.Paging.TestSchema do
  @moduledoc """
  API entity schema.
  """

  use Ecto.Schema

  schema "apis" do
    field :name, :string

    embeds_one :request, Request, primary_key: false do
      field :scheme, :string
      field :host, :string
      field :port, :integer
      field :path, :string
    end

    timestamps()
  end
end

defmodule Ecto.Paging.BinaryTestSchema do
  @moduledoc """
  API entity schema.
  """

  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "apis_binary" do
    field :name, :string

    embeds_one :request, Request, primary_key: false do
      field :scheme, :string
      field :host, :string
      field :port, :integer
      field :path, :string
    end

    timestamps()
  end
end
