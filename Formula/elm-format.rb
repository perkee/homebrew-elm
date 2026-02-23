class ElmFormat < Formula
  desc "Source code formatter for Elm (with teleport-imports)"
  homepage "https://github.com/perkee/elm-format"
  version "0.8.7-teleport"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/perkee/elm-format/releases/download/v0.8.7-teleport/elm-format-v0.8.7-teleport-arm64-apple-darwin.tar.gz"
      sha256 "80e221aeda25a142335805f8fc5129cfef3445c6870f8d72835a974eab47fb3d"
    end
  end

  def install
    bin.install "elm-format"
  end

  test do
    assert_match "elm-format", shell_output("#{bin}/elm-format --help")
  end
end
