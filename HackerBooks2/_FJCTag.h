// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCTag.h instead.

@import CoreData;

extern const struct FJCTagAttributes {
	__unsafe_unretained NSString *proxyForSorting;
	__unsafe_unretained NSString *tagName;
} FJCTagAttributes;

extern const struct FJCTagRelationships {
	__unsafe_unretained NSString *bookTags;
} FJCTagRelationships;

@class FJCBookTag;

@interface FJCTagID : NSManagedObjectID {}
@end

@interface _FJCTag : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) FJCTagID* objectID;

@property (nonatomic, strong) NSString* proxyForSorting;

//- (BOOL)validateProxyForSorting:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* tagName;

//- (BOOL)validateTagName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *bookTags;

- (NSMutableSet*)bookTagsSet;

@end

@interface _FJCTag (BookTagsCoreDataGeneratedAccessors)
- (void)addBookTags:(NSSet*)value_;
- (void)removeBookTags:(NSSet*)value_;
- (void)addBookTagsObject:(FJCBookTag*)value_;
- (void)removeBookTagsObject:(FJCBookTag*)value_;

@end

@interface _FJCTag (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveProxyForSorting;
- (void)setPrimitiveProxyForSorting:(NSString*)value;

- (NSString*)primitiveTagName;
- (void)setPrimitiveTagName:(NSString*)value;

- (NSMutableSet*)primitiveBookTags;
- (void)setPrimitiveBookTags:(NSMutableSet*)value;

@end
