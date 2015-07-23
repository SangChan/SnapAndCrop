//
//  ViewController.m
//  OnlineDiag
//
//  Created by SangChan on 2015. 7. 15..
//  Copyright (c) 2015년 jei e academy. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Custom.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize startButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"홈";
    [self.startButton defaultStyle];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickedStart:(id)sender {
    //TODO : show popup of take picture
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.title = @"";
    [self.navigationController.navigationBar setHidden:NO];
}

@end
