// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCBook.h instead.

@import CoreData;

extern const struct FJCBookAttributes {
	__unsafe_unretained NSString *lastRead;
	__unsafe_unretained NSString *title;
} FJCBookAttributes;

extern const struct FJCBookRelationships {
	__unsafe_unretained NSString *anotations;
	__unsafe_unretained NSString *authors;
	__unsafe_unretained NSString *bookCoverPhoto;
	__unsafe_unretained NSString *bookTags;
	__unsafe_unretained NSString *pdf;
} FJCBookRelationships;

@class FJCAnotation;
@class FJCAuthor;
@class FJCBookCoverPhoto;
@class FJCBookTag;
@class FJCPdf;

@interface FJCBookID : NSManagedObjectID {}
@end

@interface _FJCBook : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) FJCBookID* objectID;

@property (nonatomic, strong) NSDate* lastRead;

//- (BOOL)validateLastRead:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* title;

//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *anotations;

- (NSMutableSet*)anotationsSet;

@property (nonatomic, strong) NSSet *authors;

- (NSMutableSet*)authorsSet;

@property (nonatomic, strong) FJCBookCoverPhoto *bookCoverPhoto;

//- (BOOL)validateBookCoverPhoto:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *bookTags;

- (NSMutableSet*)bookTagsSet;

@property (nonatomic, strong) FJCPdf *pdf;

//- (BOOL)validatePdf:(id*)value_ error:(NSError**)error_;

@end

@interface _FJCBook (AnotationsCoreDataGeneratedAccessors)
- (void)addAnotations:(NSSet*)value_;
- (void)removeAnotations:(NSSet*)value_;
- (void)addAnotationsObject:(FJCAnotation*)value_;
- (void)removeAnotationsObject:(FJCAnotation*)value_;

@end

@interface _FJCBook (AuthorsCoreDataGeneratedAccessors)
- (void)addAuthors:(NSSet*)value_;
- (void)removeAuthors:(NSSet*)value_;
- (void)addAuthorsObject:(FJCAuthor*)value_;
- (void)removeAuthorsObject:(FJCAuthor*)value_;

@end

@interface _FJCBook (BookTagsCoreDataGeneratedAccessors)
- (void)addBookTags:(NSSet*)value_;
- (void)removeBookTags:(NSSet*)value_;
- (void)addBookTagsObject:(FJCBookTag*)value_;
- (void)removeBookTagsObject:(FJCBookTag*)value_;

@end

@interface _FJCBook (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveLastRead;
- (void)setPrimitiveLastRead:(NSDate*)value;

- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;

- (NSMutableSet*)primitiveAnotations;
- (void)setPrimitiveAnotations:(NSMutableSet*)value;

- (NSMutableSet*)primitiveAuthors;
- (void)setPrimitiveAuthors:(NSMutableSet*)value;

- (FJCBookCoverPhoto*)primitiveBookCoverPhoto;
- (void)setPrimitiveBookCoverPhoto:(FJCBookCoverPhoto*)value;

- (NSMutableSet*)primitiveBookTags;
- (void)setPrimitiveBookTags:(NSMutableSet*)value;

- (FJCPdf*)primitivePdf;
- (void)setPrimitivePdf:(FJCPdf*)value;

@end
