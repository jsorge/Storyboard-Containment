//
//  TopLayoutHelper.m
//  Storyboard Containment
//
//  Created by Jared Sorge on 12/3/14.
//  Copyright (c) 2014 jsorge.net. All rights reserved.
//

#import "TopLayoutHelper.h"

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