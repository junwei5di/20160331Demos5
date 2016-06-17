//
//  Person.h
//  OC-类方法和实例方法
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
    NSString *_sex;
}
//类方法 一般用类名开头，如 personWith....在方法中尽量减少类方法的使用(但是给实例分配内存必须使用类方法)
//类方法（工厂方法） 由类名直接调用  [类名 方法名]
+(Person *)personWithName:(NSString *)name andAge:(int)age andSex:(NSString *)sex;
+(void)sleep;
//实例方法（对象方法）  由对象（实例）调用 [对象/实例 方法名]
-(void)setName:(NSString *)name andAge:(int)age andSex:(NSString *)sex;
-(void)showPerson;
-(void)eat;
-(void)play;
@end
