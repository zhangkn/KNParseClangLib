//
//  ViewController.m
//  myTest
//
//  Created by Monkey on 15/8/18.
//  Copyright (c) 2015年 Netease. @"THIS IS A STRING "All "AAAAAA"rights reserved.
//

//static 不能加密
//全局的也不可以
//宏定义不可以


#import "ViewController.h"

#define STRING "sdsdsdsd"
NSString *xxx = @"12121";

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)AAA:(id)sender {
    char *str = "2222";
    [_myclick setText:[NSString stringWithFormat:@"你好",123]];
}
@end
