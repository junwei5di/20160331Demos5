//
//  Person.m
//  OC-类方法和实例方法
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"

@implementation Person
//实例方法的实现
-(void)setName:(NSString *)name andAge:(int)age andSex:(NSString *)sex
{
    _name=name;
    _age=age;
    _sex=sex;
}
-(void)showPerson
{
    NSLog(@"name is %@,age is %d,sex is %@",_name,_age,_sex);
}
-(void)eat
{
    NSLog(@"%@正在吃饭...",_name);
}
-(void)play
{
    NSLog(@"%@正在dota...%@",_name,self);//self指的是当前对象
}
//类方法的实现
+(Person *)personWithName:(NSString *)name andAge:(int)age andSex:(NSString *)sex
{
   // _name=name;//实例变量不能在类方法中直接被引用
    //1.必须先创建对象
    Person *p=[Person new];
    NSLog(@"p===>%p",p);
    //2.给对象赋值
    [p setName:name andAge:age andSex:sex];
    //3.返回对象
    return p;
}
+(void)sleep
{
    NSLog(@"%@正在睡觉...",self);//self指的是当前类
}
/*
//总结
1.OC中所有的类和对象都可以用%@打印
2.self：（1）self在类方法中相当于当前的类；（2）self作用于实例方法中，相当于当前类创建的对象；（3）总的来说：self指的就是当前调用该方法的类或者对象！
 */
@end
