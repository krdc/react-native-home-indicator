#import "HomeIndicatorViewController.h"

@implementation HomeIndicatorViewController

- (BOOL)prefersHomeIndicatorAutoHidden {
    return self.prefersAutoHidden;
}

- (UIRectEdge)preferredScreenEdgesDeferringSystemGestures {
    return UIRectEdgeAll;
}

@end
