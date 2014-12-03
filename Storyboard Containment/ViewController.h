//
//  ViewController.h
//  Storyboard Containment
//
//  Created by Jared Sorge on 12/1/14.
//  Copyright (c) 2014 jsorge.net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@end





@interface TopLayoutHelper : NSObject <UILayoutSupport>
@property (nonatomic, readonly)CGFloat length;

- (instancetype)initWithLength:(CGFloat)length;
@end