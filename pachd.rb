require "formula"
require "language/go"
require 'erb'

class Pachd < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.3"
  url "https://github.com/acohen4/pach-suite/blob/master/pach-suite"
  sha256 "12efc4c18daaa283dbd6e334386496a308df2d19b3131e9b8d21e26908b1482e"

  depends_on "postgresql"
  depends_on "etcd"

  def install
    bin.install bin/"pach-suite"
  end

  def suite_log_path
    var/"log/suite.log"
  end
  
  service do
    run bin/"pach-suite"
    log_path f.postgresql_log_path
    error_log_path f.postgresql_log_path    
  end 
end
