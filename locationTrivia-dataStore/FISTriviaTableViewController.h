//
//  FISTriviaTableTableViewController.h
//  locationTrivia-dataStore
//
//  Created by John Hussain on 7/5/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISAddTriviaViewController.h"
#import "FISTrivium.h"
#import "FISLocation.h"

@interface FISTriviaTableViewController : UITableViewController

@property (strong, nonatomic) FISLocation *location;

@end
