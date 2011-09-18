//
//  RA_WifiController.h
//  ReefAngel Mobile Client
//
//  Created by Dave on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RA_ParamObject.h"
#import "XmlParser.h"
#import "ASIHTTPRequest.h"

@interface RA_WifiController : NSObject {
    
    NSString *urlLocation;
    RA *latestParams;
    
}

-(RA *)sendRequest : (NSString *) controllerUrl;
-(void)formatRA : (RA *) params;
-(NSString *)formatTemp : (NSNumber *) temp;
-(NSString *) formatPh : (NSNumber *) pH;
-(void)updateRelayBoxes : (RA *) ra;
-(NSString *)buildRelayBinary : (NSNumber *)relayByte;
@end
