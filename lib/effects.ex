defmodule Effects do
  @moduledoc """
  Documentation for Effects.
  """
  defmacro __using__(i) do
    Module.put_attribute(__CALLER__.module, :interpreter, Macro.expand(i, __CALLER__))

    quote do
      import Effects
    end
  end

  defmacro effect(ast) do
    apply(Module.get_attribute(__CALLER__.module, :interpreter), :effect, [ast])
  end
end
