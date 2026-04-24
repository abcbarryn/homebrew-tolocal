# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tolocal < Formula
  desc "A real time character set conversion filter."
  homepage "https://github.com/abcbarryn/tolocal"
  url "https://github.com/abcbarryn/tolocal/archive/refs/tags/0.1.1.tar.gz"
  sha256 "ce25f23bbd38b3726f53192816c96643dcf0c5e5427f9badc2661a9ebdbfaf16"
  license "GPL-2.0"

  # depends_on "cmake" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    # Copy your macOS-specific Makefile to the standard name
    cp "Makefile.macosx", "Makefile"

    # Now run make as usual
    system "make", "tolocal"
    
    # Install the results into Homebrew's paths
    bin.install "tolocal"
    man1.install "tolocal.1"
  end


  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test tolocal`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
