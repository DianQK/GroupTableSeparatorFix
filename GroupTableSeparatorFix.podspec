Pod::Spec.new do |s|
 s.name = "GroupTableSeparatorFix"
 s.version = "0.1.0"
 s.summary = 'Remove your first and last separator line on grouped tableview.'
 s.homepage = "https://github.com/DianQK/GroupTableSeparatorFix"
 s.license = 'MIT'
 s.author = {'DianQK' => 'DianQK'}
 s.source = { :git => 'https://github.com/DianQK/GroupTableSeparatorFix.git', :tag => s.version.to_s }
 s.platform = :ios, '8.0'
 s.source_files = 'GroupTableSeparatorFix/GroupTableSeparatorFix.swift'
 s.framework = 'UIKit'
end
