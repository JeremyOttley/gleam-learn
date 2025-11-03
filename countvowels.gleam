import gleam/io
import gleam/string
import gleam/list
import gleam/int

pub fn main() -> Nil {
  let vowels: List(String) = ["a", "e", "i", "o", "u"]
  let name: String = "Jeremy"

  string.split(name, "")
  // count all members that return True for this predicate function
  |> list.count(where: fn(char) { list.contains(vowels, char) })
  |> int.to_string() //io.println expects a String
  |> io.println()
}
