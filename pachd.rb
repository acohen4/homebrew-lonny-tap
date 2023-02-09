require "formula"
require "language/go"
require 'erb'

class Pachd < Formula
  homepage "https://github.com/acohen4/pach-suite"
  version "v2.4.3"
  url "https://raw.githubusercontent.com/acohen4/pach-suite/main/bin/pach/pach-suite"
  sha256 "04864c396b4c3d7822ff18cbf9c35ede359515ac6bf727bb8657231943091bfc"

  depends_on "postgresql"
  depends_on "etcd"

  def install
    bin.install "pach-suite" => "pachd"
  end
  
  service do
    run bin/"pachd"
  end 
end
