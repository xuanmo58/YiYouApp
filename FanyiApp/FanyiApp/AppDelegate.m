//
//  AppDelegate.m
//  FanyiApp
//
//  Created by 1111 on 2017/7/19.
//  Copyright © 2017年 ljl. All rights reserved.
//

#import "AppDelegate.h"
#import "MyTabViewController.h"


#import "iflyMSC/IFlyMSC.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    
//    //存储路径
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
//    NSString *cachePath = [paths objectAtIndex:0];
//    [IFlySetting setLogFilePath:cachePath];
//    
//    //创建语音配置,appid必须要传入，仅执行一次则可
//    NSString *initString = [[NSString alloc] initWithFormat:@"appid=%@",@"596f60cd"];
//    
//    //所有服务启动前，需要确保执行createUtility
//    [IFlySpeechUtility createUtility:initString];
//    return YES;
    
    //存储路径
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *cachePath = [paths objectAtIndex:0];
    [IFlySetting setLogFilePath:cachePath];
    
    //创建语音配置,appid必须要传入，仅执行一次则可
    NSString *initString = [[NSString alloc] initWithFormat:@"appid=%@",@"596f60cd"];
    
    //所有服务启动前，需要确保执行createUtility
    [IFlySpeechUtility createUtility:initString];

    
    
    self.window =[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.backgroundColor =[UIColor blackColor];
    
    self.window.rootViewController =[MyTabViewController new];
    [self.window makeKeyAndVisible];

//    //存储路径
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
//    NSString *cachePath = [paths objectAtIndex:0];
//    [IFlySetting setLogFilePath:cachePath];
//    
//    //创建语音配置,appid必须要传入，仅执行一次则可
//    NSString *initString = [[NSString alloc] initWithFormat:@"appid=%@",@"596f60cd"];
//    
//    //所有服务启动前，需要确保执行createUtility
//    [IFlySpeechUtility createUtility:initString];
//    return YES;

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
