class Qf < Formula
  desc "CLI for uploading test results to Qualflare"
  homepage "https://github.com/Qualflare/qualflare-cli"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.6/qf_0.1.6_darwin_arm64.tar.gz"
      sha256 "4f7cb065291783ceff6c0ea1d5e17cc786c36e3a1704fdf23ee46aab822932b3"
    end
    on_intel do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.6/qf_0.1.6_darwin_amd64.tar.gz"
      sha256 "53dce5fc4a46f119b060587063cadce53d92208db14b1ecab378c74c1179b62a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.6/qf_0.1.6_linux_arm64.tar.gz"
      sha256 "13eb33449ac7b4f7252070bb529e2b38018795e7bdad364227d098b11a3b2b18"
    end
    on_intel do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.6/qf_0.1.6_linux_amd64.tar.gz"
      sha256 "f457c3a83b7c7ea836438c41a8804d3cac0bd4109477cba202c5a347226a834a"
    end
  end

  def install
    bin.install "qf"
  end

  test do
    system bin/"qf", "version"
  end
end
