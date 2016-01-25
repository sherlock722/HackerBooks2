// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCAuthor.m instead.

#import "_FJCAuthor.h"

const struct FJCAuthorAttributes FJCAuthorAttributes = {
	.author = @"author",
};

const struct FJCAuthorRelationships FJCAuthorRelationships = {
	.books = @"books",
};

@implementation FJCAuthorID
@end

@implementation _FJCAuthor

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Author" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Author";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Author" inManagedObjectContext:moc_];
}

- (FJCAuthorID*)objectID {
	return (FJCAuthorID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic author;

@dynamic books;

- (NSMutableSet*)booksSet {
	[self willAccessValueForKey:@"books"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"books"];

	[self didAccessValueForKey:@"books"];
	return result;
}

@end

