cask "sluice" do
  version "1.0.0"
  sha256 "f0a08e209505a510aded7b911df85f13301a4a4fc311d12535abe97fe2cf7184"

  url "https://github.com/vikng-dev/sluice/releases/download/v#{version}/Sluice-v#{version}-macos.zip"
  name "Sluice"
  desc "Menu bar app that pools AI coding subscriptions behind one local address"
  homepage "https://github.com/vikng-dev/sluice"

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
