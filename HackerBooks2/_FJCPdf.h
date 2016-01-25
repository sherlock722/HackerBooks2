// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCPdf.h instead.

@import CoreData;

extern const struct FJCPdfAttributes {
	__unsafe_unretained NSString *pdfData;
} FJCPdfAttributes;

extern const struct FJCPdfRelationships {
	__unsafe_unretained NSString *book;
} FJCPdfRelationships;

@class FJCBook;

@interface FJCPdfID : NSManagedObjectID {}
@end

@interface _FJCPdf : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) FJCPdfID* objectID;

@property (nonatomic, strong) NSData* pdfData;

//- (BOOL)validatePdfData:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) FJCBook *book;

//- (BOOL)validateBook:(id*)value_ error:(NSError**)error_;

@end

@interface _FJCPdf (CoreDataGeneratedPrimitiveAccessors)

- (NSData*)primitivePdfData;
- (void)setPrimitivePdfData:(NSData*)value;

- (FJCBook*)primitiveBook;
- (void)setPrimitiveBook:(FJCBook*)value;

@end
