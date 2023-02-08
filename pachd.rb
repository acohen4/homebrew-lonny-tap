require "formula"

class Pachd < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.3"
  url "https://github.com/acohen4/homebrew-lonny-tap"
    
  def install
    #bin.install buildpath/"pachd"
  end

  service do
    run ["echo hello", "echo hey"]
  end 

  test do
    system "#{bin}/pachctl version"
  end

end
