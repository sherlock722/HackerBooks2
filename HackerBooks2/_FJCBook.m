// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCBook.m instead.

#import "_FJCBook.h"

const struct FJCBookAttributes FJCBookAttributes = {
	.creationBook = @"creationBook",
	.modificationBook = @"modificationBook",
	.title = @"title",
};

const struct FJCBookRelationships FJCBookRelationships = {
	.anotationPhoto = @"anotationPhoto",
	.authors = @"authors",
	.localization = @"localization",
	.pdf = @"pdf",
	.tags = @"tags",
};

@implementation FJCBookID
@end

@implementation _FJCBook

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Book" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Book";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Book" inManagedObjectContext:moc_];
}

- (FJCBookID*)objectID {
	return (FJCBookID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic creationBook;

@dynamic modificationBook;

@dynamic title;

@dynamic anotationPhoto;

@dynamic authors;

- (NSMutableSet*)authorsSet {
	[self willAccessValueForKey:@"authors"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"authors"];

	[self didAccessValueForKey:@"authors"];
	return result;
}

@dynamic localization;

@dynamic pdf;

@dynamic tags;

- (NSMutableSet*)tagsSet {
	[self willAccessValueForKey:@"tags"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"tags"];

	[self didAccessValueForKey:@"tags"];
	return result;
}

@end

