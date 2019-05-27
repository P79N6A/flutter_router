#import "FlutterRouterPlugin.h"

@implementation FlutterRouterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"flutter_router"
            binaryMessenger:[registrar messenger]];
  FlutterRouterPlugin* instance = [[FlutterRouterPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
      

      
    UINavigationController *rootNav = (UINavigationController*)[UIApplication sharedApplication].delegate.window.rootViewController;
      [rootNav pushViewController:[[NSClassFromString(@"NativeViewController") alloc] init] animated:YES];
      
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
