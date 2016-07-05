//
//  FISLocationsDataStore.h
//  locationTrivia-dataStore
//
//  Created by John Hussain on 7/5/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISTrivium.h"
#import "FISLocation.h"

@interface FISLocationsDataStore : NSObject

@property (strong, nonatomic) NSMutableArray *locations;

+ (instancetype)sharedLocationsDataStore;

@end
