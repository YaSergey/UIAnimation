//
//  DetailViewController.m
//  UIAnimation
//
//  Created by Sergey Yasnetsky on 26.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//=======================================================

-(void)textFieldDidBeginEditing:(UITextField *)textField {
    //Keyboard becomes visible
    self.textField_Fourth.frame = CGRectMake(self.textField_Fourth.frame.origin.x,
                                    self.textField_Fourth.frame.origin.y,
                                    self.textField_Fourth.frame.size.width,
                                    self.textField_Fourth.frame.size.height - 215 + 50);   //resize
}

-(void)textFieldDidEndEditing:(UITextField *)textField {
    //keyboard will hide
    self.textField_Fourth.frame = CGRectMake(self.textField_Fourth.frame.origin.x,
                                    self.textField_Fourth.frame.origin.y,
                                    self.textField_Fourth.frame.size.width,
                                    self.textField_Fourth.frame.size.height + 215 - 50); //resize
}


////////////////=========================================

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)textField_First_Changing:(id)sender {
}

- (IBAction)textField_Second_Changing:(id)sender {
}

- (IBAction)textField_Third_Changing:(id)sender {
    
    
}

- (IBAction)textField_Fourth_Changing:(id)sender {
}
@end
