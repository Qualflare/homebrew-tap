class Qf < Formula
  desc "CLI for uploading test results to Qualflare"
  homepage "https://github.com/Qualflare/qualflare-cli"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.5/qf_0.1.5_darwin_arm64.tar.gz"
      sha256 "649138f9f39e871f643db57d6d5ef64f14916a7f4e75e18598958ac6ccca763d"
    end
    on_intel do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.5/qf_0.1.5_darwin_amd64.tar.gz"
      sha256 "f3dd9441e563bf789b0300cc3c5ae605c94be78c2c0606903dafff067580efd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.5/qf_0.1.5_linux_arm64.tar.gz"
      sha256 "274d7705af4dca559d3318e4a689b40e77c9dbd2f7731e7800ee81613c56adf7"
    end
    on_intel do
      url "https://github.com/Qualflare/qualflare-cli/releases/download/v0.1.5/qf_0.1.5_linux_amd64.tar.gz"
      sha256 "4c5abcdf90f102fbd40a81a21b577dcdaa9c824eda119c1c9869a989be7043fe"
    end
  end

  def install
    bin.install "qf"
  end

  test do
    system bin/"qf", "version"
  end
end
