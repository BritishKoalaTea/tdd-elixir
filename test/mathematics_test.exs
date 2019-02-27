defmodule MathematicsTest do
  use ExUnit.Case
  doctest Mathematics

  test "can multiply" do
    assert Mathematics.multiply(2, 3) == 6
  end

  test "can square" do
    assert Mathematics.square(9) == 81
  end

  test "can calculate a cube root" do
    assert Mathematics.cuberoot(27) == 3
  end

  test "can calculate a factorial" do
    # The factorial of 4 == 4 * 3 * 2 * 1 == 24
    assert Mathematics.factorial(21) == 51090942171709440000
  end

end
