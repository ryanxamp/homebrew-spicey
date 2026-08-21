cask "spicey" do
  version "0.1.0"
  sha256 "a50b9c31fc4078d0ff4490f0f7c59ec9f158d022e0c2a4ba00201f54ce65fa20"

  url "https://github.com/ryanxamp/Spicey/releases/download/v#{version}/Spicey.dmg"
  name "Spicey"
  desc "Minimal native SPICE viewer for Proxmox virt-viewer (.vv) files"
  homepage "https://github.com/ryanxamp/Spicey"

  depends_on macos: :ventura
  depends_on formula: "spice-gtk"

  app "Spicey.app"

  zap trash: [
    "~/Library/Preferences/com.spicey.app.plist",
  ]
end
