defmodule Rocketpay.Users.CreateTest do
  use Rocketpay.DataCase

  alias Rocketpay.{User, Repo}
  alias Rocketpay.Users.Create

  describe "call/1" do
    test "when all params are valid, returns an user" do
      params = %{
        name: "Leonardo",
        password: "12345678",
        nickname: "leo",
        email: "leo@test.com",
        age: 21
      }

      {:ok, %User{id: user_id}} = Create.call(params)

      user = Repo.get(User, user_id)

      assert %User{
        name: "Leonardo",
        nickname: "leo",
        email: "leo@test.com",
        age: 21,
        id: ^user_id
      } = user
    end
  end
end
