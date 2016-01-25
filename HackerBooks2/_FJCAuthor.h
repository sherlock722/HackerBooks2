// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCAuthor.h instead.

@import CoreData;

extern const struct FJCAuthorAttributes {
	__unsafe_unretained NSString *author;
} FJCAuthorAttributes;

extern const struct FJCAuthorRelationships {
	__unsafe_unretained NSString *books;
} FJCAuthorRelationships;

@class FJCBook;

@interface FJCAuthorID : NSManagedObjectID {}
@end

@interface _FJCAuthor : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) FJCAuthorID* objectID;

@property (nonatomic, strong) NSString* author;

//- (BOOL)validateAuthor:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *books;

- (NSMutableSet*)booksSet;

@end

@interface _FJCAuthor (BooksCoreDataGeneratedAccessors)
- (void)addBooks:(NSSet*)value_;
- (void)removeBooks:(NSSet*)value_;
- (void)addBooksObject:(FJCBook*)value_;
- (void)removeBooksObject:(FJCBook*)value_;

@end

@interface _FJCAuthor (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveAuthor;
- (void)setPrimitiveAuthor:(NSString*)value;

- (NSMutableSet*)primitiveBooks;
- (void)setPrimitiveBooks:(NSMutableSet*)value;

@end
