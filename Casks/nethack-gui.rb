cask "nethack-gui" do
  version "3.7.0"
  sha256 "5ac0aaa68e08d6686d5cb6bec12122a4e508a5f9f57a7a6bd731d5207a38a697"

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
