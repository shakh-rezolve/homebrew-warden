
class Warden < Formula
  desc "Warden is a CLI utility for working with docker-compose environments"
  homepage "https://warden.dev"
  version "0.14.1"
  url "https://github.com/shakh-rezolve/warden/archive/0.14.1.tar.gz"
  sha256 "7530554eb5049322a4ccd0e3cad0a9afc2a8e4223af2d307d5620730364d9cb0"
  head "https://github.com/shakh-rezolve/warden.git", :branch => "0.14.1-tag"

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
