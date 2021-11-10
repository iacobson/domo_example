defmodule DomoExampleTest do
  use ExUnit.Case

  defmodule TestExample do
    use DomoExample
  end

  test "return ok when data is a map" do
    assert {:ok, _struct} = Example.create(%{foo: :bar})
  end

  test "returns error when data is not a map" do
    # This test fails

    # But the same test would pass if:
    # - I would remove the TextExample module from the test file
    # - or I would remove `use Domo` from the __using__

    assert {:error, _errors} = Example.create("foo bar")
  end

  test "test module - return ok when data is a map" do
    assert {:ok, _struct} = TestExample.create(%{foo: :bar})
  end

  test "test module - returns error when data is not a map" do
    assert {:error, _errors} = TestExample.create("foo bar")
  end
end
