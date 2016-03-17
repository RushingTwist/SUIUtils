
Pod::Spec.new do |s|

s.name         = 'SUIUtils'
s.version      = '0.0.2'
s.platform     = :ios, '7.0'
s.summary      = 'A collection of convenient classes for iOS.'

s.license      = 'MIT'
s.homepage     = 'https://github.com/randomprocess/SUIUtils'
s.author       = { 'RandomSuio' => 'randomprocess@qq.com' }
s.source       = { :git => 'https://github.com/randomprocess/SUIUtils.git',
:tag => s.version.to_s }

s.requires_arc = true

s.public_header_files = 'SUIUtils/**/*.h'
s.source_files  = 'SUIUtils/SUIUtils.h'

s.frameworks = 'UIKit', 'Foundation', 'CoreGraphics', 'QuartzCore'

s.subspec 'Tool' do |ss|
ss.source_files = 'SUIUtils/Tool/*.{h,m}'
end

s.subspec 'Foundation' do |ss|
ss.dependency 'SUIUtils/Tool'
ss.source_files = 'SUIUtils/Foundation/*.{h,m}'
end

s.subspec 'UIKit' do |ss|
ss.dependency 'SUIUtils/Foundation'
ss.source_files = 'SUIUtils/UIKit/*.{h,m}'
end

s.subspec 'Helper' do |ss|
ss.dependency 'SUIUtils/UIKit'
ss.dependency 'UITableView+FDTemplateLayoutCell', '~> 1.4'
ss.source_files = 'SUIUtils/Helper/*.{h,m}'
end

end
