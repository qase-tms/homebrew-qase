class Qli < Formula
  desc "Qli is qase command line utility"
  homepage "https://github.com/qase-tms/qasectl"
  url "https://github.com/qase-tms/qasectl/releases/download/v0.1.4/qli-v0.1.4-Linux-amd64.zip"
  sha256 "36e35b7cb201353de1b85ef440a945d7b7ba6c3292a68df8c08160669a389e46"
  version "0.1.4"
  license "Apache License 2.0"

  def install
    bin.install "qli"
  end

  test do
    system "#{bin}/qli", "version"
  end
end