//
//  tableViewCellInput.m
//  ReefAngel Mobile Client
//
//  Created by Dave on 4/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "tableViewCellInput.h"


@implementation tableViewCellInput
@synthesize textOutlet, labelOutlet;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc
{
    [super dealloc];
}

@end
