defmodule EffectsTest do
  use ExUnit.Case
  doctest Effects

  test "greets the world" do
    assert Effects.hello() == :world
  end
end
