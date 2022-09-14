# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Keploy < Formula
  desc "No code API testing platform. Create unit tests and data mocks from API calls. "
  homepage "https://keploy.io"
  url "https://github.com/Pradhyuman-sharma/keploy/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "9593b463a5c6578626c6765e6a442c303b67c4cfe21db6a0e787d9bdf11b0ef7"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = "keploy/cmd/server"
    system "go", "build", "-o" , "keploy"   
    bin.install "keploy"
  end
end
