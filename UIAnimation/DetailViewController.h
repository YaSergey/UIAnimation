//
//  DetailViewController.h
//  UIAnimation
//
//  Created by Sergey Yasnetsky on 26.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField_First;
@property (weak, nonatomic) IBOutlet UILabel *labelFirst;
@property (weak, nonatomic) IBOutlet UITextField *textField_Second;
@property (weak, nonatomic) IBOutlet UILabel *labelSecond;
@property (weak, nonatomic) IBOutlet UITextField *textField_Third;
@property (weak, nonatomic) IBOutlet UILabel *labelThird;
@property (weak, nonatomic) IBOutlet UITextField *textField_Fourth;
@property (weak, nonatomic) IBOutlet UILabel *labelFourth;
- (IBAction)textField_First_Changing:(id)sender;
- (IBAction)textField_Second_Changing:(id)sender;
- (IBAction)textField_Third_Changing:(id)sender;
- (IBAction)textField_Fourth_Changing:(id)sender;

@end
