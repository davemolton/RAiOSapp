//
//  FirstViewController.m
//  ReefAngel Mobile Client
//
//  Created by Dave on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"



@implementation FirstViewController
@synthesize temp1Label, temp2Label, temp3Label, pHLabel, scrollView;
@synthesize box1Relay1, box1Relay2, box1Relay3, box1Relay4, box1Relay5, box1Relay6, box1Relay7, box1Relay8;
@synthesize b1R1Indicator, b1R2Indicator, b1R3Indicator,  b1R4Indicator, b1R5Indicator, b1R6Indicator, b1R7Indicator, b1R8Indicator;
@synthesize wifiUrl,fullUrl;
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
        
    [super viewDidLoad];        
    [scrollView setScrollEnabled:YES];
    [scrollView setContentSize:CGSizeMake(320, 515)];   
    UIImage *img = [UIImage imageNamed:@"bground.png"];
    [scrollView setBackgroundColor:[UIColor colorWithPatternImage:img]];   
    
    //TODO: The below URL needs to be populated from the settings file
    //Should look something like "http://192.168.1.110:2000" or "http://sometestdns.dyndns.com:2000"
    self.wifiUrl = @"http://192.168.1.110:2000"; 
    
    self.fullUrl = [NSString stringWithFormat:@"%@/r99 ",wifiUrl];
    [self SendRequest:self.fullUrl];
    
        
}
-(void)UpdateUI:(RA*)ra
{
    if(!raParam == nil)
    {
        
        temp1Label.text = raParam.formattedTemp1;
        temp2Label.text = raParam.formattedTemp2;
        temp3Label.text = raParam.formattedTemp3;
        pHLabel.text    = raParam.formattedpH;
        
        
        NSDateFormatter *formatter = [[[NSDateFormatter alloc]init]autorelease];
        [formatter setDateFormat:@"MMM dd yyyy : HH:mm:ss"];
        NSDate *date = [NSDate date];
        lastUpdatedLabel.text = [formatter stringFromDate:date];        
        
        if(!raParam.isRelay1OFFMask && !raParam.isRelay1ONMask)
        {box1Relay1.on = raParam.isRelay1Active;b1R1Indicator.hidden = YES;}
        else
        {box1Relay1.on = raParam.isRelay1ONMask;b1R1Indicator.hidden = NO;}
        if(!raParam.isRelay2OFFMask && !raParam.isRelay2ONMask)
        {box1Relay2.on = raParam.isRelay2Active;b1R2Indicator.hidden = YES;}
        else
        {box1Relay2.on = raParam.isRelay2ONMask;b1R2Indicator.hidden= NO;}
        if(!raParam.isRelay3OFFMask && !raParam.isRelay3ONMask)
        {box1Relay3.on = raParam.isRelay3Active;b1R3Indicator.hidden = YES;}
        else
        {box1Relay3.on = raParam.isRelay3ONMask;b1R3Indicator.hidden = NO;}
        if(!raParam.isRelay4OFFMask && !raParam.isRelay4ONMask)
        {box1Relay4.on = raParam.isRelay4Active;b1R4Indicator.hidden = YES;}
        else
        {box1Relay4.on = raParam.isRelay4ONMask;b1R4Indicator.hidden = NO;}
        if(!raParam.isRelay5OFFMask && !raParam.isRelay5ONMask)
        {box1Relay5.on = raParam.isRelay5Active;b1R5Indicator.hidden = YES;}
        else
        {box1Relay5.on = raParam.isRelay5ONMask;b1R5Indicator.hidden = NO;}
        if(!raParam.isRelay6OFFMask && !raParam.isRelay6ONMask)
        {box1Relay6.on = raParam.isRelay6Active;b1R6Indicator.hidden = YES;}
        else
        {box1Relay6.on = raParam.isRelay6ONMask;b1R6Indicator.hidden = NO;}
        if(!raParam.isRelay7OFFMask && !raParam.isRelay7ONMask)
        {box1Relay7.on = raParam.isRelay7Active;b1R7Indicator.hidden = YES;}
        else
        {box1Relay7.on = raParam.isRelay7ONMask;b1R7Indicator.hidden = NO;}
        if(!raParam.isRelay8OFFMask && !raParam.isRelay8ONMask)
        {box1Relay8.on = raParam.isRelay8Active;b1R8Indicator.hidden = YES;}
        else
        {box1Relay8.on = raParam.isRelay8ONMask;b1R8Indicator.hidden = NO;}
        
        
        
        raParam = nil;
        [raParam release];
    }

}
-(void)SendRequest:(NSString *)url
{
    controller = [[[RA_WifiController alloc]init] autorelease];
    raParam = [controller sendRequest:url];
    [self UpdateUI:raParam];
     
    controller = nil;
    [controller release];
    
}

-(IBAction)refreshParams
{
    self.fullUrl = [NSString stringWithFormat:@"%@/r99 ",self.wifiUrl];
    [self SendRequest:self.fullUrl];

    
}
-(IBAction) toggleRelay:(UISwitch*)sender
{
    if([sender class] == [UISwitch class])
    {
        UISwitch *swit = (UISwitch*)sender;        
        self.fullUrl = [NSString stringWithFormat:@"%@/r%@%@",self.wifiUrl,[NSString stringWithFormat:@"%d",swit.tag],
                        swit.on ? @"1" : @"0"];
        [self SendRequest:fullUrl];
        [swit release];
    }
    else //if([sender class] == [UIButton class])
    {
        
        UIButton *but = (UIButton*)sender;
        NSString *tag = [NSString stringWithFormat:@"%d",but.tag];    
        self.fullUrl = [NSString stringWithFormat:@"%@/r%@%@",self.wifiUrl,tag,@"2"];
       [self SendRequest:fullUrl];
        [but release];
    }    
    

  }

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload
{
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc
{
    [super dealloc];
}

@end
