//
//  Rooms.h
//  CoreData
//
//  Created by Adenike Olatunji on 27/04/2015.
//  Copyright (c) 2015 Adenike Olatunji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Courses;

@interface Rooms : NSManagedObject

@property (nonatomic, retain) NSString * roomNo;
@property (nonatomic, retain) NSSet *lectureRoom;
@end

@interface Rooms (CoreDataGeneratedAccessors)

- (void)addLectureRoomObject:(Courses *)value;
- (void)removeLectureRoomObject:(Courses *)value;
- (void)addLectureRoom:(NSSet *)values;
- (void)removeLectureRoom:(NSSet *)values;

@end
