cask "studiolink-plugin" do
  version "21.03.2"
  sha256 "54c8e41112a27413afc4b37449474583c61319b7a43d1bf4380b5d4256db4a7c"
  conflicts_with cask: "studiolink-plugin-beta"
  livecheck do
    url "https://download.studio.link/releases/"
    regex(/v(\d+(?:\.\d+)+)-stable/i)
  end

  url "https://download.studio.link/releases/v#{version}-stable/macos_x86_64/signed/studio-link-plugin.zip", verified: "download.studio.link"
  name "Studiolink"
  desc "High quality Audio-over-IP Connections"
  homepage "https://studio-link.de/"

  audio_unit_plugin "StudioLink.component"
end
