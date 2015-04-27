//
//  CourseInfoViewController.m
//  CoreData
//
//  Created by Adenike Olatunji on 27/04/2015.
//  Copyright (c) 2015 Adenike Olatunji. All rights reserved.
//

#import "CourseInfoViewController.h"
#import "CoreDataStack.h"
#import "Students.h"


@interface CourseInfoViewController () <UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *studentGrade;
@end

@implementation CourseInfoViewController






- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    _studentGrade = [self studentGradeList].mutableCopy ?: [NSMutableArray array];
}

- (NSArray*)studentGradeList{
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Student"];
    NSArray *results = [[CoreDataStack sharedInstance].managedObjectContext executeFetchRequest:fetchRequest error:nil];
    return results;
}
-(void)courseDetail:(NSManagedObject *)query{
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return _studentGrade.count;
}


 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
 {
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listCell" forIndexPath:indexPath];
 
 // Configure the cell...
 
return cell;
 }


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
