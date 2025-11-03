import gleam/io
import gleam/string
import gleam/list
import gleam/int

pub fn main() -> Nil {
  let vowels: List(String) = ["a", "e", "i", "o", "u"]
  let name: String = "Jeremy"

  string.split(name, "")
  |> list.filter(fn(char) { list.contains(vowels, char) })
  |> list.count(where: fn(s) { True })
  |> int.to_string() //io.println expects a String
  |> io.println()
}
