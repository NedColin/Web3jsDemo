//
//  Web3SecretStore.h
//  web3jsDemo
//
//  Created by Ned on 29/3/2017.
//  Copyright © 2017 Ned. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Web3SecretStore : NSObject

+ (instancetype)sharedInstance;

- (NSString *)recovery:(NSString *)walletFileJson password:(NSString *)password;

@end
