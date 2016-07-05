//
//  FISAddLocationViewController.m
//  locationTrivia-dataStore
//
//  Created by John Hussain on 7/5/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"

@interface FISAddLocationViewController () <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *latitudeField;
@property (weak, nonatomic) IBOutlet UITextField *longitudeField;

@property (weak, nonatomic) IBOutlet UIButton *submitButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;

@property (strong, nonatomic) CLLocationManager *locationManager;

@end

@implementation FISAddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameField.accessibilityLabel = @"nameField";
    self.nameField.accessibilityIdentifier = @"nameField";
    
    self.latitudeField.accessibilityLabel = @"latitudeField";
    self.latitudeField.accessibilityIdentifier = @"latitudeField";
    
    self.longitudeField.accessibilityLabel = @"longitudeField";
    self.longitudeField.accessibilityIdentifier = @"longitudeField";
    
    self.submitButton.accessibilityLabel = @"saveButton";
    self.submitButton.accessibilityIdentifier = @"saveButton";
    
    self.cancelButton.accessibilityLabel = @"cancelButton";
    self.cancelButton.accessibilityIdentifier = @"cancelButton";
    
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    self.locationManager.distanceFilter = 50;
    [self.locationManager requestWhenInUseAuthorization];
    
    [self.locationManager startUpdatingLocation];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitButtonTapped:(id)sender {
    CGFloat latitude = [self.latitudeField.text doubleValue];
    CGFloat longitude = [self.longitudeField.text doubleValue];
    
    FISLocation *newLocation = [[FISLocation alloc] initWithName:self.nameField.text latitude:latitude longitude:longitude];
    
    [[FISLocationsDataStore sharedLocationsDataStore].locations addObject:newLocation];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
