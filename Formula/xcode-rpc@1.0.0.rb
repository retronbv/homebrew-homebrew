class XcodeRpc < Formula
  desc "Discord Rich Presence client for Xcode"
  homepage "https://github.com/retronbv/xcode-rpc"
  url "https://github.com/retronbv/xcode-rpc/releases/latest/download/xcode-rpc.tar.gz"
  sha256 "4882855754cd9138c19201d2f33dbdeff40e660352834590ac30332f04938fb5"
  version "1.0.0"

  def install
    bin.install "xcode-rpc"
  end

  service do
    run opt_bin/"xcode-rpc"
    keep_alive true
    working_dar var/"xcode-rpc"
    error_log_path var/"xcode-rpc/discord-rpc.log"
  end
end
