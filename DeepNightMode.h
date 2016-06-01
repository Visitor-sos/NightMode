//
//  DeepNightMode.h
//  BoardDeepBrowser
//
//  Created by Visitor on 16/1/29.
//  Copyright © 2016年 Visitor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DeepNightMode : NSObject

- (void)setNightMode:(UIWebView *)webView;

- (NSString *)hexFromUIColor:(UIColor *)color;

- (void)setDayMode:(UIWebView *)webView;

@end
