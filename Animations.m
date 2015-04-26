//
//  Animation.m
//  UIAnimation
//
//  Created by Sergey Yasnetsky on 25.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import "Animations.h"

@implementation Animations


// метод изменения цвета объекта
+ (void) changeClickBox: (UIView *) view Color: (UIColor *) color
{

    CATransition * animation = [CATransition animation];
    animation.type = kCATransitionFade;
    animation.duration = 0.35;
    
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    
    [animation setFillMode:kCAFillModeBoth];
    
    
    [view.layer addAnimation:animation forKey:@"Fade"];
    view.backgroundColor = color;

}

// сдвиг плейс холдера вправо/влево=============
+ (void) movePlaceHolder: (UILabel *) label Alpha: (int) alpha {
    
    CATransition * animation = [CATransition animation];
    animation.type = kCATransitionPush;
    
    if (alpha == 0) {
        animation.subtype = kCATransitionFromLeft;
    }
    else {
        
    animation.subtype = kCATransitionFromRight;
        
    }
    animation.duration = 0.45;
    
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    
    [animation setFillMode:kCAFillModeBoth];

    
    [label.layer addAnimation:animation forKey:@"Fade"];
    label.alpha = alpha;
    
}

// сдвиг изменение плейсхолдера анимация сдвиг вверх с пружинным эффектом (как в скайпе)===

+ (void) movePlaceHolder_UpDown: (UILabel *) label Points: (int)points TextColor: (UIColor *) textColor {
    
    CGRect newFrame = [label frame];
    newFrame.origin.y = label.frame.origin.y + points;
    
    [UIView animateWithDuration:0.6 delay:0.0 usingSpringWithDamping:0.2 initialSpringVelocity:0.7 options:0 animations:^{
        
            label.frame = newFrame;
            int64_t delay = 5;
        
            dispatch_time_t time = dispatch_time (DISPATCH_TIME_NOW, delay * NSEC_PER_MSEC);
            dispatch_after(time, dispatch_get_main_queue(), ^{
        
                CATransition * animation = [CATransition animation];
                animation.type = kCATransitionFade;
                animation.duration = 0.2;
        
                [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
        
                [animation setFillMode:kCAFillModeBoth];
        
        
                [label.layer addAnimation:animation forKey:@"Fade"];
                label.textColor = textColor;
        
            });
        
    } completion:^(BOOL finished) {
}];
}

//========================Эффект свечения у UILabel =====================

+ (void) setGlowEffect: (UILabel *) label Alpha: (int) alpha {
    
    CATransition * animation = [CATransition animation];
    animation.type = kCATransitionFade;
    
    animation.duration = 1.45;
    
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    
    [animation setFillMode:kCAFillModeBoth];

    [label.layer addAnimation:animation forKey:@"Fade"];
    label.layer.shadowColor = [UIColor colorWithWhite:1.0 alpha:alpha].CGColor;
    label.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    label.layer.shadowRadius = 7.5f;
    label.layer.shadowOpacity = 10.5f;
    label.layer.masksToBounds = NO;
    
}



/// ============== сдвиг  текстФилда вверх при измении =================
// анимация сдвиг вверх с пружинным эффектом (как в скайпе)============

+ (void) moveTextField_UpDown: (UITextField *) textField Points: (int)points TextColor: (UIColor *) textColor {
    
    CGRect newTextFieldFrame = [textField frame];
    newTextFieldFrame.origin.y = textField.frame.origin.y + points;
    
    
    
    [UIView animateWithDuration:0.6 delay:0.0 usingSpringWithDamping:0.2 initialSpringVelocity:0.7 options:0 animations:^{
        
        textField.frame = newTextFieldFrame;
        int64_t delay = 5;
        
        dispatch_time_t time = dispatch_time (DISPATCH_TIME_NOW, delay * NSEC_PER_MSEC);
        dispatch_after(time, dispatch_get_main_queue(), ^{
            
            CATransition * animation = [CATransition animation];
            animation.type = kCATransitionFade;
            animation.duration = 0.2;
            
            [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
            
            [animation setFillMode:kCAFillModeBoth];
            
            
            [textField.layer addAnimation:animation forKey:@"Fade"];
            textField.textColor = textColor;
            
        });
        
    } completion:^(BOOL finished) {
    }];
}

////// метод сдвига view элемента с текст филдами

+(void) moveUserFieldView_UpDown: (UIView *) userFieldView Points: (int) points {
    
    
    CGRect userFieldViewFrame = [userFieldView frame];
    userFieldViewFrame.origin.y = userFieldView.frame.origin.y + points;
    
    
    
    [UIView animateWithDuration:0.6 delay:0.0 usingSpringWithDamping:0.2 initialSpringVelocity:0.7 options:0 animations:^{
        
        userFieldView.frame = userFieldViewFrame;
        int64_t delay = 5;
        
        dispatch_time_t time = dispatch_time (DISPATCH_TIME_NOW, delay * NSEC_PER_MSEC);
        dispatch_after(time, dispatch_get_main_queue(), ^{
            
            CATransition * animation = [CATransition animation];
            animation.type = kCATransitionFade;
            animation.duration = 0.2;
            
            [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
            
            [animation setFillMode:kCAFillModeBoth];
            
            
            [userFieldView.layer addAnimation:animation forKey:@"Fade"];
//            userFieldView.textColor = textColor;
            
        });
        
    } completion:^(BOOL finished) {
    }];


}

@end
