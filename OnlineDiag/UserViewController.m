//
//  UserViewController.m
//  OnlineDiag
//
//  Created by SangChan on 2015. 7. 23..
//  Copyright (c) 2015년 jei e academy. All rights reserved.
//

#import "UserViewController.h"

@interface UserViewController ()

@end

@implementation UserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"JEI학력진단";
    
//    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"back_btn.png"] style:UIBarButtonItemStylePlain target:self action:@selector(backbuttonPressed)];
//    [self.navigationItem setLeftBarButtonItem:leftButton];
//    
//    UIBarButtonItem *homeButton = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"home_btn.png"] style:UIBarButtonItemStylePlain target:self action:@selector(homebuttonPressed)];
//    [self.navigationItem setRightBarButtonItem:homeButton];
    
    UIBarButtonItem *homeButton = [[UIBarButtonItem alloc] initWithTitle:@"홈" style:UIBarButtonItemStylePlain target:self action:@selector(homebuttonPressed)];
    [self.navigationItem setRightBarButtonItem:homeButton];
    // Do any additional setup after loading the view.
    
}

- (void)homebuttonPressed {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
