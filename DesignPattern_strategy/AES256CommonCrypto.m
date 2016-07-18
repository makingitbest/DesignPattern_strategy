//
//  AES256CommonCrypto.m
//  DesignPattern_strategy
//
//  Created by 王巧 on 16/6/30.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "AES256CommonCrypto.h"
#import "NSData+CommonCrypto.h"

@implementation AES256CommonCrypto

- (NSData *)encryptedData:(NSData *)data usingKey:(NSString *)key {
    
    return [data AES256EncryptedDataUsingKey:key error:nil];
}

- (NSData *)decryptedData:(NSData *)data usingKey:(NSString *)key {
    
    return [data decryptedAES256DataUsingKey:key error:nil];
}

@end
