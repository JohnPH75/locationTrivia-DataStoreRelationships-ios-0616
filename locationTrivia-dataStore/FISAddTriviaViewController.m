//
//  FISAddTriviaViewController.m
//  locationTrivia-dataStore
//
//  Created by John Hussain on 7/5/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddTriviaViewController.h"

@interface FISAddTriviaViewController ()

@property (weak, nonatomic) IBOutlet UITextField *triviumTextField;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;

@end

@implementation FISAddTriviaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    self.triviumTextField.accessibilityIdentifier = @"Trivium TextField";
    self.triviumTextField.accessibilityLabel = @"Trivium TextField";
    
    self.cancelButton.accessibilityIdentifier = @"Cancel Button";
    self.cancelButton.accessibilityLabel = @"Cancel Button";
    
    self.saveButton.accessibilityIdentifier = @"Save Button";
    self.saveButton.accessibilityLabel = @"Save Button";
    
    

    
    
    
    // Do any additional setup after loading the view.
}

- (IBAction)saveButtonTapped:(UIButton *)sender
{
    FISTrivium *trivium = [[FISTrivium alloc] initWithContent:self.triviumTextField.text likes:0];
    
    
    [self.location.trivia addObject:trivium];
    
    NSLog(@"location where trivia is saved: %@",self.location);
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelButtonTapped:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
