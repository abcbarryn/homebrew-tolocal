cask "nethack-gui" do
  version "3.7.0"
  sha256 "366738949f2a4cfd6e66cffb11f734c5261e9c6d33ccd34b66690970741a1d08"

  # Replace with the public URL to your DMG file
  url "https://github.com/abcbarryn/NetHack/releases/download/NetHack-3.7.0/NetHack.dmg"
  name "NetHack GUI"
  desc "Dungeon exploration game with graphical interface"
  homepage "https://github.com/abcbarryn/NetHack/tree/NetHack-3.7"
  
  # Requirement checks
  depends_on macos: ">= :tahoe"
  #depends_on arch: :arm64
  
  # This identifies the .app inside your DMG to move to /Applications
  app "NetHack.app"
  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/NetHack.app"],
                   sudo: false
  end
end
