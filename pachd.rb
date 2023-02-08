require "formula"

class Pachd < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.3"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.5/pachctl_2.4.5_darwin_amd64.zip"
  sha256 "64350fc7a1ac1afea2fd296e252ff16e0fe1c51a7a12fbdf6a8da1f685a39f59"
    
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
