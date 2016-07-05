//
//  FISLocationsTableViewController.h
//  locationTrivia-dataStore
//
//  Created by John Hussain on 7/5/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISAddLocationViewController.h"
#import "FISTriviaTableViewController.h"
#import "FISAddTriviaViewController.h"
#import "FISLocationsDataStore.h"
#import "FISLocation.h"

@interface FISLocationsTableViewController : UITableViewController

@property (strong, nonatomic) FISLocationsDataStore *store;

@end
