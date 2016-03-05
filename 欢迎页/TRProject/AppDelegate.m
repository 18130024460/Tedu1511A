//
//  AppDelegate.m
//  TRProject
//
//  Created by jiyingxin on 16/2/4.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "AppDelegate.h"
#import "HuanyingyeViewController.h"
#import "MainViewController.h"
#import "ViewController.h"
#import "WangyiNetManager.h"
#import "KejiNetManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
- (void)changeRootCV{
    //判断是否第一次登陆
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([userDefaults objectForKey:@"FirstLoad"] == nil) {
        [userDefaults setBool:NO forKey:@"FirstLoad"];
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        HuanyingyeViewController *vc = [HuanyingyeViewController new];
        vc = [sb instantiateViewControllerWithIdentifier:@"HuanyingyeViewController"];
        self.window.rootViewController = vc;
        NSLog(@"第一次登陆");
    }else{
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        ViewController *vc = [ViewController new];
        MainViewController *vc1 = [MainViewController new];
        vc = [sb instantiateViewControllerWithIdentifier:@"ViewController"];
        vc1 = [sb instantiateViewControllerWithIdentifier:@"MainViewController"];
        self.window.rootViewController = vc1;
    }
    
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self changeRootCV];
//    [KejiNetManager getKejiForID:0 competionHandle:^(id model, NSError *error) {
//        NSLog(@"000");
//    }];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
