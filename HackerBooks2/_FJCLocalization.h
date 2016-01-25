// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCLocalization.h instead.

@import CoreData;

extern const struct FJCLocalizationAttributes {
	__unsafe_unretained NSString *latitude;
	__unsafe_unretained NSString *longitude;
} FJCLocalizationAttributes;

extern const struct FJCLocalizationRelationships {
	__unsafe_unretained NSString *book;
} FJCLocalizationRelationships;

@class FJCBook;

@interface FJCLocalizationID : NSManagedObjectID {}
@end

@interface _FJCLocalization : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) FJCLocalizationID* objectID;

@property (nonatomic, strong) NSNumber* latitude;

@property (atomic) float latitudeValue;
- (float)latitudeValue;
- (void)setLatitudeValue:(float)value_;

//- (BOOL)validateLatitude:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* longitude;

@property (atomic) float longitudeValue;
- (float)longitudeValue;
- (void)setLongitudeValue:(float)value_;

//- (BOOL)validateLongitude:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) FJCBook *book;

//- (BOOL)validateBook:(id*)value_ error:(NSError**)error_;

@end

@interface _FJCLocalization (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveLatitude;
- (void)setPrimitiveLatitude:(NSNumber*)value;

- (float)primitiveLatitudeValue;
- (void)setPrimitiveLatitudeValue:(float)value_;

- (NSNumber*)primitiveLongitude;
- (void)setPrimitiveLongitude:(NSNumber*)value;

- (float)primitiveLongitudeValue;
- (void)setPrimitiveLongitudeValue:(float)value_;

- (FJCBook*)primitiveBook;
- (void)setPrimitiveBook:(FJCBook*)value;

@end
