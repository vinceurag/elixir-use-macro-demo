defmodule UseMacroTest do
  use ExUnit.Case
  doctest UseMacro

  test "greets the world" do
    assert UseMacro.hello() == :world
  end
end
