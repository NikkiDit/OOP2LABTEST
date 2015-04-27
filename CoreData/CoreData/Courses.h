//
//  Courses.h
//  CoreData
//
//  Created by Adenike Olatunji on 27/04/2015.
//  Copyright (c) 2015 Adenike Olatunji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Courses : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * students;
@property (nonatomic, retain) NSNumber * room;
@property (nonatomic, retain) NSString * lecturer;
@property (nonatomic, retain) NSSet *studentcourse;
@property (nonatomic, retain) NSManagedObject *lecture;
@property (nonatomic, retain) NSManagedObject *roomlecture;
@end

@interface Courses (CoreDataGeneratedAccessors)

- (void)addStudentcourseObject:(NSManagedObject *)value;
- (void)removeStudentcourseObject:(NSManagedObject *)value;
- (void)addStudentcourse:(NSSet *)values;
- (void)removeStudentcourse:(NSSet *)values;

@end
