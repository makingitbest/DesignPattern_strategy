//
//  DESCommonCrypto.m
//  DesignPattern_strategy
//
//  Created by 王巧 on 16/6/30.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "DESCommonCrypto.h"
#import "NSData+CommonCrypto.h"

@implementation DESCommonCrypto

- (NSData *)encryptedData:(NSData *)data usingKey:(NSString *)key {

    return [data DESEncryptedDataUsingKey:key error:nil];
}

- (NSData *)decryptedData:(NSData *)data usingKey:(NSString *)key {

    return [data decryptedDESDataUsingKey:key error:nil];
}

@end
