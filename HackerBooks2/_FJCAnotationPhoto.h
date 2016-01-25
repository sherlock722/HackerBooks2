// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCAnotationPhoto.h instead.

@import CoreData;

extern const struct FJCAnotationPhotoAttributes {
	__unsafe_unretained NSString *photoData;
	__unsafe_unretained NSString *text;
} FJCAnotationPhotoAttributes;

extern const struct FJCAnotationPhotoRelationships {
	__unsafe_unretained NSString *book;
} FJCAnotationPhotoRelationships;

@class FJCBook;

@interface FJCAnotationPhotoID : NSManagedObjectID {}
@end

@interface _FJCAnotationPhoto : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) FJCAnotationPhotoID* objectID;

@property (nonatomic, strong) NSData* photoData;

//- (BOOL)validatePhotoData:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* text;

//- (BOOL)validateText:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) FJCBook *book;

//- (BOOL)validateBook:(id*)value_ error:(NSError**)error_;

@end

@interface _FJCAnotationPhoto (CoreDataGeneratedPrimitiveAccessors)

- (NSData*)primitivePhotoData;
- (void)setPrimitivePhotoData:(NSData*)value;

- (NSString*)primitiveText;
- (void)setPrimitiveText:(NSString*)value;

- (FJCBook*)primitiveBook;
- (void)setPrimitiveBook:(FJCBook*)value;

@end
