class DBTools < Formula
  desc "A command-line tool for managing databases and performing various database operations."
  homepage "https://github.com/quang2002/dbtools"

  if Hardware::CPU.arm?
    url "https://github.com/quang2002/dbtools/releases/download/v1.0.0/dbtools-osx-arm64.tar.gz"
    sha256 "a2a28ef87d22304b08b5afd8c3b668ac7f6a6f6220846e4029c81ea28ed0f25b"
  end

  version "1.0.0"

  def install
    bin.install "dbtools"
  end

  test do
    system "#{bin}/dbtools", "--version"
  end
end