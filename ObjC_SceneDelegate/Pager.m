//
//  Pager.m
//  ObjC_SceneDelegate
//

#import "Pager.h"


@interface Pager () {
    NSInteger current;
}
@end


@implementation Pager

- (void)viewDidLoad {
    [super viewDidLoad];

    current = 0;
    self.dataSource = self;
    
    FirstPage *firstVC = [self.storyboard instantiateViewControllerWithIdentifier:[NSString stringWithFormat:@"%@PageVC", [@(current) stringValue]]];
    firstVC.index = current;
    [self setViewControllers:@[firstVC] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    if(current - 1 < 0) {
        return nil;
    }
    current--;
    PagerPageWrapper *page = [self.storyboard instantiateViewControllerWithIdentifier:[NSString stringWithFormat:@"%@PageVC", [@(current) stringValue]]];
    page.index = current;
    return page;
}

// Asks whether there is another viewcontroller after the one being transitioned to.
// On first transition, it runs twice? bug?
// Looks like it runs first for the initial viewcontroller(index = 0), then again for the newly inserted viewcontroller(index = 1)
// Returning nil from the former event prevents the next page from loading, the following event fizzles,
// and count remains the same.
//
// So let the first event run normally then return nil from the duplicate event. How curious.
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    if(current + 1 == ((PagerPageWrapper *)viewController).index || current + 1 > 1) {
        return nil;
    }
    current++;
    PagerPageWrapper *page = [self.storyboard instantiateViewControllerWithIdentifier:[NSString stringWithFormat:@"%@PageVC", [@(current) stringValue]]];
    page.index = current;
    return page;
}
@end
