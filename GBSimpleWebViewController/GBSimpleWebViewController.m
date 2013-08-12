//
//  GBSimpleWebViewController.m
//  Russia
//
//  Created by Luka Mirosevic on 12/08/2013.
//  Copyright (c) 2013 Goonbee. All rights reserved.
//

#import "GBSimpleWebViewController.h"

@interface GBSimpleWebViewController ()

@property (strong, nonatomic) UIWebView     *webView;
@property (copy, nonatomic) NSString        *urlString;

@end

@implementation GBSimpleWebViewController

-(id)initWithURL:(NSString *)urlString {
    if (self = [super init]) {
        self.webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
        self.webView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        [self.view addSubview:self.webView];
        
        NSURL *url = [NSURL URLWithString:urlString];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.webView loadRequest:request];
    }
    
    return self;
}

@end
