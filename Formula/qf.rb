class Qf < Formula
  desc "CLI for uploading test results to Qualflare"
  homepage "https://github.com/Qualflare/qualflare-cli"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.7/qf_0.1.7_darwin_arm64.tar.gz"
      sha256 "3da1b07ec052a676dbebb16bcbb1f97640e60812f5bc1fb3576bf42a7634f13c"
    end
    on_intel do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.7/qf_0.1.7_darwin_amd64.tar.gz"
      sha256 "b036dbe10508bf2b5373f0b1518a3764fdd89bb70b3b5fed2c7636a945b2d5d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.7/qf_0.1.7_linux_arm64.tar.gz"
      sha256 "ae11ac5caf7f5c0c051e8dc794298b5290dbc41e1b11277dfd845bf76e869d7b"
    end
    on_intel do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.7/qf_0.1.7_linux_amd64.tar.gz"
      sha256 "76899d8db9118f45f3fa8e453a40036e40ca98aee14c71eb8ed29708d0c13458"
    end
  end

  def install
    bin.install "qf"
  end

  test do
    system bin/"qf", "version"
  end
end
