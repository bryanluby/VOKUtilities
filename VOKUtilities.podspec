Pod::Spec.new do |s|
  s.name             = "VOKUtilities"
  s.version          = "0.1.1"
  s.summary          = "Assorted category and utility classes for iOS."
  s.homepage         = "https://github.com/vokalinteractive/VOKUtilities"
  s.license          = 'MIT'
  s.author           = { "VOKAL Interactive" => "hello@vokalinteractive.com" }
  s.source           = { :git => "https://github.com/vokalinteractive/VOKUtilities.git", :tag => s.version.to_s }

  s.platform         = :ios, '7.0'
  s.requires_arc     = true

  s.subspec 'UIColor+VOKAL' do |ss|
    ss.source_files = 'Pod/UIColor+VOKAL/*.{h,m}'
  end

  s.subspec 'NSCalendar+VOKAL' do |ss|
    ss.source_files = 'Pod/NSCalendar+VOKAL/*.{h,m}'
  end
end