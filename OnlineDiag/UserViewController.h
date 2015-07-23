//
//  UserViewController.h
//  OnlineDiag
//
//  Created by SangChan on 2015. 7. 23..
//  Copyright (c) 2015년 jei e academy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *gradeTextFiled;
@property (strong, nonatomic) IBOutlet UITextField *telTextField;
@property (strong, nonatomic) IBOutlet UITextField *nameTextFiled;
@property (strong, nonatomic) IBOutlet UIButton *startSnapButton;
- (IBAction)clickedStartSnapButton:(id)sender;
@end
