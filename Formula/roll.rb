
class Roll < Formula
  desc "RollDev is a CLI utility for working with docker-compose environments"
  homepage "https://getroll.dev"
  version "0.1.0-beta2"
  url "https://github.com/dockergiant/rolldev/archive/0.1.0-beta2.tar.gz"
  sha256 "0e2bca9b666738a64bb1e6a654bdd7f6ab49d43ec0e9d46df841c96e56848528"
  head "https://github.com/dockergiant/rolldev.git", :branch => "develop"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      RollDev manages a set of global services on the docker host machine. You
      will need to have Docker installed and docker-compose available in your
      local $PATH configuration prior to starting RollDev.

      To start roll simply run:

        roll svc up

      This command will automatically run "roll install" to setup a trusted
      local root certificate and sign an SSL certificate for use by services
      managed by roll via the "roll sign-certificate roll.test" command.

      To print a complete list of available commands simply run "roll" without
      any arguments.

      Documentation is available at: https://docs.getroll.dev
    EOS
  end
end
