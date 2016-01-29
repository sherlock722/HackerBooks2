// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCAnotationPhoto.h instead.

@import CoreData;

extern const struct FJCAnotationPhotoAttributes {
	__unsafe_unretained NSString *photoData;
} FJCAnotationPhotoAttributes;

extern const struct FJCAnotationPhotoRelationships {
	__unsafe_unretained NSString *anotations;
} FJCAnotationPhotoRelationships;

@class FJCAnotation;

@interface FJCAnotationPhotoID : NSManagedObjectID {}
@end

@interface _FJCAnotationPhoto : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) FJCAnotationPhotoID* objectID;

@property (nonatomic, strong) NSData* photoData;

//- (BOOL)validatePhotoData:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *anotations;

- (NSMutableSet*)anotationsSet;

@end

@interface _FJCAnotationPhoto (AnotationsCoreDataGeneratedAccessors)
- (void)addAnotations:(NSSet*)value_;
- (void)removeAnotations:(NSSet*)value_;
- (void)addAnotationsObject:(FJCAnotation*)value_;
- (void)removeAnotationsObject:(FJCAnotation*)value_;

@end

@interface _FJCAnotationPhoto (CoreDataGeneratedPrimitiveAccessors)

- (NSData*)primitivePhotoData;
- (void)setPrimitivePhotoData:(NSData*)value;

- (NSMutableSet*)primitiveAnotations;
- (void)setPrimitiveAnotations:(NSMutableSet*)value;

@end
