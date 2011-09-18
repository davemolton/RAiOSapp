//
//  ReefAngel_Mobile_ClientAppDelegate.h
//  ReefAngel Mobile Client
//
//  Created by Dave on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReefAngel_Mobile_ClientAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {

    UIWindow *window;
    
    
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
