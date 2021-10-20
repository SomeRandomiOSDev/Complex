Pod::Spec.new do |s|
  
  s.name         = "Complex"
  s.version      = "1.2.1"
  s.summary      = "Swift Complex Number"
  s.description  = <<-DESC
                   A lightweight framework designed for representing and working with complex numbers for iOS, macOS, tvOS, and watchOS.
                   DESC
  
  s.homepage     = "https://github.com/SomeRandomiOSDev/Complex"
  s.license      = "MIT"
  s.author       = { "Joe Newton" => "somerandomiosdev@gmail.com" }
  s.source       = { :git => "https://github.com/SomeRandomiOSDev/Complex.git", :tag => s.version.to_s }

  s.ios.deployment_target     = '9.0'
  s.macos.deployment_target   = '10.10'
  s.tvos.deployment_target    = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files      = 'Sources/Complex/*.swift'
  s.swift_versions    = ['4.2', '5.0']
  s.cocoapods_version = '>= 1.7.3'

  s.test_spec 'Tests' do |ts|
    ts.ios.deployment_target     = '9.0'
    ts.macos.deployment_target   = '10.10'
    ts.tvos.deployment_target    = '9.0'
    ts.watchos.deployment_target = '2.0'

    ts.dependency     'Half', '~> 1.2'
    ts.source_files = 'Tests/ComplexTests/*Tests.swift',
                      'Tests/ComplexTests/TestingBase.swift'
  end
  
end
