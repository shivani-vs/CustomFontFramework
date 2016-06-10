Pod::Spec.new do |s|
  s.name         = "CustomFontFramework"
  s.version      = "0.0.1"
  s.summary      = "Use Custom Font Framework"
  s.homepage     = "https://github.com/shivanivs/CustomFontFramework"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "shivanivs" => "shivani.arora@vectoscalar.com" }
  s.source       = { :git => "https://github.com/shivanivs/CustomFontFramework.git", :tag => s.version.to_s }
  s.source_files = "CustomFont/*.{h,m}"
  s.resources    = 'CustomFont.bundle'
  s.exclude_files = "Classes/Exclude"
end
