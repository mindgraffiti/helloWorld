//
//  ViewController.h
//  helloWorld
//
//  Created by Thuy Copeland on 3/14/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong,nonatomic) IBOutlet UILabel *label;
-(IBAction)buttonPressed:(id)sender;
-(IBAction)button2Pressed:(id)sender;
@end
