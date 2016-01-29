// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCBook.m instead.

#import "_FJCBook.h"

const struct FJCBookAttributes FJCBookAttributes = {
	.lastRead = @"lastRead",
	.title = @"title",
};

const struct FJCBookRelationships FJCBookRelationships = {
	.anotations = @"anotations",
	.authors = @"authors",
	.bookCoverPhoto = @"bookCoverPhoto",
	.bookTags = @"bookTags",
	.pdf = @"pdf",
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

@dynamic lastRead;

@dynamic title;

@dynamic anotations;

- (NSMutableSet*)anotationsSet {
	[self willAccessValueForKey:@"anotations"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"anotations"];

	[self didAccessValueForKey:@"anotations"];
	return result;
}

@dynamic authors;

- (NSMutableSet*)authorsSet {
	[self willAccessValueForKey:@"authors"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"authors"];

	[self didAccessValueForKey:@"authors"];
	return result;
}

@dynamic bookCoverPhoto;

@dynamic bookTags;

- (NSMutableSet*)bookTagsSet {
	[self willAccessValueForKey:@"bookTags"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"bookTags"];

	[self didAccessValueForKey:@"bookTags"];
	return result;
}

@dynamic pdf;

@end

