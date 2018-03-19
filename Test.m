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

#import "Test.h"

#define XXX  "I'm define"
static NSString * str = @"global static NSString";

NSString * str22 = @"global NSString";

char *gstr = "global c string";

@implementation MyFileXXX

-(char*)thisaFun{
    #define XXXX  "I'm define"
    static char * str = "local static char str";
    char* str2 = "local char str";
    static NSString * nstr = @"local static nsstring";
    NSString *nstr2 = @"local nsstring";
    NSString *strfor = [NSString stringWithFormat:@"I'm format%@",@"123"];
    NSLog(@"====%s,%s,%@,%@,%@",str,str2,nstr,nstr2,strfor);
    [NSString stringWithFormat:@"第%i次点击",10];
    printf("I'm c string %s",str2);
    
    [MyFileXXX thisaStaticFun];
    
    NSLog(@"%@",@"this is my another string!");
    return "return nsstring";
}

+(NSString *)thisaStaticFun{
    long rand = random();
    
    NSLog(@"666666 %liz",rand);
    
    return @"return nsstring";
}

@end
