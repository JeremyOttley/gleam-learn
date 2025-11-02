import gleam/io
import gleam/string

pub fn main() {

  let _ = "978-1-4780-5901-1"
    |> string.replace(each: "-", with: "")
    |> echo
}
