import gleam/io
import gleam/string
import gleam/bool

pub fn de_hyphenate(isbn: String) -> Result(String, String) {

  use <- bool.guard(string.length(isbn) > 17, Error("Must be a 13 digit ISBN"))
  
  Ok(string.replace(in: isbn, each: "-", with: ""))
}

pub fn main() {
  let isbn = "978-1-4870-8329-7"

  case de_hyphenate(isbn) {
    Ok(result) -> io.println(result)
    Error(msg) -> io.println(msg)
  }
}
