//
//  SecondViewController.m
//  ReefAngel Mobile Client
//
//  Created by Dave on 4/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"


@implementation SecondViewController

@synthesize scrollView;
@synthesize myTableView;
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    
    [super viewDidLoad];        
    [scrollView setScrollEnabled:YES];
    [scrollView setContentSize:CGSizeMake(320, 515)];



    settingsBox1Relays = [[NSArray arrayWithObjects:@"R1 Name:", @"R2 Name:", @"R3 Name:", @"R4 Name:", @"R5 Name:", @"R6 Name:", @"R7 Name:", @"R8 Name:", nil]retain];

    //TODO: These relay box names need to be pulled from the settings file that doesn't yet exist
    //**Also need to support a second expansion box also**    
    settingsBox1Vals = [[NSArray arrayWithObjects:@"ATO", @"Daylights", @"Actinics", @"WM1", @"WM2", @"Center Pump", @"Heater", @"Skimmer",nil]retain];
    settingsGeneralRows = [[NSArray arrayWithObjects:@"Wifi URL:",nil]retain];
    settingsSectionHeaders = [[NSArray arrayWithObjects:@"General",@"Temp Labels",@"Relay Box1",nil]retain];
    settingsTempLabels = [[NSArray arrayWithObjects:@"Temp1:",@"Temp2",@"Temp3", nil]retain];
    settingsTempVals = [[NSArray arrayWithObjects:@"Water:",@"Room1:",@"Room2:", nil]retain];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identity = @"MainCell";
    int section = [indexPath section];
    int row = [indexPath row];

    cell = (tableViewCellInput *)[tableView dequeueReusableCellWithIdentifier:identity];

    if(cell == nil)
    {   [[NSBundle mainBundle] loadNibNamed:@"tableViewCellInput" owner:self options:nil];        
        //cell = [[[tableViewCellInput alloc]initWithFrame:CGRectZero reuseIdentifier:identity]autorelease];
    }
    
    if(section == 0)
    {
        cell.textOutlet.text = @"http://testURL@dyndns.org:2000";
        cell.labelOutlet.text = [settingsGeneralRows objectAtIndex:row];
    }
    else if(section ==1)
    {
        cell.textOutlet.text = [settingsTempVals objectAtIndex:row];
        cell.labelOutlet.text = [settingsTempLabels objectAtIndex:row];
    }
    else{
        cell.textOutlet.text = [settingsBox1Vals objectAtIndex:row];
        cell.labelOutlet.text = [settingsBox1Relays objectAtIndex:row];
    }

    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    int rows;
    switch(section)
    {
        case 0:
            rows = [settingsGeneralRows count];
            break;
        case 1:
            rows = [settingsTempLabels count];
            break;
        case 2:
            rows = [settingsBox1Relays count];
            break;
        default:
            rows = 1;
            break;        
    }
    return rows;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [settingsSectionHeaders count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [settingsSectionHeaders objectAtIndex:section];
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
