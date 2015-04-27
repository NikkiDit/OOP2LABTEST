//
//  CoreDataStack.h
//  CoreData
//
//  Created by Adenike Olatunji on 27/04/2015.
//  Copyright (c) 2015 Adenike Olatunji. All rights reserved.
//

#import <Foundation/Foundation.h>

@import CoreData;

@interface CoreDataStack : NSObject



@property (nonatomic, readonly) NSManagedObjectContext        *managedObjectContext;
@property (nonatomic, readonly) NSPersistentStoreCoordinator  *persistentStoreCoordinator;
@property (nonatomic, readonly) NSManagedObjectModel          *managedObjectModel;

+ (instancetype)sharedInstance;

- (void)save;



@end
