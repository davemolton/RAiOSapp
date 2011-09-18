//
//  SecondViewController.h
//  ReefAngel Mobile Client
//
//  Created by Dave on 4/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "tableViewCellInput.h"

@interface SecondViewController : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    IBOutlet UIScrollView *scrollView;
    IBOutlet UITableView *myTableView;
    IBOutlet tableViewCellInput *cell; 
    NSArray *settingsGeneralRows;
    NSArray *settingsBox1Relays;
    NSArray *settingsBox1Vals;
    NSArray *settingsTempLabels;
    NSArray *settingsTempVals;
    NSArray *settingsSectionHeaders;
}

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) IBOutlet UITableView *myTableView;


@end
