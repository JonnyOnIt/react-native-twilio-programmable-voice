require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNTwilioVoice"
  s.version      = package['version']
  s.summary      = package['description']
  s.authors      = package['author']

  s.homepage     = package['homepage']
  s.license      = package['license']
  s.platform     = :ios, "9.0"

  s.source = {:path => "./RNTwilioVoice"}
  s.source_files = [ "ios/RNTwilioVoice/*.h", "ios/RNTwilioVoice/*.m"]

  s.dependency 'React'
  s.dependency 'TwilioVoice', '~> 4.3'
  # s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/TwilioVoice' }
  # s.frameworks   = 'TwilioVoice'
end