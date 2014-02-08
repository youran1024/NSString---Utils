//
//  NSObject+IsValidate.m
//  HealthChat3.0
//
//  Created by Hunter on 3/19/13.
//  Copyright (c) 2013 maomao. All rights reserved.
//
#import "NSString+IsValidate.h"

#define isValidate  [self validateByRegular:reg]    
@implementation NSString (IsValidate)

- (BOOL)validateByRegular:(NSString *)regular{
    return [[[NSRegularExpression alloc] initWithPattern:regular options:0 error:nil] firstMatchInString:self options:0 range:NSMakeRange(0, self.length)] != nil;
}
//-------------------------------------------------------
//  检查字符串型日期是否合法符合服务器12位
//-------------------------------------------------------
- (BOOL)isValidate14DateStr
{
    if (![self isKindOfClass:[NSString class]] || [self length] < 13) {
        return NO;
    }
    return YES;
}
//-------------------------------------------------------
//  检查长度是不是零
//-------------------------------------------------------
- (BOOL)isValidateLength
{
    return self.length > 0;
}
//-------------------------------------------------------
//  检查多美账号
//-------------------------------------------------------
- (BOOL)isValidateNum
{
    NSString *reg = @"^[0-9]*$";
    return isValidate;
}
//-------------------------------------------------------
//  验证有两位小数的正实数
//-------------------------------------------------------
- (BOOL)isValidatePrice
{
    NSString *reg = @"^[0-9]+(.[0-9]{2})?$";
    return isValidate;
}
//-------------------------------------------------------
//  检查电话号码
//-------------------------------------------------------
- (BOOL)isValidateTelPhoneNum
{
    //电话号和手机号
    NSString *reg = @"(^(\\d{3,4}-)?\\d{7,8})$|(13[0-9]{9})";
    return isValidate;
}
//-------------------------------------------------------
//  检查座机电话号码和传真号，可以“+”开头，除数字外，可含有“-”
//-------------------------------------------------------
- (BOOL)isValidateFaxCode
{
    NSString *reg = @"/^[+]{0,1}(\\d){1,3}[ ]?([-]?((\\d)|[ ]){1,12})+$/";
    return isValidate;
}
//-------------------------------------------------------
// 校验邮政编码
//-------------------------------------------------------
- (BOOL)isValidateMailCode
{
    NSString *reg = @"/^[+]{0,1}(\\d){1,3}[ ]?([-]?((\\d)|[ ]){1,12})+$/";
    return isValidate;
}

@end
