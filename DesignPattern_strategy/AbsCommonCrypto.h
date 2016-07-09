//
//  AbsCommonCrypto.h
//  DesignPattern_strategy
//
//  Created by 王巧 on 16/6/30.
//  Copyright © 2016年 wq. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  这是父类方法,其他子类继承他,可以各自实现他的方法
 */
@interface AbsCommonCrypto : NSObject

/**
 *  实例方法
 *
 *  @param data 要加密的数据
 *  @param key  给的Key值
 *
 *  @return 返回加密后的数据
 */
- (NSData *)encryptedData:(NSData *)data usingKey:(NSString *)key;

/**
 *  实例方法
 *
 *  @param data 要解密的数据
 *  @param key  给的key值 == 加密给的Key,否则无法解密
 *
 *  @return 返回解密后的数据
 */
- (NSData *)decryptedData:(NSData *)data usingKey:(NSString *)key;

@end
