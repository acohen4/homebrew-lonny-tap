require "formula"

class Pachd < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.3"
  url "https://github.com/acohen4/pach-suite/blob/master/pach-suite"
  sha256 "12efc4c18daaa283dbd6e334386496a308df2d19b3131e9b8d21e26908b1482e"

  depends_on "postgresql"
  depends_on "etcd"

  def install
    bin.install "pach-suite"
  end

  service do
    run bin/"pach-suite"
    log_path "/tmp/local.job.out"
    error_log_path "/tmp/local.job.err"
  end 

  test do
    system "#{bin}/pachctl version"
  end

end
