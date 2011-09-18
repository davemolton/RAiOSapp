//
//  tableViewCellInput.h
//  ReefAngel Mobile Client
//
//  Created by Dave on 4/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface tableViewCellInput : UITableViewCell {
    IBOutlet UILabel *labelOutlet;
    IBOutlet UITextField *textOutlet;

}

@property (nonatomic,retain) UILabel *labelOutlet;
@property (nonatomic,retain) UITextField *textOutlet;

@end
