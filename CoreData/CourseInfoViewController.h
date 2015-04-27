//
//  CourseInfoViewController.h
//  CoreData
//
//  Created by Adenike Olatunji on 27/04/2015.
//  Copyright (c) 2015 Adenike Olatunji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CourseInfoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *courseName;

@property (weak, nonatomic) IBOutlet UILabel *lecturerName;
@property (weak, nonatomic) IBOutlet UILabel *roomNum;
@property (weak, nonatomic) IBOutlet UITableView *listStudentGrade;
-(void)courseDetail :(NSManagedObject *)query;
    

@end
