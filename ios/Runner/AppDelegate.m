#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
#import "FlutterDamaiViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    FlutterDamaiViewController *flutterVC = [[FlutterDamaiViewController alloc] init];
//    [GeneratedPluginRegistrant registerWithRegistry:self];
    [NSClassFromString(@"GeneratedPluginRegistrant") performSelector:NSSelectorFromString(@"registerWithRegistry:") withObject:flutterVC];

    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:flutterVC];
    [nav setNavigationBarHidden:YES];
//    nav.interactivePopGestureRecognizer.delegate = self;
    
    [nav.navigationBar setBarTintColor:[UIColor greenColor]];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return [super application:application didFinishLaunchingWithOptions:launchOptions];

}

#pragma mark - UIGestureRecognizerDelegate
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    return TRUE;
}
@end
