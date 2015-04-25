//
//  Animation.m
//  UIAnimation
//
//  Created by Sergey Yasnetsky on 25.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import "Animations.h"

@implementation Animations

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

+ (void) movePlaceHolder_UpDown: (UILabel *) label Points: (int)points TextColor: (UIColor *) textColor {
    
    CGRect newFrame = [label frame];
    newFrame.origin.y = label.frame.origin.y + points;
    
    
    // анимация сдвиг вверх с резиновым эффектом (как в скайпе)============
    
    [UIView animateWithDuration:0.4 delay:0.0 usingSpringWithDamping:0.2 initialSpringVelocity:0.7 options:0 animations:^{
        
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
    
   // анимация сдвиг и изменение цвета ===========================
    
    
//    [UIView animateWithDuration:0.9 delay:0.0 options: UIViewAnimationOptionTransitionNone animations:^{
//
//    label.frame = newFrame;
//    int64_t delay = 5;
//    
//    dispatch_time_t time = dispatch_time (DISPATCH_TIME_NOW, delay * NSEC_PER_MSEC);
//    dispatch_after(time, dispatch_get_main_queue(), ^{
//        
//        CATransition * animation = [CATransition animation];
//        animation.type = kCATransitionFade;
//        animation.duration = 0.2;
//        
//        [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
//        
//        [animation setFillMode:kCAFillModeBoth];
//        
//        
//        [label.layer addAnimation:animation forKey:@"Fade"];
//        label.textColor = textColor;
//    });
//} completion:^(BOOL finished) {
//    
//    if (finished){
//        NSLog(@"Animation is ok");
//    }
//}];

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

@end
