//
//  TableViewController.m
//  Storyboard Containment
//
//  Created by Jared Sorge on 12/1/14.
//  Copyright (c) 2014 jsorge.net. All rights reserved.
//

#import "TableViewController.h"
#import "UIColor+Extension.h"

@interface TableViewController ()
@end

@implementation TableViewController
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.things.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"NumberCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSNumber *number = self.things[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@", number];
    cell.backgroundColor = [UIColor uw_randomColor];
    
    return cell;
}

#pragma mark - ScrollViewFinding
- (UIScrollView *)rootScrollView
{
    return self.tableView;
}
@end
