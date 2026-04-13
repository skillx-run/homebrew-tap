class Skillx < Formula
  desc "npx for Agent Skills — fetch, scan, inject, run, clean in one command"
  homepage "https://skillx.run"
  license "Apache-2.0"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-aarch64-apple-darwin.tar.gz"
      sha256 "aaacbde1d178062d0955cd085fee4ab1f325d691553eee50b32dc2ba450d5ec1"
    end
    on_intel do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-x86_64-apple-darwin.tar.gz"
      sha256 "ed5bbf3b62e0071dbaee99f89828ce36c938206aac3b1ccbcbdefc41ad1c06d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a72c9eae7eb7e7e4d934832cc5edd1df75b59428062f0466c1ca15c458165206"
    end
    on_intel do
      url "https://github.com/skillx-run/skillx/releases/download/v#{version}/skillx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb6a0a6069ac790f43ec301145548fe6306bb05eaec3c4f6253df9ae0dc847c3"
    end
  end

  def install
    bin.install "skillx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillx --version")
  end
end
