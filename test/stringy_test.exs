defmodule StringysTest do
  use ExUnit.Case
  doctest Stringy

  test "can concatenate strings" do
    assert Stringy.concatenate("hello", " world!") == "hello world!"
  end

  test "can count bottles of beer on the wall" do
    assert Stringy.bottlesOfBeerOnTheWall(1) == "1 bottle of beer on the wall."
    assert Stringy.bottlesOfBeerOnTheWall(0) == "No bottles of beer on the wall, go to the store and get some more."
    assert Stringy.bottlesOfBeerOnTheWall(47) == "47 bottles of beer on the wall."
    assert Stringy.bottlesOfBeerOnTheWall(-3) == "How can you have a negative number of bottles?"
  end

  test "can count the number of e's in a given phrase" do
    assert Stringy.countTheEs("The quick brown fox jumps over the lazy dog") == 3
    assert Stringy.countTheEs("Hello world!") == 1
    assert Stringy.countTheEs("eEeEeEeEeE") == 10
    assert Stringy.countTheEs("Ever") == 2
  end

  test "count the number of a given letter in a word or phrase" do
    assert Stringy.countTheLetter("l", "Elephant") == 1
    assert Stringy.countTheLetter("B", "Boscastle") == 1
    assert Stringy.countTheLetter("A", "Alison") == 1
    assert Stringy.countTheLetter("t", "The quick brown fox jumps over the lazy dog") == 2
  end

end
