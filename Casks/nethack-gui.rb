cask "nethack-gui" do
  version "3.7.0"
  sha256 "c54b41f069aeda3e49d9b4f5371d94c1c6589759217f044d958eafd6b68098e2"

  # Replace with the public URL to your DMG file
  url "https://github.com/abcbarryn/NetHack/releases/download/NetHack-3.7.0/NetHack.dmg"
  name "NetHack GUI"
  desc "Dungeon exploration game with graphical interface"
  homepage "https://github.com/abcbarryn/NetHack/tree/NetHack-3.7"
  
  # Requirement checks
  depends_on macos: ">= :big_sur"
  #depends_on arch: :arm64
  
  # This identifies the .app inside your DMG to move to /Applications
  app "NetHack.app"
  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/NetHack.app"],
                   sudo: false
  end
end
