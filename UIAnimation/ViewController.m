//
//  ViewController.m
//  UIAnimation
//
//  Created by Sergey Yasnetsky on 25.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import "ViewController.h"
#import "Animations.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *view_BG_YES;
@property (weak, nonatomic) IBOutlet UIView *veiw_BG_NO;
@property (weak, nonatomic) IBOutlet UIView *viewClick_YES;
@property (weak, nonatomic) IBOutlet UIView *viewClick_NO;

- (IBAction)actionYES:(id)sender;
- (IBAction)actionNO:(id)sender;

- (IBAction)textField_fristName_Changing:(id)sender;
- (IBAction)textField_lastName_Changing:(id)sender;
- (IBAction)textField_aboutUser_Changing:(id)sender;
- (IBAction)textField_aboutUser_DidBegin:(id)sender;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    isColorChanged = NO;
    
    [self setView];
  
}
// ==========================================================
- (void) setView { // графические свойства объектов цвет фона, толщина линий, скругление
    
    self.textField_FristName.layer.borderColor = [UIColor colorWithWhite:1.0 alpha:0.1].CGColor;
    self.textField_FristName.layer.borderWidth = 1.0;
    self.textField_FristName.layer.cornerRadius = 5.0;
    
    
self.view_BG_YES.layer.borderColor = [UIColor redColor].CGColor;
self.view_BG_YES.layer.borderWidth = 1.0;
self.view_BG_YES.layer.cornerRadius = 5.0;
    
    self.veiw_BG_NO.layer.borderColor = [UIColor redColor].CGColor;
    self.veiw_BG_NO.layer.borderWidth = 1.0;
    self.veiw_BG_NO.layer.cornerRadius = 5.0;
    
    
    self.viewClick_YES.layer.borderColor = [UIColor blueColor].CGColor;
    self.viewClick_YES.layer.borderWidth = 1.0;
    self.viewClick_YES.layer.cornerRadius = 15.0;
    
    self.viewClick_NO.layer.borderColor = [UIColor blueColor].CGColor;
   self.viewClick_NO.layer.borderWidth = 1.0;
    self.viewClick_NO.layer.cornerRadius = 15.0;

}

// ============ Метод сдвигает текстфилд когда есть касание текст филда======
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField; {
    
    if (textField == self.textField_AboutUser) {
        [Animations moveTextField_UpDown:self.textField_AboutUser Points:-90 TextColor:[UIColor blackColor]];
        [Animations movePlaceHolder_UpDown:self.labelAboutUser Points:-90 TextColor:[UIColor whiteColor]];
        
        return YES;
    
           }
    return YES;
}

//////////////////=============================================

- (BOOL)textFieldShouldReturn:(UITextField *)textField; {

    
    if (textField == self.textField_FristName /*&& self.textField_FristName.text.length > 0*/) {
        [self.textField_FristName resignFirstResponder];
        return YES;
    }
    
    
    if (textField == self.textField_LastName /*&& self.textField_LastName.text.length > 0*/) {
        [self.textField_LastName resignFirstResponder];
        return YES;
    }
    
    if (textField == self.textField_AboutUser /* && self.textField_AboutUser.text.length > 0*/) {
        [self.textField_AboutUser resignFirstResponder];
     
        [Animations moveTextField_UpDown:self.textField_AboutUser Points:90 TextColor:[UIColor blackColor]];
         [Animations movePlaceHolder_UpDown:self.labelAboutUser Points:90 TextColor:[UIColor whiteColor]];
        return YES;
    }
    
    return NO;
}
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)actionYES:(id)sender {
    
    
    // анимационные эффекты при нажании на кнопку
    // вызываем метод класса анимайшн
    
    if (!isColorChanged) {

        [Animations changeClickBox:self.viewClick_YES Color:[UIColor blueColor]];
        [Animations changeClickBox:self.viewClick_NO Color:[UIColor whiteColor]];
     [Animations setGlowEffect:self.label_Glow Alpha:1];
        
        isColorChanged = YES;
        isYES = YES;
    }
    else if (!isYES)
    {
        [Animations changeClickBox:self.viewClick_YES Color:[UIColor blueColor]];
        [Animations changeClickBox:self.viewClick_NO Color:[UIColor whiteColor]];
    
     [Animations setGlowEffect:self.label_Glow Alpha:1];
        
        isYES = YES;
    }
    
}

- (IBAction)actionNO:(id)sender {
    
    if (!isColorChanged) {
        
        [Animations changeClickBox:self.viewClick_YES Color:[UIColor whiteColor]];
        [Animations changeClickBox:self.viewClick_NO Color:[UIColor blueColor]];
    
        
        isYES = NO;
    
    }else if (isYES)
    {
        [Animations changeClickBox:self.viewClick_YES Color:[UIColor whiteColor]];
        [Animations changeClickBox:self.viewClick_NO Color:[UIColor blueColor]];
 
         [Animations setGlowEffect:self.label_Glow Alpha:0];
        
        isYES = NO;
    }
    
}


    
- (IBAction)textField_fristName_Changing:(id)sender {
    if (self.textField_FristName.text.length == 0) {
        
        if (isFitstNameChanging) {
            [Animations movePlaceHolder:self.labelPlaceHolder_FirstName Alpha:1];
            
            isFitstNameChanging = NO;
        }
    }
    else {
        if (!isFitstNameChanging) {
            [Animations movePlaceHolder:self.labelPlaceHolder_FirstName Alpha:0];
            
            isFitstNameChanging = YES;
        }
    }
}

- (IBAction)textField_lastName_Changing:(id)sender {
    
    if (self.textField_LastName.text.length == 0) {
        
        if (isLastNameChanging) {
            [Animations movePlaceHolder_UpDown:self.labelPlaceHolder_LastName Points:25 TextColor:[UIColor blackColor]];
            
            isLastNameChanging = NO;
        }
    }
    else {
        if (!isLastNameChanging) {
            [Animations movePlaceHolder_UpDown:self.labelPlaceHolder_LastName Points:-25 TextColor:[UIColor whiteColor]];
            
            isLastNameChanging = YES;
        }
    }

}

- (IBAction)textField_aboutUser_Changing:(id)sender {
    
    if (self.textField_AboutUser.text.length == 0) {
        
        if (isAboutUserChanging) {
            [Animations movePlaceHolder_UpDown:self.labelAboutUser Points:25 TextColor:[UIColor blackColor]];
            isAboutUserChanging = NO;
    
        }
        
       
    }
    else {
        if (!isAboutUserChanging) {
            [Animations movePlaceHolder_UpDown:self.labelAboutUser Points:-20 TextColor:[UIColor whiteColor]];
        
            isAboutUserChanging = YES;
//        [Animations moveTextField_UpDown:self.textField_AboutUser Points:-55 TextColor:[UIColor blackColor]];
        }
    }
    
}

- (IBAction)textField_aboutUser_DidBegin:(id)sender {
    
    if (isAboutUserTouching) {
        
        isAboutUserTouching = YES;
        [Animations moveTextField_UpDown:self.textField_AboutUser Points:-20 TextColor:[UIColor blackColor]];
    }
}



@end
