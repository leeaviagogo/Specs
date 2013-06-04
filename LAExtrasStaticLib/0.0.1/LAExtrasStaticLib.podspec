Pod::Spec.new do |s|
  s.prefix_header_file = 'Project/StaticLib/ExtrasStaticLib-Prefix.pch'
  s.name         = "LAExtrasStaticLib"
  s.version      = "0.0.1"
  s.summary      = "Useful iOS utility functions developed over the years."
  s.homepage     = "https://bitbucket.org/larromba/laextrasstaticlib"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Lee Arromba" => "larromba@gmail.com" }
  s.source       = { :git => "https://larromba@bitbucket.org/larromba/laextrasstaticlib.git", :tag => "v#{s.version}" }
  s.platform     = :ios, '4.3'
  s.ios.deployment_target = '4.3'
  s.subspec 'arc' do |sp|
    sp.source_files = 'Classes/ios/**/*.{h,m}'
    sp.requires_arc = true
  end
  s.dependency 'LAUtilitiesStaticLib'
  s.dependency 'TestFlightSDK'
  s.dependency 'GoogleAnalytics-iOS-SDK'
  s.dependency 'Reachability'
  s.dependency 'hpple'
end
