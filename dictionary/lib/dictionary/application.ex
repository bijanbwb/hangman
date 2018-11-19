defmodule Dictionary.Application do
  use Application

  alias Dictionary.WordList

  def start(_type, _args) do
    WordList.start_link()
  end
end
