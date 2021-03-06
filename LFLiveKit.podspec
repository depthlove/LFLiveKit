
Pod::Spec.new do |s|

  s.name         = "LFLiveKit"
  s.version      = "1.1"
  s.summary      = "objectc ios Live. LFLiveKit."
  s.homepage     = "https://github.com/chenliming777"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "chenliming" => "chenliming777@qq.com" }
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/chenliming777/LFLiveKit", :tag => "#{s.version}" }
  s.source_files  = "LFLiveKit/**/*.{h,m}"
  s.public_header_files = "LFLiveKit/**/*.h"

  s.frameworks = "VideoToolbox", "AudioToolbox","AVFoundation","Foundation","UIKit"
  s.library   = "z"

  s.requires_arc = true

  s.dependency "CocoaAsyncSocket", "~> 7.4.1"
  s.dependency "GPUImage"
  s.dependency "librtmp-iOS", "~> 1.1.0"

end
