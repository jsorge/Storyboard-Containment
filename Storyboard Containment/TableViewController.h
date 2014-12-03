//
//  TableViewController.h
//  Storyboard Containment
//
//  Created by Jared Sorge on 12/1/14.
//  Copyright (c) 2014 jsorge.net. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScrollViewFinding.h"

@interface TableViewController : UITableViewController <ScrollViewFinding>
@property (nonatomic, strong) NSMutableArray *things;
@end
