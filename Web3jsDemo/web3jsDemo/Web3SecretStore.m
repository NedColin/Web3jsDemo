//
//  Web3SecretStore.m
//  web3jsDemo
//
//  Created by Ned on 29/3/2017.
//  Copyright © 2017 Ned. All rights reserved.
//

#import "Web3SecretStore.h"
#import <JavaScriptCore/JavaScriptCore.h>

@implementation Web3SecretStore
{
    JSContext *_context;
    JSValue * _keythereumRecoverFun;
}

+ (instancetype)sharedInstance
{
    static Web3SecretStore * store = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        store = [[Web3SecretStore alloc] init];
    });
    return store;
}

- (id)init
{
    self = [super init];
    if (self) {
        [self initJavaScriptCallEvaluation];
    }
    return self;
}

- (void)loadScriptFromDocumentJSPath:(NSString *)JSFile context:(JSContext *)context
{
    NSArray * documents = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString * documentDir = [documents objectAtIndex:0];
    NSString * despath = [documentDir stringByAppendingPathComponent:@"js"];
    despath = [despath stringByAppendingPathComponent:JSFile];
    NSString * keythereumStr = [[NSString alloc] initWithContentsOfURL:[NSURL fileURLWithPath:despath] encoding:NSUTF8StringEncoding error:nil];
    [context evaluateScript:keythereumStr];
}

- (void)initJavaScriptCallEvaluation
{
    
    _context = [[JSContext alloc] initWithVirtualMachine:[[JSVirtualMachine alloc] init]];
    [_context evaluateScript:@"var window = this;"];
    
    [self loadScriptFromDocumentJSPath:@"keythereum.min.js" context:_context];
    
    [_context evaluateScript:@"var keythereumFun = function(walletJson,password){varkeythereum = window.keythereum;var keyObject=eval(\"(\"+walletJson+\")\");var plainKeyBuff =  keythereum.recover(password,keyObject);return plainKeyBuff.toString(\"hex\")}"];
    
    _keythereumRecoverFun = _context[@"keythereumFun"];
    
}

- (NSString *)recovery:(NSString *)walletFileJson password:(NSString *)password
{
    JSValue *resultOfkeythereumElement = [_keythereumRecoverFun callWithArguments:@[walletFileJson,password]];
    return [resultOfkeythereumElement toString];
}

@end
