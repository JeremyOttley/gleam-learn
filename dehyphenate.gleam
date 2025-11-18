import gleam/io
import gleam/string

pub fn de_hyphenate(isbn: String) -> Result(String, String) {
  case string.length(isbn) > 16 {
    True -> {
      let cleaned = string.replace(in: isbn, each: "-", with: "")
      Ok(cleaned)
    }
    False -> Error("Not a valid ISBN13")
  }
}

pub fn main() {
  let isbn = "978-1-4870-8329-7"
  
  case de_hyphenate(isbn) {
    Ok(result) -> io.println(result)
    Error(msg) -> io.println(msg)
  }
}
