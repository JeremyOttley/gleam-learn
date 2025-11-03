import gleam/io

fn batting_average(hits: Float, at_bats: Float) -> String {
  let avg = hits /. at_bats
  case avg {
    avg if avg <=. 0.200 -> "Turrible"
    avg if avg <=. 0.250 -> "Aiiight"
    avg if avg <=. 0.280 -> "Niiiiiice"
    _ -> "JFC!"
  }
}

pub fn main() -> Nil {
  let result = batting_average(3.4,49.3)
  io.println(result)
}
