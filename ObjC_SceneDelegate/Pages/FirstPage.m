//
//  FirstPage.m
//  ObjC_SceneDelegate
//

#import "FirstPage.h"


NSString *const TABLE_CELL_ID = @"abcd";


@interface FirstPage () {
    NSArray *listItemCollection;
}

@end


@implementation FirstPage

- (void)viewDidLoad {
    [super viewDidLoad];
    listItemCollection = @[];
}

#pragma mark - UITableViewDataSource Protocol Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [listItemCollection count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TABLE_CELL_ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TABLE_CELL_ID];
    }
    cell.textLabel.text = (NSString *)[listItemCollection objectAtIndex:indexPath.row];
    return cell;
}
@end
