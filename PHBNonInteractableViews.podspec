#
#  Be sure to run `pod spec lint PHBNonInteractableViews.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "PHBNonInteractableViews"
  spec.version      = "1.0.0"
  spec.summary      = "UI*View subclasses that override hitTest to pass interactions through to their parent views"
  spec.description  = <<-DESC
  We can use isUserInteractionEnabled to allow touches on a view to pass through to its parent.
  However, this has the inadvertant side-effect of disabling touches for all children of that view.
  If we need our view to pass touches on itself through to its parent, while still allowing touches on its children to be registered by the children,
  the correct solution is to subclass our view and override hitTest.
  This library provides such subclasses of common UIView-types.
                   DESC
  spec.homepage     = "https://github.com/phlippieb/PHBNonInteractableViews"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Phlippie Bosman" => "phlippie.bosman@gmail.com" }

  spec.platform     = :ios, "9.0"

  spec.source       = { :git => "https://github.com/phlippieb/PHBNonInteractableViews.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

#   spec.source_files  = "Classes", "Classes/**/*.{h,m}"
#   spec.exclude_files = "Classes/Exclude"
  # spec.public_header_files = "Classes/**/*.h"
  spec.swift_version = "4.0"
  spec.source_files = "PHBNonInteractableViews"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
