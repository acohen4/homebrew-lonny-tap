require "formula"
require "language/go"
require 'erb'

class Pachd < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.3"
  url "https://github.com/acohen4/pach-suite/blob/master/pach-suite?raw=true"
  sha256 "1c60d4118fc975d83bc6ca5718c08fae592113d33636ae991ce412c687684a74"

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
