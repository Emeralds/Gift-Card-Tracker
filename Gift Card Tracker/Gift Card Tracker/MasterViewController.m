//
//  MasterViewController.m
//  Gift Card Tracker
//
//  Created by Benjamin King on 6/1/13.
//  Copyright (c) 2013 Benjamin King. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

#import "SVProgressHUD.h"

@interface MasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation MasterViewController

@synthesize dataRows = _dataRows;
@synthesize cardTitleField = _cardTitleField;
@synthesize cardAmountLeftField = _cardAmountLeftField;
@synthesize cardExpirationField = _cardExpirationField;
@synthesize cardNumberField = _cardNumberField;
@synthesize cardSmallImage = _cardSmallImage;

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(newCardButtonPressed:)];
    self.navigationItem.rightBarButtonItem = addButton;
    
    [SVProgressHUD showSuccessWithStatus:@"Loading..."];
    
//    // Have a background image for 
//    self.parentViewController.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"pinstripe bkg"]];
//    self.tableView.backgroundColor = [UIColor clearColor];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
//    [_objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

//    NSDate *object = _objects[indexPath.row];
//    cell.textLabel.text = [object description];
    
    
    // Fills in the cell fields.
        // Need to properly set up the backend
    UITextField *cardTitleField = (UITextField *)[cell viewWithTag:1];
//    cardTitleField.text = [obj objectForKey:@"Card_Title"];
    
    UITextField *cardAmountLeftField = (UITextField *)[cell viewWithTag:2];
//    cardAmountLeftField.text = [obj objectForKey:@"Card_Amount_Left"];
    
    UITextField *cardExpirationField = (UITextField *)[cell viewWithTag:3];
//    cardExpirationField.text = [obj objectForKey:@"Card_Expiration"];
    
    UIImageView *cardSmallImage = (UIImageView *)[cell viewWithTag:4];
//    cardSmallImage.image = [obj objectForKey:@"Card_Small_Image"];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

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
#pragma mark - Segue Method
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    if ([[segue identifier] isEqualToString:@"showDetail"]) {
//       self.selectedCard = [[Card alloc] init];
//        NSDictionary *obj;
//        NSIndexPath *indexPath;
//
//        indexPath = [self.tableView indexPathForSelectedRow];
//        obj = [self.dataRows [objectAtIndex.indexPath.row]];
//
//        [[segue destinationViewController] setDetailItem:_objects];
//    }
    if ([[segue identifier] isEqualToString:@"showNewCard"]) {
        // Statement here
    }
    if ([[segue identifier] isEqualToString:@"AddNewCard"]) {
        // Statement here
    }
}

#pragma mark - Add Method
- (void)newCardButtonPressed:(id)sender
{
    // Insert method here
    UIStoryboard *storyboard =[UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UINavigationController *addNewCardVC = [storyboard instantiateViewControllerWithIdentifier:@"AddNewCard"];
    addNewCardVC.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:addNewCardVC animated:YES completion:Nil];
}

@end
