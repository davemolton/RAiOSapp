//
//  FirstViewController.h
//  ReefAngel Mobile Client
//
//  Created by Dave on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "ASIHTTPRequest.h"
#import "RA_ParamObject.h"
#import "RA_WifiController.h"

@interface FirstViewController : UIViewController<UIApplicationDelegate,UITabBarDelegate>{

    UILabel *temp1Label, *temp2Label, *temp3Label, *pHLabel, *lastUpdatedLabel;
    UIButton *b1R1Indicator, *b1R2Indicator, *b1R3Indicator, *b1R4Indicator, *b1R5Indicator, *b1R6Indicator, *b1R7Indicator,
             *b1R8Indicator;
            
    IBOutlet UISwitch *box1Relay1, *box1Relay2, *box1Relay3, *box1Relay4, *box1Relay5, *box1Relay6, *box1Relay7, *box1Relay8;
    NSString *fullUrl;
    NSString *wifiUrl;
    RA *raParam;
    RA_WifiController *controller;
    IBOutlet UIScrollView *scrollView;
}
@property (readwrite, copy) NSString *wifiUrl;
@property (readwrite, copy) NSString *fullUrl;
@property (nonatomic, retain) IBOutlet UILabel *temp1Label;
@property (nonatomic, retain) IBOutlet UILabel *temp2Label;
@property (nonatomic, retain) IBOutlet UILabel *temp3Label;
@property (nonatomic, retain) IBOutlet UILabel *pHLabel;
@property (nonatomic, retain) IBOutlet UILabel *lastUpdatedLabel;
@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay1;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay2;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay3;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay4;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay5;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay6;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay7;
@property (nonatomic, retain) IBOutlet UISwitch *box1Relay8;
@property (nonatomic, retain) IBOutlet UIButton *b1R1Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b1R2Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b1R3Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b1R4Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b1R5Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b1R6Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b1R7Indicator;
@property (nonatomic, retain) IBOutlet UIButton *b1R8Indicator;



-(IBAction) refreshParams;
-(IBAction) toggleRelay:(id)sender;
-(void)SendRequest:(NSString *)url;
-(void)UpdateUI:(RA*)ra;
@end
