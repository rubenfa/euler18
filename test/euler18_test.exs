defmodule Euler18Test do
  use ExUnit.Case
  doctest Euler18

  test "si la pirámide está vacía devolvemos 0 como suma" do
    Euler18.get_sums([])
  end

  test "Una pirámide de 2 niveles devuelve dos resultados (dos caminos)" do
    result =  Euler18.get_sums([[13],[54, 30]])
    assert is_list(result)
    assert Enum.count(result) == 2
  end

  test "Una pirámide de 2 niveles tiene los resultados correctos" do
    result =  Euler18.get_sums([[13],[54, 30]])

    assert_result(result, 0, 67)
    assert_result(result, 1, 43)
  end

  test "Una pirámide de 3 niveles devuelve tres resultados (dos caminos)" do
    result =  Euler18.get_sums([[13],[54, 30], [21, 7, 39]])
    assert is_list(result)
    assert Enum.count(result) == 2
  end


  defp assert_result(res, pos, expected_value) do
    assert Enum.at(res, pos) == expected_value
  end

end
