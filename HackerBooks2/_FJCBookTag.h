// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCBookTag.h instead.

@import CoreData;

extern const struct FJCBookTagAttributes {
	__unsafe_unretained NSString *name;
} FJCBookTagAttributes;

extern const struct FJCBookTagRelationships {
	__unsafe_unretained NSString *book;
	__unsafe_unretained NSString *tag;
} FJCBookTagRelationships;

@class FJCBook;
@class FJCTag;

@interface FJCBookTagID : NSManagedObjectID {}
@end

@interface _FJCBookTag : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) FJCBookTagID* objectID;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) FJCBook *book;

//- (BOOL)validateBook:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) FJCTag *tag;

//- (BOOL)validateTag:(id*)value_ error:(NSError**)error_;

@end

@interface _FJCBookTag (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (FJCBook*)primitiveBook;
- (void)setPrimitiveBook:(FJCBook*)value;

- (FJCTag*)primitiveTag;
- (void)setPrimitiveTag:(FJCTag*)value;

@end
