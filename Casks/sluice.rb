cask "sluice" do
  version "1.2.2"
  sha256 "ea78dd39a67ccdfcdb81f9031079485af0b5b103fab28b658f803807b0fbeac3"

  url "https://github.com/yanwolfe/sluice/releases/download/v#{version}/Sluice-v#{version}-macos.zip"
  name "Sluice"
  desc "Menu bar app that pools AI coding subscriptions behind one local address"
  homepage "https://github.com/yanwolfe/sluice"

  depends_on macos: :sonoma

  app "Sluice.app"
  binary "#{appdir}/Sluice.app/Contents/MacOS/Sluice", target: "sluice"

  # Nothing here stops or starts Sluice. A running copy follows its own app: replaced,
  # it restarts into the new one; removed, it quits. Open it once after the first install.
  zap trash: [
    "~/.config/sluice",
    "~/Library/Application Support/Sluice",
  ]
end
