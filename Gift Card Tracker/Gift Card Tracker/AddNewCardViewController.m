//
//  AddNewCardViewController.m
//  Gift Card Tracker
//
//  Created by Benjamin King on 6/2/13.
//  Copyright (c) 2013 Benjamin King. All rights reserved.
//

#import "AddNewCardViewController.h"
#import "SVProgressHUD.h"
#import "MasterViewController.h"

@interface AddNewCardViewController ()

@end

@implementation AddNewCardViewController

@synthesize cardTitleField = _cardTitleField;
@synthesize cardBaseAmountField = _cardBaseAmountField;
@synthesize cardExpirationField= _cardExpirationField;
@synthesize cardImageField = _cardImageField;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//#warning Incomplete method implementation.
//    // Return the number of rows in the section.
//    return 4;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *CellIdentifier = @"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
//    
//    // Configure the cell...
//    
//    return cell;
//}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/
- (IBAction)cancelButtonClick:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)saveButtonClick:(id)sender
{
    [SVProgressHUD showSuccessWithStatus:@"Saving..."];
    NSString *cardTitle = self.cardTitleField.text;
    if (cardTitle.length == 0)
    {
        [SVProgressHUD showErrorWithStatus:@"Please input a card title"];
    }
    NSString *cardBaseAmount = self.cardBaseAmountField.text;
    if (cardBaseAmount.length == 0)
    {
        [SVProgressHUD showErrorWithStatus:@"Please input a base amount"];
    }
    NSString *cardExpiration = self.cardExpirationField.text;
    if (cardExpiration.length == 0)
    {
        [SVProgressHUD showErrorWithStatus:@"Please input an expiration date"];
    }
//    UIImage *cardImage = nil; // self.cardImageField;
//    if (cardImage == nil) {
//        // Change image to base card image
//        UIImage *cardImage = [UIImage imageNamed:@"Default.png"];
//    }
    
    if (cardTitle.length > 0 && cardBaseAmount.length > 0 && cardExpiration.length > 0) {
        NSArray *fields = [[NSArray alloc] initWithObjects:@"Card_Title", @"Card_Base_Amount", @"Card_Expiration",/*  @"Card_Image"*/ nil];
        NSArray *values = [[NSArray alloc] initWithObjects:cardTitle, cardBaseAmount, cardExpiration,/* cardImage,*/ nil];
        NSDictionary *dict = [[NSDictionary alloc] initWithObjects:values forKeys:fields];
        
        
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}



@end
