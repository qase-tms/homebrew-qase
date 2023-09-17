class Qli < Formula
  desc "Qli is qase command line utility"
  homepage "https://github.com/qase-tms/qasectl"
  version "0.1.4"
  license "Apache License 2.0"

  if Hardware::CPU.arm?
    url "https://github.com/qase-tms/qasectl/releases/download/v#{version}/qli-v#{version}-macOS-arm64.zip"
    sha256 "e18fbcb42772de965498839b859b46a58f7505c3ddd5aa2a9218ddda1774495c"
  else
    url "https://github.com/qase-tms/qasectl/releases/download/v#{version}/qli-v#{version}-macOS-amd64.zip"
    sha256 "4765ba71a26e3028e1ccf77a6f8054cc18fc122b2aadb52c49f585c95dc5fb5a"
  end

  def install
    if Hardware::CPU.arm?
      system "mv", "qli-v#{version}-macOS-arm64", "qli"
    else
      system "mv", "qli-v#{version}-macOS-amd64", "qli"
    end
    bin.install "qli"
  end

  test do
    system "#{bin}/qli", "version"
  end
end