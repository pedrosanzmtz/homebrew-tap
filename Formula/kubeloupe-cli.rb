class KubeloupeCli < Formula
  desc "Command-line companion of the kubeloupe Kubernetes IDE"
  homepage "https://github.com/pedrosanzmtz/kubeloupe"
  version "0.1.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/pedrosanzmtz/kubeloupe/releases/download/v0.1.0/kubeloupe-cli-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/pedrosanzmtz/kubeloupe/releases/download/v0.1.0/kubeloupe-cli-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pedrosanzmtz/kubeloupe/releases/download/v0.1.0/kubeloupe-cli-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "kubeloupe"
    generate_completions_from_executable(bin/"kubeloupe", "completions")
  end

  test do
    assert_match "Usage", shell_output("#{bin}/kubeloupe --help")
    assert_match "compdef", shell_output("#{bin}/kubeloupe completions zsh")
  end
end
