
class Deck < Formula
  desc "RollDev is a CLI utility for working with docker-compose environments"
  homepage "https://getroll.dev"
  version "0.1.0-beta1"
  url "https://github.com/dockergiant/deck/archive/0.1.0-beta1.tar.gz"
  sha256 "d2a172e8ca880db2b94e4931bf31ac8fe98e38392bf43cbdb156b76626b43448"
  head "https://github.com/dockergiant/roll.git", :branch => "develop"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      Deck manages a set of global services on the docker host machine. You
      will need to have Docker installed and docker-compose available in your
      local $PATH configuration prior to starting Deck.

      To start deck simply run:

        deck svc up

      This command will automatically run "deck install" to setup a trusted
      local root certificate and sign an SSL certificate for use by services
      managed by deck via the "deck sign-certificate deck.test" command.

      To print a complete list of available commands simply run "deck" without
      any arguments.

      Documentation is available at: https://docs.getroll.dev
    EOS
  end
end
