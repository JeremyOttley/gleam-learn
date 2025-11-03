import gleam/string
import gleam/io

fn is_vowel(char: String) -> Bool {
  case char {
    "a" | "e" | "i" | "o" | "u" | "A" | "E" | "I" | "O" | "U" -> True
    _ -> False
  }
}

pub fn main() -> Nil {
  let word: String = "Gillian"

  case string.first(word) {
    Ok(first_char) ->
    case is_vowel(first_char) {
      True -> io.println(word <> "yay")
      False -> io.println(string.drop_start(from: word, up_to: 1) <> first_char <> "ay")
    }
    Error(Nil) -> io.println("Empty string") // string.first() returns Result(a, Nil)
  }
}
