//
//  main.m
//  OC-类方法和实例方法
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1=[Person new];
        NSLog(@"p1===>%p",p1);
        [p1 setName:@"小明" andAge:32 andSex:@"男"];
        [p1 showPerson];
        [p1 eat];
        [p1 play];
        
        //类方法的使用
        //[p1 sleep];//类方法是由类名直接调用！
        [Person sleep];
        Person *p2=[Person personWithName:@"小丽" andAge:23 andSex:@"女"];
        NSLog(@"p2===>%p",p2);
        [p2 showPerson];
        [p2 eat];
        [p2 play];
    }
    return 0;
}
