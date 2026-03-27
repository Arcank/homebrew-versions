cask "typinator92" do
  version "9.2"
  sha256 "2558efab1afa701b4760ebf83a5f97960603b08a6ce5a3bc68be0f386c79fd64"

  url "https://assets.ergonis.com/website/Typinator_f9de5b01b6.dmg",
      user_agent: :fake
  name "Typinator"
  desc "Tool to automate the insertion of frequently used text and graphics"
  homepage "https://www.ergonis.com/products/typinator/"

  livecheck do
    url "https://update.ergonis.com/vck/typinator.xml"
    strategy :xml do |xml|
      xml.elements["//Program_Info/Program_Version"]&.text&.strip
    end
  end

  app "Typinator.app"

  zap trash: [
    "~/Desktop/Typinator Tutorial.rtfd",
    "~/Library/Application Support/Typinator",
    "~/Library/Preferences/com.macility.typinator2.plist",
  ]
end
