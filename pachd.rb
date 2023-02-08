require "formula"

class Pachd < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.3"
  url "https://github.com/acohen4/pach-suite/blob/master/pach-suite"
  sha256 "c92c6e5ab133aa12a34b0ac929fede7d89af198ad2572c9a4229d757ff574c2e"

  depends_on "postgresql"
  depends_on "etcd"

  def install
    bin.install "pach-suite"
  end

  service do
    run opt_bin/"pach-suite"
  end 

  test do
    system "#{bin}/pachctl version"
  end

end
