//
//  MyFile.m
//  myTest
//
//  Created by Monkey on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

//static 不能加密
//全局的也不可以
//宏定义不可以

#import "MyFileXXX.h"

#define XXX  "I'm define"

static NSString * gsnsstr = @"global static NSString";

NSString * gnsstr = @"global NSString";

@implementation MyFileXXX

-(NSString*)thisaFun{
    
    #define XXXX  "I'm define"
    
    static char* scstr = nil;
    
    static char * sncstr = "static char string";

    static NSString *snnsstr = nil;
    
    static NSString *snsstr = @"static nsstring";
    
    char* cstr = "local char str";
     
    NSString *nsstr = @"local nsstring \n";
    
    NSString *strfor = [NSString stringWithFormat:@"I'm format%@",@"123"];

    printf("I'm c string %s",cstr);

    NSLog(@"look    >>>>>%@",nsstr);
    
    scstr = "static c string init";
    
    snnsstr = @"static nsstring init";
    
    return @"return c string";
}

@end
