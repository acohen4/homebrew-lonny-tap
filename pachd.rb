require "formula"

class Pachd < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.3"
  url "https://github.com/pachyderm/pachyderm/blob/master/etc/reset.py"
  sha256 "c9ebb13a579708bcf236fa01ddcfb66b486a12ca0df523584ba5377d96c40a8b"
  
  def install
    bin.install buildpath/"pachd"
  end

  service do
    run ["echo hello", "echo hey"]
  end 

  test do
    system "#{bin}/pachctl version"
  end

end
