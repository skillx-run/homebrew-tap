class Skillx < Formula
  desc "npx for Agent Skills — fetch, scan, inject, run, clean in one command"
  homepage "https://skillx.run"
  license "Apache-2.0"
  version "0.8.2"

  on_macos do
    on_arm do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-aarch64-apple-darwin.tar.gz"
      sha256 "3ab5a161575c4fb9934f421171b3a83ab78ae1d12aa9288cde7ea9b29bb7004e"
    end
    on_intel do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-x86_64-apple-darwin.tar.gz"
      sha256 "16a76fce1f31a16bcef934965688352de25780ab07b0b4db94a504c447799a4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cbf0b312d26785a3e0154ff03c55d4640540638361233ad36c1a0e3d172b6af6"
    end
    on_intel do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f67f117c845a403854c5dafecaed48879f9f5756c30614e67c60b90b2417c43a"
    end
  end

  def install
    bin.install "skillx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillx --version")
  end
end
