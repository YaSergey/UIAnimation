//
//  Animations.h
//  UIAnimation
//
//  Created by Sergey Yasnetsky on 25.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface Animations : NSObject


+ (void) changeClickBox: (UIView *) view Color: (UIColor *) color;

+ (void) movePlaceHolder: (UILabel *) label Alpha: (int) alpha;

+ (void) movePlaceHolder_UpDown: (UILabel *) label Points: (int)points TextColor: (UIColor *) textColor;

+ (void) setGlowEffect: (UILabel *) label Alpha: (int) alpha;

+ (void) moveTextField_UpDown: (UITextField *) textField Points: (int)points TextColor: (UIColor *) textColor;



@end
