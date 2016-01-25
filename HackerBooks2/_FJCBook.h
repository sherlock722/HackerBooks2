// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCBook.h instead.

@import CoreData;

extern const struct FJCBookAttributes {
	__unsafe_unretained NSString *creationBook;
	__unsafe_unretained NSString *modificationBook;
	__unsafe_unretained NSString *title;
} FJCBookAttributes;

extern const struct FJCBookRelationships {
	__unsafe_unretained NSString *anotationPhoto;
	__unsafe_unretained NSString *authors;
	__unsafe_unretained NSString *localization;
	__unsafe_unretained NSString *pdf;
	__unsafe_unretained NSString *tags;
} FJCBookRelationships;

@class FJCAnotationPhoto;
@class FJCAuthor;
@class FJCLocalization;
@class FJCPdf;
@class FJCTag;

@interface FJCBookID : NSManagedObjectID {}
@end

@interface _FJCBook : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) FJCBookID* objectID;

@property (nonatomic, strong) NSDate* creationBook;

//- (BOOL)validateCreationBook:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* modificationBook;

//- (BOOL)validateModificationBook:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* title;

//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) FJCAnotationPhoto *anotationPhoto;

//- (BOOL)validateAnotationPhoto:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *authors;

- (NSMutableSet*)authorsSet;

@property (nonatomic, strong) FJCLocalization *localization;

//- (BOOL)validateLocalization:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) FJCPdf *pdf;

//- (BOOL)validatePdf:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *tags;

- (NSMutableSet*)tagsSet;

@end

@interface _FJCBook (AuthorsCoreDataGeneratedAccessors)
- (void)addAuthors:(NSSet*)value_;
- (void)removeAuthors:(NSSet*)value_;
- (void)addAuthorsObject:(FJCAuthor*)value_;
- (void)removeAuthorsObject:(FJCAuthor*)value_;

@end

@interface _FJCBook (TagsCoreDataGeneratedAccessors)
- (void)addTags:(NSSet*)value_;
- (void)removeTags:(NSSet*)value_;
- (void)addTagsObject:(FJCTag*)value_;
- (void)removeTagsObject:(FJCTag*)value_;

@end

@interface _FJCBook (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveCreationBook;
- (void)setPrimitiveCreationBook:(NSDate*)value;

- (NSDate*)primitiveModificationBook;
- (void)setPrimitiveModificationBook:(NSDate*)value;

- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;

- (FJCAnotationPhoto*)primitiveAnotationPhoto;
- (void)setPrimitiveAnotationPhoto:(FJCAnotationPhoto*)value;

- (NSMutableSet*)primitiveAuthors;
- (void)setPrimitiveAuthors:(NSMutableSet*)value;

- (FJCLocalization*)primitiveLocalization;
- (void)setPrimitiveLocalization:(FJCLocalization*)value;

- (FJCPdf*)primitivePdf;
- (void)setPrimitivePdf:(FJCPdf*)value;

- (NSMutableSet*)primitiveTags;
- (void)setPrimitiveTags:(NSMutableSet*)value;

@end
