//
//  CASCommonCrypto.m
//  DesignPattern_strategy
//
//  Created by 王巧 on 16/6/30.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "CASCommonCrypto.h"
#import "NSData+CommonCrypto.h"

@implementation CASCommonCrypto

- (NSData *)encryptedData:(NSData *)data usingKey:(NSString *)key {

    return [data CASTEncryptedDataUsingKey:key error:nil];
}

- (NSData *)decryptedData:(NSData *)data usingKey:(NSString *)key {


    return [data decryptedCASTDataUsingKey:key error:nil];
}

@end
