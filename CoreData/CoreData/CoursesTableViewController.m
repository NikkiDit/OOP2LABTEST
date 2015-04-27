//
//  CoursesTableViewController.m
//  CoreData
//
//  Created by Adenike Olatunji on 27/04/2015.
//  Copyright (c) 2015 Adenike Olatunji. All rights reserved.
//

#import "CoursesTableViewController.h"
#import "CoreDataStack.h"
#import "CourseInfoViewController.h"
#import "Courses.h"

@interface CoursesTableViewController ()

@property (nonatomic, strong) NSMutableArray *courses;

@end

@implementation CoursesTableViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    _courses= [self courseList].mutableCopy ?: [NSMutableArray array];
}

- (NSArray*)courseList{
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Courses"];
    NSArray *results = [[CoreDataStack sharedInstance].managedObjectContext executeFetchRequest:fetchRequest error:nil];
    return results;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

// Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return _courses.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"courseCell" forIndexPath:indexPath];
    Courses *course =_courses[indexPath.row];
    
    cell.textLabel.text = course.name;
    
    return cell;
}


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
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSManagedObject *selectedCourse = [self.courses objectAtIndex:[[self.tableView indexPathForSelectedRow] row]];
        CourseInfoViewController *destViewController = segue.destinationViewController;
        [destViewController courseDetail: selectedCourse];
}
}
@end
