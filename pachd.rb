require "formula"
require "language/go"
require 'erb'

class Pachd < Formula
  homepage "https://github.com/acohen4/pach-suite"
  version "v2.4.3"
  url "https://raw.githubusercontent.com/acohen4/pach-suite/main/bin/pach/pach-suite"
  sha256 "66dcb7e8ded2b1f51b647381846f948d821c17951dd708c88801706e9270b12e"

  depends_on "postgresql"
  depends_on "etcd"

  def install
    bin.install "pach-suite" => "pachd"
  end

  def suite_log_path
    var/"log/suite.log"
  end
  
  service do
    run bin/"pachd"
    log_path f.suite_log_path
    error_log_path f.suite_log_path
  end 
end
