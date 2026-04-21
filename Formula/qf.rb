class Qf < Formula
  desc "CLI for uploading test results to Qualflare"
  homepage "https://github.com/Qualflare/qualflare-cli"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.0/qf_0.1.0_darwin_arm64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_AFTER_RELEASE"
    end
    on_intel do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.0/qf_0.1.0_darwin_amd64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_AFTER_RELEASE"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.0/qf_0.1.0_linux_arm64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_AFTER_RELEASE"
    end
    on_intel do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.0/qf_0.1.0_linux_amd64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_AFTER_RELEASE"
    end
  end

  def install
    bin.install "qf"
  end

  test do
    system bin/"qf", "version"
  end
end
