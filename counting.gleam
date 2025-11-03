import gleam/list
import gleam/int

pub fn main() {
  let numbers = [1, 2, 3, 4, 5]
  let odd_count = list.count(numbers, int.is_odd) // -> 3
}
