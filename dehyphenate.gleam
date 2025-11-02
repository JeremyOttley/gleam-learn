import gleam/io
import gleam/string

pub fn main() {

  let isbn: String = "978-1-4780-5901-1"
  
  let _ = case !string.is_empty(isbn) {
    True -> io.println(string.replace(in: isbn, each: "-", with: ""))
    False -> io.println_error("Error: String cannot be empty")
  }
  
}
