//
//  ViewController.m
//  web3jsDemo
//
//  Created by Ned on 7/3/2017.
//  Copyright © 2017 Ned. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
#import "Masonry.h"
#import <JavaScriptCore/JavaScriptCore.h>

@interface ViewController ()<WKUIDelegate,WKNavigationDelegate>
{
    UIWebView * _webview;
    UIButton * _backButton;
    UIButton * _closeButton;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end

