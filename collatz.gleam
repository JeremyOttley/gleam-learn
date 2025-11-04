import gleam/io
import gleam/int

fn greater_than_zero(n: Int) -> Bool {
  todo
}

fn is_even(n: Int) -> Bool {
  todo
}

fn is_odd(n: Int) -> Bool {
  todo
}

fn collatz(n: Int) -> Int {
  case n {
    n if n > 0 && n % 2 == 0 -> n / 2
    n if n > 0 && n % 3 == 0 -> { n * 3 } + 1
    _ -> n
  }
}

pub fn main() -> Nil {
  let result = int.to_string(collatz(12))
  io.println(result)
}
