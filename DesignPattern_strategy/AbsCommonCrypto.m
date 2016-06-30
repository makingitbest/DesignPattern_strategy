//
//  AbsCommonCrypto.m
//  DesignPattern_strategy
//
//  Created by 王巧 on 16/6/30.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "AbsCommonCrypto.h"

@implementation AbsCommonCrypto

- (NSData *)encryptedData:(NSData *)data usingKey:(NSString *)key {
    
    return data;
}

- (NSData *)decryptedData:(NSData *)data usingKey:(NSString *)key {
    
    return data;
}

@end
