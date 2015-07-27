//
//  WebViewController.h
//  OnlineDiag
//
//  Created by SangChan on 2015. 7. 21..
//  Copyright (c) 2015년 jei e academy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate>

@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property(nonatomic) NSString *absoluteURL;

@end
