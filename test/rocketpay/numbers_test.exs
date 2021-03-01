defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with the given name, returns the sum of numbers" do
      assert Numbers.sum_from_file("numbers") == {:ok, %{result: 37}}
    end

    test "when there isn't a file with the given name, returns the sum of numbers" do
      assert Numbers.sum_from_file("banana") == {:error, "Invalid file"}
    end
  end
end
