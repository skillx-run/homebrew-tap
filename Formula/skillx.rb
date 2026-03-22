class Skillx < Formula
  desc "npx for Agent Skills — fetch, scan, inject, run, clean in one command"
  homepage "https://skillx.run"
  license "Apache-2.0"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-aarch64-apple-darwin.tar.gz"
      sha256 "ce54be83278693a78d4623b59a8565909ceb515f52d8ec1b314f8a603556bb77"
    end
    on_intel do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-x86_64-apple-darwin.tar.gz"
      sha256 "64a8da5ce8e3425b0eef397d3b3f2f0c2c1f8496bc0ffb82dad74df30004c6e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "512b790f7b8d025d279d955c0e09ca2900a3558274e1d33a8af15a71d29495f1"
    end
    on_intel do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48420f97fe6a77eb23452a44f239f105f5b8d4096f7b1c7088ad9918415458f0"
    end
  end

  def install
    bin.install "skillx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillx --version")
  end
end
