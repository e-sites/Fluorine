Pod::Spec.new do |s|

  s.name         = "Fluorine"
  s.version      = "3.0.1"
  s.author       = { "Bas van Kuijck" => "bas@e-sites.nl" }
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.homepage     = "http://www.e-sites.nl"
  s.summary      = "A small UIView helper to create simple linear gradients"
  s.source       = { :git => "https://github.com/e-sites/Fluorine.git", :tag => "#{s.version}" }
  s.source_files = "Sources/**/*.*"
  s.platform     = :ios, '8.0'
  s.requires_arc = true
end
