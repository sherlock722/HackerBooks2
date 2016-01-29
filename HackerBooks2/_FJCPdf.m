// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCPdf.m instead.

#import "_FJCPdf.h"

const struct FJCPdfAttributes FJCPdfAttributes = {
	.pdfData = @"pdfData",
	.urlString = @"urlString",
};

const struct FJCPdfRelationships FJCPdfRelationships = {
	.book = @"book",
};

@implementation FJCPdfID
@end

@implementation _FJCPdf

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Pdf" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Pdf";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Pdf" inManagedObjectContext:moc_];
}

- (FJCPdfID*)objectID {
	return (FJCPdfID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic pdfData;

@dynamic urlString;

@dynamic book;

@end

