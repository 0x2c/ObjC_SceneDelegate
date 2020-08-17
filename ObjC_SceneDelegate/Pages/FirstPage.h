//
//  FirstPage.h
//  ObjC_SceneDelegate
//

#import <UIKit/UIKit.h>
#import "PagerPageWrapper.h"


NS_ASSUME_NONNULL_BEGIN

@interface FirstPage : PagerPageWrapper <UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *UL;
- (IBAction)addNewItem:(id) sender;
@end

NS_ASSUME_NONNULL_END
