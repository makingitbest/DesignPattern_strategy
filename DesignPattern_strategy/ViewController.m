//
//  ViewController.m
//  DesignPattern_strategy
//
//  Created by 王巧 on 16/6/30.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "ViewController.h"
#import "AES256CommonCrypto.h"
#import "DESCommonCrypto.h"
#import "CASCommonCrypto.h"

@interface ViewController ()

@property (nonatomic, strong)AbsCommonCrypto * commonCrypto;


@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    /**
     *  不同的加密方式,初始化的对象不一样.其他方法都一样
     */
    
    self.commonCrypto = [AbsCommonCrypto new];
    //方法内没有任何操作,所以加密解密无效
    /*
    最开始的string == 我们都是好朋友
    data == <e68891e4 bbace983 bde698af e5a5bde6 9c8be58f 8b>
    encryptData == <e68891e4 bbace983 bde698af e5a5bde6 9c8be58f 8b>
    decryptData == <e68891e4 bbace983 bde698af e5a5bde6 9c8be58f 8b>
    解密后的str == 我们都是好朋友
     */
    
    self.commonCrypto = [AES256CommonCrypto new];
    /*
    最开始的string == 我们都是好朋友
    data == <e68891e4 bbace983 bde698af e5a5bde6 9c8be58f 8b>
    encryptData == <2c6b67d5 a2cf8f83 25a70ec1 e5d9466d 9e7c6dc0 674df8fb 9aac643a 021368ff>
    decryptData == <e68891e4 bbace983 bde698af e5a5bde6 9c8be58f 8b>
    解密后的str == 我们都是好朋友
     */
   
    self.commonCrypto = [DESCommonCrypto new];
    /*
    最开始的string == 我们都是好朋友
    data == <e68891e4 bbace983 bde698af e5a5bde6 9c8be58f 8b>
    encryptData == <dc7ea079 541ef991 11fc069a aa9a7e56 4a0c68f6 6d8693d1>
    decryptData == <e68891e4 bbace983 bde698af e5a5bde6 9c8be58f 8b>
    解密后的str == 我们都是好朋友
     */
    
    self.commonCrypto = [CASCommonCrypto new];
    /*
    最开始的string == 我们都是好朋友
    data == <e68891e4 bbace983 bde698af e5a5bde6 9c8be58f 8b>
    encryptData == <d52d3ef3 88285e6f 2a1d056f 2bade695 40b327c8 31d6ca12>
    decryptData == <e68891e4 bbace983 bde698af e5a5bde6 9c8be58f 8b>
    解密后的str == 我们都是好朋友
     */
    
    NSString *string      = @"我们都是好朋友";
    NSData   *data        = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSData   *encryptData = [self.commonCrypto encryptedData:data usingKey:@"5njsl%_njvns"];
    NSData   *decryptData = [self.commonCrypto decryptedData:encryptData usingKey:@"5njsl%_njvns"];
    NSString *str         = [[NSString alloc]initWithData:decryptData encoding:NSUTF8StringEncoding];
    
    NSLog(@"最开始的string == %@",string);
    NSLog(@"data == %@",data);
    NSLog(@"encryptData == %@",encryptData);
    NSLog(@"decryptData == %@",decryptData);
    NSLog(@"解密后的str == %@",str);
}

@end
