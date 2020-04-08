defmodule Test do
  use Effects, TestInterpreter
  #use Effects, ProdInterpreter

  def f do
    s1 = effect(Service.cat("a"))
    s2 = effect(Service.cat(s1 <> "b"))

    s2
  end
end
