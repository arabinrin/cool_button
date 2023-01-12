#import "CoolButtonPlugin.h"
#if __has_include(<cool_button/cool_button-Swift.h>)
#import <cool_button/cool_button-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "cool_button-Swift.h"
#endif

@implementation CoolButtonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCoolButtonPlugin registerWithRegistrar:registrar];
}
@end
