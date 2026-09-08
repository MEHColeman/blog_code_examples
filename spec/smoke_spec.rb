# Smoke test: every Ruby file outside spec/ parses. `ruby -c` reads a file
# without running it and fails on a syntax error, so a broken file is caught
# here before any real test could load it.
require "open3"

RSpec.describe "the Ruby sources" do
  root = File.expand_path("..", __dir__)
  files = Dir.glob("**/*.rb", base: root)
             .reject { |f| f.start_with?("spec/", "vendor/", "tmp/") }
             .sort

  it "has at least one Ruby file outside spec/" do
    expect(files).not_to be_empty
  end

  files.each do |file|
    it "parses #{file}" do
      out, status = Open3.capture2e("ruby", "-c", File.join(root, file))
      expect(status.success?).to be(true), out
    end
  end
end
