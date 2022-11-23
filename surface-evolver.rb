cask "surface-evolver" do
  version "2.70"
  sha256 :no_check

  url "https://facstaff.susqu.edu/brakke/evolver/downloads/Evolver270-OSX.tar.gz"
  name "surface-evolver"
  desc "Interactive program for modeling liquid surfaces"
  homepage "https://facstaff.susqu.edu/brakke/evolver/evolver.html"

  auto_updates false
  depends_on macos: ">= :el_capitan"

  binary "Evolver270-OSX/evolver"
  manpage "Evolver270-OSX/evolver.1"
  artifact "Evolver270-OSX/fe", target: "#{HOMEBREW_PREFIX}/share/surface-evolver"

  uninstall delete: [
    "#{HOMEBREW_PREFIX}/bin/evolver",
    "#{HOMEBREW_PREFIX}/share/man/man.1/evolver.1",
  ],
             rmdir: "#{HOMEBREW_PREFIX}/share/surface-evolver"

  caveats <<~EOF
    The ``fe'' and ``cmd'' files that come with Surface Evolver are located in #{HOMEBREW_PREFIX}/share/surface-evolver. Surface Evolver can search for files in the current directory or the path specified by the environment variable EVOLVERPATH. So, for example, if you want to load a sample cmd file from Surface Evolver, you can set the environment variable beforehand or run like the following:
      EVOLVERPATH=#{HOMEBREW_PREFIX}/share/surface-evolver evolver
  EOF
end
