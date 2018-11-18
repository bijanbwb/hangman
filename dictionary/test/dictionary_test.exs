defmodule DictionaryTest do
  use ExUnit.Case
  doctest Dictionary

  test "random_word returns a string" do
    Dictionary.random_word()
    |> is_binary
    |> assert
  end
end
