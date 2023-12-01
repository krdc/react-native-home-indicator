#import "RNHomeIndicator.h"
#import "HomeIndicatorViewController.h"

@implementation RNHomeIndicator

- (void)setPrefersAutoHidden:(BOOL)newValue {
    HomeIndicatorViewController *rootViewController = [self getHomeIndicatorViewController];
    
    if (rootViewController) {
        [rootViewController setPrefersAutoHidden:newValue];
    }
}

- (HomeIndicatorViewController *)getHomeIndicatorViewController {
    UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
    
    if ([rootViewController isKindOfClass:[HomeIndicatorViewController class]]) {
        return (HomeIndicatorViewController *)rootViewController;
    } else {
        // Handle the case where the root view controller is not of the expected type.
        // You can log an error or take appropriate action here.
        return nil;
    }
}

RCT_EXPORT_MODULE()

@end
