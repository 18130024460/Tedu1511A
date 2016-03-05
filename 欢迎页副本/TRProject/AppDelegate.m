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
        self.window.rootViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"RESideMenu"];
    }
    //电池条设置为白色
    /*
     在 info.plist 里面添加 :
     View controller-based status bar appearance = NO
     想要设置成为黑色把 setStatusBarStyle: 设置成为 UIStatusBarStyleDefault
     */
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
    
    
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self changeRootCV];
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
