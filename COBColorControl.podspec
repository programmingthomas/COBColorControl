Pod::Spec.new do |s|
  s.name             = "COBColorControl"
  s.version          = "0.1.1"
  s.summary          = "A GPU accelerated color picker"
  s.homepage         = "https://github.com/programmingthomas/COBColorControl"
  s.license          = 'MIT'
  s.author           = { "Programming Thomas" => "programmingthomas@gmail.com" }
  s.source           = { :git => "https://github.com/programmingthomas/COBColorControl.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
end
