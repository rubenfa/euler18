defmodule Euler18Test do
  use ExUnit.Case
  doctest Euler18

  test "Una pirámide de 5 niveles devuelve los resultados correctos" do
    result =  Euler18.get_max_path([[13],[54, 30], [21, 7, 39], [14, 44, 23, 45], [ 24, 43, 16, 17, 22]])

    assert result == 175
  end

end
