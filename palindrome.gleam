import gleam/io
import gleam/bool
import gleam/string

fn palindrome(word: String) -> Result(Bool, String) {
  case !string.is_empty(word) {
    True -> Ok(string.reverse(word) == word)
    False -> Error("Word cannot be empty")
  } 
}

pub fn main() -> Nil {
  let word: String = "racecar"
  
  let _ = case palindrome(word) {
    Ok(res) -> io.println(bool.to_string(res))
    Error(msg) -> io.println(msg)
  }
}
