//
//  Students.h
//  CoreData
//
//  Created by Adenike Olatunji on 27/04/2015.
//  Copyright (c) 2015 Adenike Olatunji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Courses;

@interface Students : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * grades;
@property (nonatomic, retain) NSSet *student;
@end

@interface Students (CoreDataGeneratedAccessors)

- (void)addStudentObject:(Courses *)value;
- (void)removeStudentObject:(Courses *)value;
- (void)addStudent:(NSSet *)values;
- (void)removeStudent:(NSSet *)values;

@end
