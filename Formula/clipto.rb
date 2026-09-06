class Clipto < Formula
  include Language::Python::Virtualenv

  desc "Instant clipboard, screenshot, and file bridge from browser to terminal"
  homepage "https://github.com/mattintech/clipto"
  url "https://github.com/mattintech/clipto/releases/download/v0.2.0/clipto-0.2.0.tar.gz"
  sha256 "164f4981210f8083400de1260616dfe4f20c8764f5bdeba6efcae15dbb9d1585"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Instant clipboard", shell_output("#{bin}/clipto --help")
  end
end
