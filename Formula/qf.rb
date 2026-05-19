class Qf < Formula
  desc "CLI for uploading test results to Qualflare"
  homepage "https://github.com/Qualflare/qualflare-cli"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.8/qf_0.1.8_darwin_arm64.tar.gz"
      sha256 "60a9dae4e0c5fc5f46282305bb46f1a7ff60509aecf6279bb2a1de33d9cc5e79"
    end
    on_intel do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.8/qf_0.1.8_darwin_amd64.tar.gz"
      sha256 "d8a4f038d316dff64ee83c286ab15d7cfa7868f43f66894995eba154285c4fe0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.8/qf_0.1.8_linux_arm64.tar.gz"
      sha256 "db94fb040dbe2d1689171f30ae5232a1912c17951df213ec96b1df547bb671dd"
    end
    on_intel do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.8/qf_0.1.8_linux_amd64.tar.gz"
      sha256 "9c7243a9b0d44e8c366fe437527a248e4bf7d4b341d15f08b899ff056bc9eaa7"
    end
  end

  def install
    bin.install "qf"
  end

  test do
    system bin/"qf", "version"
  end
end
