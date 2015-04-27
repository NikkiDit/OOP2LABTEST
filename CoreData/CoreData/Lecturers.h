//
//  Lecturers.h
//  CoreData
//
//  Created by Adenike Olatunji on 27/04/2015.
//  Copyright (c) 2015 Adenike Olatunji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Courses;

@interface Lecturers : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) Courses *lecturercourse;

@end
