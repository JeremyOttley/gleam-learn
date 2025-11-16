import gleam/io
import shellout

pub fn main() {
  // Run a command
  let result =
    shellout.command(
      run: "powershell",
      with: [
        "-Command",
        "Get-ChildItem -Path C:\\Users\\jerem\\Pictures\\.o\\test\\ -Filter *.jxl -Name",
      ],
      in: ".",
      opt: [],
    )

  case result {
    Ok(output) -> io.println(output)
    Error(err) -> {
      io.println("Error running command")
      io.println(err.1)
    }
  }
}
