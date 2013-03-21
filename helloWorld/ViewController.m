//
//  ViewController.m
//  helloWorld
//
//  Created by Thuy Copeland on 3/14/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "ViewController.h"
#import "LocationsViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)buttonPressed:(id)sender
{
    [self.label setText:@"Hello World <3"];
}

-(IBAction)button2Pressed:(id)sender
{
    // when button pushed, point to where the LocationsViewController nib lives.
    LocationsViewController *view;
    
    // allocate memory to this view
    view = [LocationsViewController alloc];
    
    // present the view
    [self presentViewController:view animated:YES completion:Nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
