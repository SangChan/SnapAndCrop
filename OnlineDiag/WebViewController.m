//
//  WebViewController.m
//  OnlineDiag
//
//  Created by SangChan on 2015. 7. 21..
//  Copyright (c) 2015년 jei e academy. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

@synthesize absoluteURL;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"JEI학력진단";
    
    UIBarButtonItem *homeButton = [[UIBarButtonItem alloc] initWithTitle:@"홈" style:UIBarButtonItemStylePlain target:self action:@selector(homebuttonPressed)];
    [self.navigationItem setRightBarButtonItem:homeButton];
    
    [self.webView setDelegate:self];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSURL *url = [NSURL URLWithString:[absoluteURL stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];
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
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    NSLog(@"error =%@",error);
}

@end
