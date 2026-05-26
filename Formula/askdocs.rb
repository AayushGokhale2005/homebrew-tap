class Askdocs < Formula
  desc "Terminal code editor with an online-docs AI tutor"
  homepage "https://github.com/AayushGokhale2005/askdocs"
  url "https://github.com/AayushGokhale2005/askdocs/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "831d3595ce433e58ec03eeea8536d2812afce5628918caf8f57782e445888504"
  license "MIT"
  head "https://github.com/AayushGokhale2005/askdocs.git", branch: "main"

  depends_on "cmake" => :build

  def install
    rm_r("build") if buildpath.join("build").exist?
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    assert_equal "0.2.0", shell_output("#{bin}/askdocs --version").strip
  end
end
