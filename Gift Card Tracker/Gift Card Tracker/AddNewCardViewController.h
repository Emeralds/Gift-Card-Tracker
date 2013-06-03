//
//  AddNewCardViewController.h
//  Gift Card Tracker
//
//  Created by Benjamin King on 6/2/13.
//  Copyright (c) 2013 Benjamin King. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddNewCardViewController : UITableViewController

@property (nonatomic, weak) IBOutlet UIBarButtonItem *cancelButton;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *saveButton;

@property (nonatomic, weak) IBOutlet UITextField *cardTitleField;
@property (nonatomic, weak) IBOutlet UITextField *cardBaseAmountField;
@property (nonatomic, weak) IBOutlet UITextField *cardExpirationField;
@property (nonatomic, weak) IBOutlet UITextField *cardNumberField;
@property (nonatomic, weak) IBOutlet UIImage *cardImageField;

- (IBAction)cancelButtonClick:(id)sender;
- (IBAction)saveButtonClick:(id)sender;
- (IBAction)pictureButtonClick:(id)sender;

@end
