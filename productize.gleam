import gleam/string
import gleam/io


const prefix = "A"
const suffix = "E"
const ppv = "PPV_BV"

//should I just have one function that returns a tuple of both?

fn dehyphenate(isbn: String) -> String {
  case !string.is_empty(isbn) {
    True -> string.replace(in: isbn, each: "-", with: "")
    False -> ""
  }
}

// this is a time for string.concat
fn make_product(isbn: String) -> String {
  //todo
  let x = string.drop_start(from: dehyphenate(isbn), up_to: 9)
  string.concat([prefix, x, suffix])
}

fn make_ppv_product(isbn: String) -> String {
  todo
  //ppv <> product
}

pub fn main() -> Nil {
  let isbn = "978-1-4780-2737-9"
  io.println(make_product(isbn))
  
}
