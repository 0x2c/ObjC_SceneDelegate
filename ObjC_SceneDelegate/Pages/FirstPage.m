//
//  FirstPage.m
//  ObjC_SceneDelegate
//

#import "FirstPage.h"


NSString *const TABLE_CELL_ID = @"abcd";


@interface FirstPage () {
    NSMutableArray *LICollection;
}

@end


@implementation FirstPage

- (void)viewDidLoad {
    [super viewDidLoad];
    LICollection = [NSMutableArray arrayWithCapacity:0];
}

#pragma mark - UIButton (+)
- (IBAction)addNewItem:(id) sender {
    [LICollection addObject:@"list item"];

    [self.UL beginUpdates];
    NSArray *newRows = [NSArray arrayWithObject:[NSIndexPath indexPathForRow:LICollection.count-1 inSection:0]];
    [self.UL insertRowsAtIndexPaths:newRows withRowAnimation:UITableViewRowAnimationAutomatic];
    [self.UL endUpdates];
}

#pragma mark - UITableViewDataSource Protocol Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [LICollection count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TABLE_CELL_ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TABLE_CELL_ID];
    }
    cell.textLabel.text = (NSString *)[LICollection objectAtIndex:indexPath.row];
    return cell;
}
@end
