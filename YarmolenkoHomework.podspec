
Pod::Spec.new do |spec|
  spec.name         = "YarmolenkoHomework"
  spec.version      = "0.0.9"
  spec.summary      = "Framework homework for OTUS by Yarmolenko Daniil"

  spec.description  = <<-DESC
	This is project for OTUS homework
                   DESC

  spec.homepage     = "https://github.com/DaniilYarmolenko/YarmolenkoHomework"
  spec.license      = { :type => "MIT" }
  spec.author             = { "Ярмоленко Даниил" => "yarmolenkoDaniil@gmail.com" }

  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/DaniilYarmolenko/YarmolenkoHomework.git", :tag => "#{spec.version}" }
  spec.dependency 'OtusHomework'
  
  spec.source_files  = "YarmolenkoHomework/**/*{h,m,swift}"

  spec.public_header_files = "YarmolenkoHomework/**/*.{h}"

  spec.swift_version = "5.0" 
end