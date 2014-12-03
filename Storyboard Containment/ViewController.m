//
//  ViewController.m
//  Storyboard Containment
//
//  Created by Jared Sorge on 12/1/14.
//  Copyright (c) 2014 jsorge.net. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
#import "ScrollViewFinding.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UIView *blurView;
@end

@implementation ViewController
#pragma mark - Lifecycle
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //DON"T PASS MODEL OBJECTS LIKE THIS IN PRODUCTION
    NSMutableArray *itemsToShow = [NSMutableArray new];
    for (int i = 0; i < 25; i++) {
        [itemsToShow addObject:@(i)];
    }
    
    if ([segue.identifier isEqualToString:@"TableViewEmbed"]) {
        TableViewController *destination = segue.destinationViewController;
        destination.things = itemsToShow;
        
        if ([destination conformsToProtocol:@protocol(ScrollViewFinding) ]) {
            UIEdgeInsets newEdgeInsets = UIEdgeInsetsMake(self.topLayoutGuide.length, 0.0, 0.0, 0.0);
            UIScrollView *scrollView = destination.rootScrollView;
            [scrollView setContentInset:newEdgeInsets];
        }
    }
}

#pragma mark - Layout
- (id<UILayoutSupport>)topLayoutGuide
{
    CGFloat newLayoutGuide = self.blurView.frame.size.height;
    return [[TopLayoutHelper alloc] initWithLength:newLayoutGuide];
}
@end



@implementation TopLayoutHelper
- (instancetype)initWithLength:(CGFloat)length
{
    self = [super init];
    if (self) {
        _length = length;
    }
    return self;
}
@end