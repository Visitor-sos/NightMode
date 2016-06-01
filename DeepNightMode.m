//
//  DeepNightMode.m
//  BoardDeepBrowser
//
//  Created by Visitor on 16/1/29.
//  Copyright © 2016年 Visitor. All rights reserved.
//

#import "DeepNightMode.h"

@implementation DeepNightMode

- (void)setNightMode:(UIWebView *)webView {
    [webView stringByEvaluatingJavaScriptFromString:@"document.getElementsByTagName('body')[0].style.webkitTextFillColor= '#2D99BC'"];
    
    NSString *javaScriptPath = [[NSBundle mainBundle] pathForResource:@"JavaScript" ofType:@"plist"];
    NSDictionary *javaDict = [NSDictionary dictionaryWithContentsOfFile:javaScriptPath];
    NSArray *array = javaDict[@"controls"];
    for(NSString *control in array) {
        [webView stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"var i, a;"
                                                         "for(i = 0; (a = document.getElementsByTagName('%@')[i]); i ++) {"
                                                         "a.style.background = '#080A3B';"
                                                         "}", control]];
    }
}

- (void)setDayMode:(UIWebView *)webView {
    [webView stringByEvaluatingJavaScriptFromString:@"document.getElementsByTagName('body')[0].style.webkitTextFillColor= '#2D99BC'"];
    
    NSString *javaScriptPath = [[NSBundle mainBundle] pathForResource:@"JavaScript" ofType:@"plist"];
    NSDictionary *javaDict = [NSDictionary dictionaryWithContentsOfFile:javaScriptPath];
    NSArray *array = javaDict[@"controls"];
    for(NSString *control in array) {
        [webView stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"var i, a;"
                                                         "for(i = 0; (a = document.getElementsByTagName('%@')[i]); i ++) {"
                                                         "a.style.background = '#ffffff';"
                                                         "}", control]];
    }
        //NSString *colorStr = [self hexFromUIColor:[UIColor whiteColor]] ;
    //    NSLog(@"colorStr---->%@", colorStr);
}

- (NSString *)hexFromUIColor:(UIColor *)color {
    const CGFloat *cs=CGColorGetComponents(color.CGColor);
    NSString *r = [NSString stringWithFormat:@"%@",[self  ToHex:cs[0]*255]];
    NSString *g = [NSString stringWithFormat:@"%@",[self  ToHex:cs[1]*255]];
    NSString *b = [NSString stringWithFormat:@"%@",[self  ToHex:cs[2]*255]];
    return [NSString stringWithFormat:@"#%@%@%@",r,g,b];
}

//十进制转十六进制
-(NSString *)ToHex:(int)tmpid {
    NSString *endtmp=@"";
    NSString *nLetterValue;
    NSString *nStrat;
    int ttmpig=tmpid%16;
    int tmp=tmpid/16;
    switch (ttmpig) {
        case 10:
            nLetterValue =@"A";break;
        case 11:
            nLetterValue =@"B";break;
        case 12:
            nLetterValue =@"C";break;
        case 13:
            nLetterValue =@"D";break;
        case 14:
            nLetterValue =@"E";break;
        case 15:
            nLetterValue =@"F";break;
        default:nLetterValue=[[NSString alloc]initWithFormat:@"%i",ttmpig];
            
    }
    switch (tmp) {
        case 10:
            nStrat =@"A";break;
        case 11:
            nStrat =@"B";break;
        case 12:
            nStrat =@"C";break;
        case 13:
            nStrat =@"D";break;
        case 14:
            nStrat =@"E";break;
        case 15:
            nStrat =@"F";break;
        default:nStrat=[[NSString alloc]initWithFormat:@"%i",tmp];
            
    }
    endtmp=[[NSString alloc]initWithFormat:@"%@%@",nStrat,nLetterValue];
    return endtmp;
}


@end
