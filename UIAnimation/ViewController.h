//
//  ViewController.h
//  UIAnimation
//
//  Created by Sergey Yasnetsky on 25.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController <UITextFieldDelegate, UIScrollViewDelegate> {

    BOOL isYES;
    BOOL isColorChanged;
    BOOL isPlaceHolderHiden;
    BOOL isFitstNameChanging;
    BOOL isLastNameChanging;
    BOOL isAboutUserChanging;
    BOOL isAboutUserTouching;
    
}


@property (weak, nonatomic) IBOutlet UITextField *textField_FristName;
@property (weak, nonatomic) IBOutlet UILabel *labelPlaceHolder_FirstName;
@property (weak, nonatomic) IBOutlet UITextField *textField_LastName;
@property (weak, nonatomic) IBOutlet UILabel *labelPlaceHolder_LastName;
@property (weak, nonatomic) IBOutlet UILabel *label_Glow;
@property (weak, nonatomic) IBOutlet UITextField *textField_AboutUser;
@property (weak, nonatomic) IBOutlet UILabel *labelAboutUser;






@end

