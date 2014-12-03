//
//  TopLayoutHelper.h
//  Storyboard Containment
//
//  Created by Jared Sorge on 12/3/14.
//  Copyright (c) 2014 jsorge.net. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface TopLayoutHelper : NSObject <UILayoutSupport>
@property (nonatomic, readonly)CGFloat length;

- (instancetype)initWithLength:(CGFloat)length;
@end