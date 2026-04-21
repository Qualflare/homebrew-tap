class Qf < Formula
  desc "CLI for uploading test results to Qualflare"
  homepage "https://github.com/Qualflare/qualflare-cli"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.4/qf_0.1.4_darwin_arm64.tar.gz"
      sha256 "3e3ff4eeae516491bcfb17fb7834f36226f6303dd42323d59543eaded1e0f5b8"
    end
    on_intel do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.4/qf_0.1.4_darwin_amd64.tar.gz"
      sha256 "67804fffb14b01ce83c3785580901f3abd61686036731302bb005e1e4501a1bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.4/qf_0.1.4_linux_arm64.tar.gz"
      sha256 "d6ec68a87d7fd1ba4f47158ecfa780a4d4bede65f8a50333dd75ae7eb8fdb3ab"
    end
    on_intel do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.4/qf_0.1.4_linux_amd64.tar.gz"
      sha256 "aab43b582b0d6edcbe0e173780351f2a5445fc3e232660eaad21b5f5430e4dad"
    end
  end

  def install
    bin.install "qf"
  end

  test do
    system bin/"qf", "version"
  end
end
