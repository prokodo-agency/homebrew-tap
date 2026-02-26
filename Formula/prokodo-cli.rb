class ProkodoCli < Formula
  desc "prokodo developer CLI — verify, inspect and manage your prokodo services"
  homepage "https://prokodo.com"
  url "https://github.com/prokodo-agency/cli/releases/download/v0.1.14/prokodo-cli-0.1.14.tgz"
  sha256 "bb9edcbb78aa2b60463fa5a7a43aa1f7145d49f1dfb9498d83abd6ea1dde4b61" # replaced automatically by update-homebrew CI job on every release
  license "MIT"
  version "0.1.14"

  depends_on "node"

  def install
    bin.install "dist/cli.js" => "prokodo"
  end

  test do
    system "#{bin}/prokodo", "--version"
  end
end
