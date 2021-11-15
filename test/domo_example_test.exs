defmodule DomoExampleTest do
  use ExUnit.Case

  test "return ok when data is a map" do
    assert {:ok, _struct} = Example.create(%{foo: :bar})
  end

  test "returns error when data is not a map" do
    assert {:error, _errors} = Example.create("foo bar")
  end

  test "test module - return ok when data is a map" do
    assert {:ok, _struct} = TestExample.create(%{foo: :bar})
  end

  test "test module - returns error when data is not a map" do
    assert {:error, _errors} = TestExample.create("foo bar")
  end
end
