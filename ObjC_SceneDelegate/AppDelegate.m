//
//  AppDelegate.m
//  ObjC_SceneDelegate
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

#pragma mark - UISceneSession lifecycle

/* This delegate is called on first launch or user action, meaning:
* 1) App was installed and launched for the first time.
* 2) Device had restarted and launched for the first time.
* 3) User action in creating a new multitasking window.
*/
- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    /* UISceneConfiguration Object Creation
    * initWithName :: Appears as a value for info.plist key "Configuration Name"
    * sessionRole :: There are two types of roles which relay to the system info about where the scene should be rendered.
    *                In most cases pass struct's `role` value from delegate.
                    [!] As it were from the source itself,
                     * // A session role which defines a typical interactive application on a device's main display
                     * UIKIT_EXTERN UISceneSessionRole const UIWindowSceneSessionRoleApplication API_AVAILABLE(ios(13.0));
                     * // A session role which defines an interface for a non-main external display
                     * UIKIT_EXTERN UISceneSessionRole const UIWindowSceneSessionRoleExternalDisplay API_AVAILABLE(ios(13.0));
                     Plainly speaking, UIWindowSceneSessionRoleApplication is for your device display and
                     UIWindowSceneSessionRoleExternalDisplay is for displaying externally like how the app AirPlay mirrors
                     your device display to another monitor.
    */
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}

- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
}
@end
