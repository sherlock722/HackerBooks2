// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCBookCoverPhoto.h instead.

@import CoreData;

extern const struct FJCBookCoverPhotoAttributes {
	__unsafe_unretained NSString *photoCover;
	__unsafe_unretained NSString *remoteURLString;
} FJCBookCoverPhotoAttributes;

extern const struct FJCBookCoverPhotoRelationships {
	__unsafe_unretained NSString *book;
} FJCBookCoverPhotoRelationships;

@class FJCBook;

@interface FJCBookCoverPhotoID : NSManagedObjectID {}
@end

@interface _FJCBookCoverPhoto : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) FJCBookCoverPhotoID* objectID;

@property (nonatomic, strong) NSData* photoCover;

//- (BOOL)validatePhotoCover:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* remoteURLString;

//- (BOOL)validateRemoteURLString:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) FJCBook *book;

//- (BOOL)validateBook:(id*)value_ error:(NSError**)error_;

@end

@interface _FJCBookCoverPhoto (CoreDataGeneratedPrimitiveAccessors)

- (NSData*)primitivePhotoCover;
- (void)setPrimitivePhotoCover:(NSData*)value;

- (NSString*)primitiveRemoteURLString;
- (void)setPrimitiveRemoteURLString:(NSString*)value;

- (FJCBook*)primitiveBook;
- (void)setPrimitiveBook:(FJCBook*)value;

@end
