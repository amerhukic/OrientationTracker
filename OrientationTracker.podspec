Pod::Spec.new do |s|
  s.name             = 'OrientationTracker'
  s.version          = '1.0.0'
  s.summary          = 'Track orientation changes even when the device is orientation-locked'

  s.description      = <<-DESC
  OrientationTracker is a library for tracking device orientation changes even for devices with orientation-lock turned on. You can subscribe to orientation change notifications and react accordingly. Using the affineTransform property you can rotate the views to follow the orientation change.
                       DESC

  s.homepage         = 'https://github.com/amerhukic/OrientationTracker'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Amer Hukić' => 'hukicamer@gmail.com' }
  s.source           = { :git => 'https://github.com/amerhukic/OrientationTracker.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/hukicamer'

  s.ios.deployment_target = '8.0'
  s.source_files = 'OrientationTracker/Classes/**/*'
  s.frameworks = 'UIKit', 'CoreMotion'
  s.swift_version = '4.2'
end
