//
//  NSObject+IsValidate.h
//  HealthChat3.0
//
//  Created by Hunter on 3/19/13.
//  Copyright (c) 2013 maomao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (IsValidate)
- (BOOL)isValidate14DateStr;
- (BOOL)isValidateLength;
- (BOOL)isValidateNum;
- (BOOL)isValidateTelPhoneNum;
- (BOOL)isValidateFaxCode;
- (BOOL)isValidateMailCode;
- (BOOL)isValidatePrice;
@end
