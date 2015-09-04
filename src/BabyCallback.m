//
//  BabyCallback.m
//  BabyBluetoothDemo
//
//  Created by 刘彦玮 on 15/9/2.
//  Copyright (c) 2015年 刘彦玮. All rights reserved.
//

#import "BabyCallback.h"

@implementation BabyCallback


-(instancetype)init{
    self = [super init];
    if (self){
        [self setFilterOnDiscoverPeripherals:^BOOL(NSString *peripheralsName) {
            if(![peripheralsName isEqualToString:@""])
                return YES;
            return NO;
        }];
        [self setFilterOnConnetToPeripherals:^BOOL(NSString *peripheralsName) {
            if(![peripheralsName isEqualToString:@""])
                return YES;
            return NO;
        }];
    }
    return self;
}
@end