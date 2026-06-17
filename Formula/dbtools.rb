class Dbtools < Formula
  desc "A command-line tool for managing databases and performing various database operations."
  homepage "https://github.com/quang2002/dbtools"

  if Hardware::CPU.arm?
    url "https://github.com/quang2002/dbtools/releases/download/v1.0.0/dbtools-osx-arm64.tar.gz"
    sha256 "213f21805163cee33f2fd4c959e4d35b825d5f375b58d9db913ffbb35c9898a1"
  end

  version "1.0.0"

  def install
    libexec.install Dir["*"]
    
    (bin/"dbtools").write <<~EOS
        #!/bin/bash
        exec dotnet "#{libexec}/DBTools.dll" "$@"
    EOS
  end

  test do
    system "#{bin}/dbtools", "--version"
  end
end