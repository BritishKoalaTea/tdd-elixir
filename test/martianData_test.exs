defmodule MartianDataTest do
  use ExUnit.Case
  doctest MartianData

  # use https://maas2.apollorion.com/

  test "can get a success response from endpoint" do
  	assert HTTPotion.Response.success?(MartianData.getResponseFromEndpoint)
  end

  test "can get latest sol data from endpoint" do
    # downloaded file has sol 2036, newer data should be a higher number
    result = MartianData.getCurrentSolFromEndpoint
    IO.puts ("\nLatest Martian sol: #{result}")
    assert result >= 2522
  end

  test "can get latest temperature data from endpoint" do
    result = MartianData.getTemperatureHighFromEndpoint
    IO.puts ("\nLatest Martian high temperature in Celsius: #{result}")
    assert(result, "No temperature found from endpoint")
  end

  test "can read a string from a file" do
    assert String.length(MartianData.getDataFromFile) != 0
  end

  test "can get the low temperature on Mars from a file" do
    assert MartianData.getTemperatureLowFromFile == -72
  end

  test "can get the high temperature on Mars from a file" do
    assert MartianData.getTemperatureHighFromFile == -5
  end

  test "can get temperature range on Mars from a file" do
    assert MartianData.getTemperatureRangeFromFile == 67
  end

end
