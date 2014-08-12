#
# Be sure to run `pod lib lint COBColorControl.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "COBColorControl"
  s.version          = "0.1.0"
  s.summary          = "A GPU accelerated color picker"
  s.homepage         = "https://github.com/programmingthomas/COBColorControl"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Programming Thomas" => "programmingthomas@gmail.com" }
  s.source           = { :git => "https://github.com/programmingthomas/COBColorControl.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
end
