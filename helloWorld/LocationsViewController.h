//
//  LocationsViewController.h
//  helloWorld
//
//  Created by Thuy Copeland on 3/14/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocationsViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
{
    NSArray *locationsArray;
    // This is a private array to this interface
}
@end
