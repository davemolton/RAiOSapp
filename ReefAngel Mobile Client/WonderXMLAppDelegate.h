//
//  WonderXMLAppDelegate.h
//  WonderXML
//
//  Created by Luke Du on 1/06/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WonderXMLViewController;

@interface WonderXMLAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    WonderXMLViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet WonderXMLViewController *viewController;

@end

