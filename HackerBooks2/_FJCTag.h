// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCTag.h instead.

@import CoreData;

extern const struct FJCTagAttributes {
	__unsafe_unretained NSString *tag;
} FJCTagAttributes;

extern const struct FJCTagRelationships {
	__unsafe_unretained NSString *books;
} FJCTagRelationships;

@class FJCBook;

@interface FJCTagID : NSManagedObjectID {}
@end

@interface _FJCTag : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) FJCTagID* objectID;

@property (nonatomic, strong) NSString* tag;

//- (BOOL)validateTag:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *books;

- (NSMutableSet*)booksSet;

@end

@interface _FJCTag (BooksCoreDataGeneratedAccessors)
- (void)addBooks:(NSSet*)value_;
- (void)removeBooks:(NSSet*)value_;
- (void)addBooksObject:(FJCBook*)value_;
- (void)removeBooksObject:(FJCBook*)value_;

@end

@interface _FJCTag (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveTag;
- (void)setPrimitiveTag:(NSString*)value;

- (NSMutableSet*)primitiveBooks;
- (void)setPrimitiveBooks:(NSMutableSet*)value;

@end
