//
//  LocationsViewController.m
//  helloWorld
//
//  Created by Thuy Copeland on 3/14/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "LocationsViewController.h"

@interface LocationsViewController ()

@end

@implementation LocationsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    locationsArray = [NSArray arrayWithObjects: @"LasVegas"
                                                ,@"Hawaii"
                                                ,@"Vietnam"
                                                ,@"London"
                                                ,@"Paris"
                                                , nil];
                                                // This is step 11. You are loading up the array with info. Notice the preferred method for listing array objects.
    }
       
// Step 13. New function. Build the loop to add cells to the table
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* tableCell = @"SimpleTableCell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:tableCell];
    if( cell == Nil )
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableCell];
        // Step 14. We are now creating something inside of something! This allocates memory to this cell.
    }
    cell.textLabel.text = [locationsArray objectAtIndex:indexPath.row];
    
    //Step 15. Every cell that gets imported is going to create the text label for whatever the index is for that one.
    cell.imageView.image = [UIImage imageNamed:@"skyrim.jpg"]; //Step 21.
    return cell;
        
}
       
       
       //Step 12. This is a function NSInteger. We'll return the number of cells we have.
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [locationsArray count];
    // How many objects in our array and return the number
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
