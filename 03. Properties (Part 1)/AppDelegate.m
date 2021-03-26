//
//  AppDelegate.m
//  03. Properties (Part 1)
//
//  Created by Dmytro Sayko on 03.12.2020.
//

#import "AppDelegate.h"
#import "DSBoxer.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    DSBoxer *boxer = [[DSBoxer alloc] init];
    boxer.name = @"Vasyliy";
    boxer.age = 32;
    boxer.height = 1.8f;
    boxer.weight = 78.f;
    

    
    NSLog(@"boxer.name %@", boxer.name);
    NSLog(@"boxer.age %li", (long)boxer.age);
    NSLog(@"boxer.height %f", boxer.height);
    NSLog(@"boxer.weight %f", boxer.weight);
     
    [boxer setName:@"Ivan"];
    [boxer setAge:25];
    [boxer setHeight:1.5f];
    [boxer setWeight:45.f];
    
    
    
    NSLog(@"boxer.name %@", [boxer name]);
    NSLog(@"boxer.age %li", [boxer age]);
    NSLog(@"boxer.height %f", [boxer height]);
    NSLog(@"boxer.weight %f", [boxer weight]);

    
    NSLog(@"boxer.name %@", boxer.name);
 

    
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
