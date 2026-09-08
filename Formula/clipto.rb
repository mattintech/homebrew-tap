class Clipto < Formula
  include Language::Python::Virtualenv

  desc "Instant clipboard, screenshot, and file bridge from browser to terminal"
  homepage "https://github.com/mattintech/clipto"
  url "https://github.com/mattintech/clipto/releases/download/v0.3.2/clipto-0.3.2.tar.gz"
  sha256 "867adeeac99d0df839be1c33cad99a05d095ed240833d1c46285041087d0c3a3"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Instant clipboard", shell_output("#{bin}/clipto --help")
  end
end
