Pod::Spec.new do |s|
  
  s.name         = "Complex"
  s.version      = "1.0.0"
  s.summary      = "Swift Complex Number"
  s.description  = <<-DESC
                   A lightweight framework designed for representing and working with complex numbers for iOS, macOS, tvOS, and watchOS.
                   DESC
  
  s.homepage     = "https://github.com/SomeRandomiOSDev/Complex"
  s.license      = "MIT"
  s.author       = { "Joseph Newton" => "somerandomiosdev@gmail.com" }

  s.ios.deployment_target     = '8.0'
  s.macos.deployment_target   = '10.10'
  s.tvos.deployment_target    = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source            = { :git => "https://github.com/SomeRandomiOSDev/Complex.git", :tag => s.version.to_s }
  s.source_files      = 'Sources/**/*.swift'
  s.frameworks        = 'Foundation'
  s.swift_versions    = ['4.0', '4.2', '5.0']
  s.cocoapods_version = '>= 1.7.3'
  
end
