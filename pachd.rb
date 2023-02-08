require "formula"

class Pachd < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.3"
  url "https://github.com/acohen4/pach-suite/blob/master/pach-suite.sh"

  depends_on "postgresql"
  depends_on "etcd"

  def install
    bin.install "pach-suite.sh" => "suite"
  end

  service do
    run opt_bin/"suite"
  end 

  test do
    system "#{bin}/pachctl version"
  end

end
