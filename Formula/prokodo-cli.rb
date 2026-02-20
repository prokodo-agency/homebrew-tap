class ProkodoCli < Formula
  desc "prokodo developer CLI — verify, inspect and manage your prokodo services"
  homepage "https://prokodo.com"
  url "https://github.com/prokodo-agency/cli/releases/download/v0.1.0/prokodo-cli-0.1.0.tgz"
  sha256 "" # replaced automatically by update-homebrew CI job on every release
  license "MIT"
  version "0.1.0"

  depends_on "node"

  def install
    bin.install "dist/cli.js" => "prokodo"
  end

  test do
    system "#{bin}/prokodo", "--version"
  end
end
