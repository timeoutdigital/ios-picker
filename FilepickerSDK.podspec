Pod::Spec.new do |s|
  s.name         = "FilepickerSDK"
  s.version      = "2.7.0"
  s.summary      = "FPPicker.framework is the Filepicker.io iOS famework."
  s.homepage     = "https://developers.filepicker.io/docs/ios/"
  s.screenshots  = "https://github.com/Filepicker/ios/raw/master/Documenation%20Files/filepicker_ios.png"
  s.license      = { :type => 'MIT', :file => 'license.txt' }

  s.author       = { "Liyan Chang" => "liyan@filepicker.io" }

  s.source       = {
    :git => 'https://github.com/escherba/ios-picker.git',
    :tag => '2.7.0'
  }

  s.platform     = :ios
  s.ios.deployment_target = '6.0'
  s.ios.prefix_header_file = 'FPPicker/FPPicker-Prefix.pch'
  #s.preserve_paths = 'library/FPPicker.framework'
  #s.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/FilepickerSDK/library"' }

  s.subspec 'core' do |sp|
    sp.resource_bundle = { 'FilepickerSDK' => [ 'FPPicker/Resources/images/*.png', 'FPPicker/Resources/Contents/*.plist', 'FPPicker/Resources/Contents/*.lproj' ] }
    sp.frameworks   = 'AssetsLibrary', 'QuartzCore', 'CoreGraphics', 'MobileCoreServices', 'Foundation', 'CoreFoundation', 'FPPicker'
    sp.source_files = 'FPPicker/*.{h,m}'
    sp.requires_arc = true
    #sp.dependency 'AFNetworking', '~> 2.2.1'
  end
  s.subspec 'no-arc' do |sp|
    sp.source_files = 'FPPicker/FPAFNetworking/*.{h,m}'
    sp.requires_arc = false
  end
  s.dependency 'LFJSONKit', '~> 1.6a'
end
