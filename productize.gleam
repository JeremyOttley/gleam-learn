import gleam/string
import gleam/io

const prefix = "A"
const suffix = "E"
const ppv = "PPV_BV_"

fn dehyphenate(isbn: String) -> String {
  case !string.is_empty(isbn) {
    True -> string.replace(in: isbn, each: "-", with: "")
    False -> ""
  }
}

fn make_product(isbn: String) -> String {
  let truncated_isbn: String = string.drop_start(from: dehyphenate(isbn), up_to: 9)
  string.concat([prefix, truncated_isbn, suffix])
}

fn make_ppv_product(isbn: String) -> String {
  ppv <> make_product(isbn)
}

pub fn main() -> Nil {
  let isbn = "978-1-4780-2737-9"
  io.println(make_product(isbn))
  io.println(make_ppv_product(isbn))
  
}
