class Spright < Formula
  desc "An advanced sprite sheet packer and sprite annotator"
  homepage "https://github.com/houmain/spright"
  head "https://github.com/houmain/spright.git", branch: "main"
  license "GPL-3.0-only"

  depends_on "cmake" => :build

  def install
    system "cmake", "-B", "build", std_cmake_args
    system "cmake", "--build", "build", "-j", "4"
    system "cmake", "--install", "build"
  end

  test do
    system "touch", "#{bin}/spright.conf"
    system "#{bin}/spright"
  end
end
