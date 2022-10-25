
class Warden < Formula
  desc "Warden is a CLI utility for working with docker-compose environments"
  homepage "https://warden.dev"
  version "0.13.3"
  url "https://github.com/shakh-rezolve/warden/archive/0.13.3.tar.gz"
  sha256 "0796eb7c58e48ebc5c5b4b9053eb16367b5b041b8f827a4f21e4db2385a4d619"
  head "https://github.com/shakh-rezolve/warden.git", :branch => "0.13.0-tag"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      Warden manages a set of global services on the docker host machine. You
      will need to have Docker installed and docker-compose available in your
      local $PATH configuration prior to starting Warden.

      To start warden simply run:

        warden svc up

      This command will automatically run "warden install" to setup a trusted
      local root certificate and sign an SSL certificate for use by services
      managed by warden via the "warden sign-certificate warden.test" command.

      To print a complete list of available commands simply run "warden" without
      any arguments.

      Documentation is available at: https://docs.warden.dev
    EOS
  end
end
