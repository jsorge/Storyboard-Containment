//
//  ScrollViewFinding.h
//  Storyboard Containment
//
//  Created by Jared Sorge on 12/1/14.
//  Copyright (c) 2014 jsorge.net. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@protocol ScrollViewFinding <NSObject>
@property (nonatomic, strong) UIScrollView *rootScrollView;
@end
