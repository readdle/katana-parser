Pod::Spec.new do |s|

  s.name         = "KatanaParser"
  s.version      = "0.0.1"
  s.summary      = "Katana - A pure-C CSS parser."
  s.description  = <<-DESC
                  Katana is an implementation of the CSS (Cascading Style Sheet) parsing algorithm implemented as a pure C library with no outside dependencies.
                   DESC

  s.homepage     = "https://github.com/readdle/katana-parser"
  s.license      = { :type => 'MIT' }
  s.author       = { "QFish" => "qfish.cn@gmail.com" }
  s.source       = { :git => "git@github.com:readdle/katana-parser.git", :commit => "" } 
  s.platforms    = { :ios => "10.3", :osx => "10.12" }

  s.source_files = "src/**/*.{h,c}"
  s.public_header_files = "src/katana.h"

  s.xcconfig = {
    "SWIFT_VERSION" => "4.2"
  }
  
  s.static_framework = true
  s.library = 'c'
  s.requires_arc = true

end
