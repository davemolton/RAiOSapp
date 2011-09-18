//
//  WonderXMLAppDelegate.m
//  WonderXML
//
//  Created by Luke Du on 1/06/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "WonderXMLAppDelegate.h"
#import "WonderXMLViewController.h"
#import "XmlParser.h"

#import "User.h"

@implementation WonderXMLAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	XmlParser *parser = [[[XmlParser alloc] init] autorelease];
	User *user = [[[User alloc] init] autorelease];
	
	//xml string to object
	
	NSString *testUserString = @"<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><User xmlns:=\"http://bluepinme.com\"><billingSchedule>00 00 08 * * *</billingSchedule><brandID>9908315</brandID><changePassword>false</changePassword><expiration>1970-01-01T00:00:00Z</expiration><lastLogIn>1970-01-01T00:00:00Z</lastLogIn><password>bbbb</password><profileID>1968515</profileID><userID>1831917</userID><username>fffffff</username></User>";
	
	NSMutableArray *userArray = [parser fromXml:testUserString withObject:user];
	NSLog(@"userArray :: %@", [userArray objectAtIndex:0]);
	
	//object to xml string
	
	user = [userArray objectAtIndex:0];
	NSNumberFormatter * numberFomatter = [[[NSNumberFormatter alloc] init] autorelease];
	[numberFomatter setNumberStyle:NSNumberFormatterDecimalStyle];
	NSNumber * aNumber = [numberFomatter numberFromString:@"123456"];
	
	user.userID = aNumber;
	
	
	user.username = @"test";
	
	
	NSString *userString = [parser toXml:user andTag:@"User" inNameSpace:@"http://bluepinme.com"];

	
	NSLog(@"userString :: %@", userString);
	
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	
	
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
