//
//  AppDelegate.m
//  web3jsDemo
//
//  Created by Ned on 7/3/2017.
//  Copyright © 2017 Ned. All rights reserved.
//

#import "AppDelegate.h"
#import "Web3SecretStore.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //hash time 16
    NSString * p1 = [[Web3SecretStore sharedInstance] recovery:@"{\"address\":\"7daa0942447a2b6f6a749a2e3591178571cec52c\",\"crypto\":{\"cipher\":\"aes-128-ctr\",\"ciphertext\":\"376148c453bede9949db2089e24dd4b4b683f00f151aaad9b17802b435ad0f64\",\"cipherparams\":{\"iv\":\"427ad6ebb106f463746f78cc7680d4fe\"},\"mac\":\"9cfe0ac9e5dbf6913bbbcbd38932f5a17c97b970bdb7578f7d17c6e34e5f5fa2\",\"kdf\":\"scrypt\",\"kdfparams\":{\"dklen\":32,\"n\":16,\"r\":8,\"p\":1,\"salt\":\"14b081b2affed113a8639a2ef93a0e0fb82cdd7a1ffe04fb547b921ac65376e9\"}},\"id\":\"d7bae128-05e9-4975-98c7-e6c6dc7d2422\",\"version\":3}" password:@"1111"];
    
    //hash time 262144
    NSString * p2 =[[Web3SecretStore sharedInstance] recovery:@"{\"address\":\"a3b8b5b4b1efd9d52b6ecfe2d1802ffe397fee9a\",\"crypto\":{\"cipher\":\"aes-128-ctr\",\"ciphertext\":\"875aeaccf8799027bd3fdb6f41f92ca822987db4d53e4eb6d900f5ff9cb3b733\",\"cipherparams\":{\"iv\":\"6d14d4bbbb6e3c62bf28ddffba547bf5\"},\"mac\":\"92f37ef9359ebd2932a1adaa644013b1fef3fcd3d093e3569c8b4371b937522b\",\"kdf\":\"scrypt\",\"kdfparams\":{\"dklen\":32,\"n\":262144,\"r\":8,\"p\":1,\"salt\":\"eb2079cc1d4b1d4a05cb23b79c032edc376461b92b5f33144b5c66889107f865\"}},\"id\":\"e357f84f-3eb0-4e17-bd93-29f7044f41d7\",\"version\":3}" password:@"9999"];
    
    NSLog(@"%@,%@",p1,p2);
    
    // Override point for customization after application launch.
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
