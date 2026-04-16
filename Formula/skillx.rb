class Skillx < Formula
  desc "npx for Agent Skills — fetch, scan, inject, run, clean in one command"
  homepage "https://skillx.run"
  license "Apache-2.0"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-aarch64-apple-darwin.tar.gz"
      sha256 "f6fb53299d3af6f2db3f22f8fb5be1bec900b6bb7759fbccecf32da895d708bc"
    end
    on_intel do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-x86_64-apple-darwin.tar.gz"
      sha256 "b23be0f988a2f09ff49cdd01c8bab5c65d2412816f91d51579d07b4a25f5d4e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1ce0f2950b17fe7f0cca22257ecf0da56d5b029d45a3b4e3b0759fd8b6174b0"
    end
    on_intel do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd87bc4a8a777632704223a3bcbe2b41144163f8763448769813ec179271edf0"
    end
  end

  def install
    bin.install "skillx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillx --version")
  end
end
