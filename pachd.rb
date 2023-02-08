require "formula"

class Pachd < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.2"

  url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.2/pachd"
  sha256 "0320ef9f12efd4995d6e859b7ec5b0be2a54168dcede85ff07bc616525b66554"
    
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
