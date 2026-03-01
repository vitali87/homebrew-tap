class CodeGraphRag < Formula
  include Language::Python::Virtualenv

  desc "Knowledge graph RAG for multi-language codebase analysis"
  homepage "https://github.com/vitali87/code-graph-rag"
  url "https://files.pythonhosted.org/packages/69/a8/66a545bf953df65feb8888cb9dc39349e1c92c91cff6b4c5f4949420f6e6/code_graph_rag-0.0.100.tar.gz"
  sha256 "79701be2f395befce01a85f288ce22ef6ecd2ce47598e52e5444040b73f8c1b2"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/cgr --help")
  end
end
