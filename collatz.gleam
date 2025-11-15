import gleam/io
import gleam/int

fn collatz(of n: Int) -> Int {
  case n {
    n if n > 0 && n % 2 == 0 -> n / 2
    n if n > 0 && n % 3 == 0 -> { n * 3 } + 1
    _ -> n
  }
}

pub fn main() -> Nil {
  let result = int.to_string(collatz(of: 12))
  io.println(result)
}
